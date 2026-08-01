	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[28:31], s[0:1], 0x74
	s_load_b64 s[24:25], s[0:1], 0x58
	s_load_b256 s[8:15], s[0:1], 0x38
	s_load_b256 s[16:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_and_b32_e32 v58, 32, v0
	v_and_b32_e32 v57, 15, v0
	v_lshrrev_b32_e32 v8, 1, v0
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_lshlrev_b32 v59, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshrrev_b32_e32 v1, 1, v58
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s5, s2, 5
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s6, s3, 11
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s5, v8
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s26, s5, s6
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v157, v1, v57
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v1, 16, v59
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v5, s26, v8
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v2
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v6, s5, v157
	.loc	1 139 44 is_stmt 1              ; attention_backward.py:139:44
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s29, v1
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[1:2], null, s29, v5, v[1:2]
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v2, s26, v157
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v63, 7, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v5, s30, v3
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s5, v3
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v6
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s37, s17, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s36, s16
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e32 v6, 0x80000000, v2, vcc_lo
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v158, 3, v63
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, 0x800, v4
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[1:4], v1, s[36:39], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s37, s23, 0xffff
	s_mov_b32 s36, s22
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s7, s30, s26
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v72, v6, s[36:39], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[6:7], null, s30, 24, v[5:6]
	v_add_nc_u32_e32 v137, v5, v158
	v_add_nc_u32_e32 v7, s7, v158
	v_lshl_add_u32 v10, s30, 4, v5
	v_lshl_add_u32 v9, s30, 3, v5
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s2, s30, v158
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v11, s7, v137
	v_or_b32_e32 v12, 4, v7
	v_add_nc_u32_e32 v14, v7, v10
	v_add_nc_u32_e32 v13, v7, v9
	v_add_nc_u32_e32 v7, v7, v6
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v15, 1, v11
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v11, 2, v11
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v17, 1, v14
	v_lshlrev_b32_e32 v16, 1, v13
	v_lshlrev_b32_e32 v18, 1, v7
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s4, s2
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_lshl_u32 v5, v12, v5, 2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v15, 0x80000000, v15, s4
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x3
	buffer_load_b128 v[53:56], v15, s[36:39], 0 offen
	buffer_load_b128 v[49:52], v16, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v17, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v18, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s37, s11, 0xffff
	v_lshlrev_b32_e32 v13, 2, v13
	s_mov_b32 s36, s10
	v_add_lshl_u32 v9, v12, v9, 2
	s_clause 0x1
	buffer_load_b128 v[37:40], v11, s[36:39], 0 offen
	buffer_load_b128 v[29:32], v5, s[36:39], 0 offen
	v_lshlrev_b32_e32 v11, 2, v14
	v_add_lshl_u32 v10, v12, v10, 2
	v_lshlrev_b32_e32 v7, 2, v7
	v_cndmask_b32_e64 v5, 0x80000000, v13, s4
	v_add_lshl_u32 v6, v12, v6, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	s_clause 0x5
	buffer_load_b128 v[33:36], v5, s[36:39], 0 offen
	buffer_load_b128 v[25:28], v9, s[36:39], 0 offen
	buffer_load_b128 v[21:24], v11, s[36:39], 0 offen
	buffer_load_b128 v[17:20], v10, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v7, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v6, s[36:39], 0 offen
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v163, v0, 4, 1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v6, 1, v0
	v_lshlrev_b32_e32 v61, 3, v0
	v_lshlrev_b32_e32 v62, 5, v57
	v_and_b32_e32 v8, 24, v8
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s7, s3, 31
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v67, v6, 30, v163
	s_load_b128 s[40:43], s[0:1], 0x20
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s0, s7, 28
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v5, 2, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s0, s3, s0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v71, 2, v67
	v_and_or_b32 v67, v6, 24, v62
	v_xor_b32_e32 v6, v61, v8
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s0, s0, 4
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v8, 4, v71
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s1, s3, s1
	v_add_nc_u32_e32 v68, 0, v6
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s3, s1, 0x10007
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v7, 16, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s1, s1, s3
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v60, 3, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_i32 s1, s1, 0x80000
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v166, 2, v163
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i16 s1, s1
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v165, 4, v163
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_ashr_i32 s1, s1, 1
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v164, 6, v163
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_lshl3_add_u32 s7, s0, s1
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v162, 8, v163
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s11, s7, 11
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v161, 10, v163
	v_or_b32_e32 v160, 12, v163
	v_or_b32_e32 v159, 14, v163
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_lshlrev_b32_e32 v138, 3, v60
	v_xor_b32_e32 v69, 8, v67
	v_xor_b32_e32 v70, 16, v67
	v_xor_b32_e32 v73, 24, v67
	v_or_b32_e32 v168, s11, v5
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s3, 0, v7
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_mul_f32 s1, s31, 0x3fb8aa3b
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v64, 56, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v167, 4, v0
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s0, s29, v138
	v_add_nc_u32_e32 v69, 0, v69
	v_add_nc_u32_e32 v70, 0, v70
	v_or_b32_e32 v169, s11, v163
	v_or_b32_e32 v170, s11, v166
	v_or_b32_e32 v171, s11, v165
	v_or_b32_e32 v172, s11, v164
	v_or_b32_e32 v173, s11, v162
	v_or_b32_e32 v174, s11, v161
	v_or_b32_e32 v175, s11, v160
	v_or_b32_e32 v176, s11, v159
	s_mov_b32 s4, 0
	s_mov_b32 s10, 0x76543210
	s_mov_b64 s[8:9], s[14:15]
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[44:45], s[42:43]
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_and_b32 s37, s19, 0xffff
	s_mov_b32 s36, s18
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(13)
	ds_bpermute_b32 v6, v71, v1
	ds_bpermute_b32 v1, v8, v1
	ds_bpermute_b32 v74, v71, v2
	ds_bpermute_b32 v2, v8, v2
	ds_bpermute_b32 v75, v71, v3
	ds_bpermute_b32 v3, v8, v3
	ds_bpermute_b32 v76, v71, v4
	ds_bpermute_b32 v4, v8, v4
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v5, 16, v72
	v_add_nc_u32_e32 v71, 0, v73
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v177, s1, v5
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v139, v1, v6, s3
	v_cndmask_b32_e64 v141, v6, v1, s3
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v140, v2, v74, s3
	v_cndmask_b32_e64 v142, v74, v2, s3
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v143, v3, v75, s3
	v_cndmask_b32_e64 v145, v75, v3, s3
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v144, v4, v76, s3
	v_cndmask_b32_e64 v146, v76, v4, s3
	v_mov_b32_e32 v1, 0
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v2, s4, v168
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v4, s4, v169, 1
	v_add_lshl_u32 v5, s4, v170, 1
	v_add_lshl_u32 v6, s4, v171, 1
	v_add_lshl_u32 v7, s4, v172, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[2:3], null, v2, s29, v[138:139]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v8, s4, v173, 1
	v_add_lshl_u32 v72, s4, v174, 1
	v_add_lshl_u32 v73, s4, v175, 1
	v_add_lshl_u32 v74, s4, v176, 1
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v80, 0, v67
	v_mov_b32_e32 v90, v66
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s1, 0xff800000, v90
	.loc	1 198 28                        ; attention_backward.py:198:28
	buffer_load_b64 v[2:3], v2, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v68, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v82, v4, s[40:43], 0 offen
	buffer_load_u16 v83, v5, s[40:43], 0 offen
	buffer_load_u16 v84, v6, s[40:43], 0 offen
	buffer_load_u16 v85, v7, s[40:43], 0 offen
	buffer_load_u16 v86, v8, s[40:43], 0 offen
	buffer_load_u16 v87, v72, s[40:43], 0 offen
	buffer_load_u16 v88, v73, s[40:43], 0 offen
	buffer_load_u16 v89, v74, s[40:43], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v79, v8
	v_dual_mov_b32 v75, v4 :: v_dual_mov_b32 v74, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v77, v6 :: v_dual_mov_b32 v76, v5
	v_dual_mov_b32 v78, v7 :: v_dual_mov_b32 v73, v2
	v_mov_b32_e32 v72, v1
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[2:3], v80
	ds_load_b64 v[4:5], v69
	ds_load_b64 v[6:7], v70
	ds_load_b64 v[80:81], v71
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[2:3], v[139:140], v[72:79] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[4:5], v[143:144], v[72:79] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[6:7], v[141:142], v[72:79] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[80:81], v[145:146], v[72:79] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v3, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v5, v75
	v_cvt_f32_i32_e32 v7, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v72
	v_cvt_f32_i32_e32 v4, v74
	v_cvt_f32_i32_e32 v6, v76
	v_cvt_f32_i32_e32 v8, v78
	v_cvt_f32_i32_e32 v66, v79
	v_mul_f32_e32 v3, v177, v3
	v_mul_f32_e32 v5, v177, v5
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v7, v177, v7 :: v_dual_lshlrev_b32 v72, 16, v82
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v2, v177, v2 :: v_dual_lshlrev_b32 v73, 16, v83
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v75, 16, v85
	v_lshlrev_b32_e32 v74, 16, v84
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v77, 16, v87
	v_lshlrev_b32_e32 v76, 16, v86
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v4, v177, v4
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v5, v5, v75 :: v_dual_lshlrev_b32 v78, 16, v88
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v8, v177, v8 :: v_dual_lshlrev_b32 v79, 16, v89
	v_dual_mul_f32 v3, v3, v73 :: v_dual_mul_f32 v6, v177, v6
	v_dual_mul_f32 v7, v7, v77 :: v_dual_mul_f32 v66, v177, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v4, v4, v74 :: v_dual_cndmask_b32 v3, 0xff800000, v3
	v_dual_mul_f32 v2, v2, v72 :: v_dual_cndmask_b32 v5, 0xff800000, v5
	v_mul_f32_e32 v6, v6, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v8, v8, v78 :: v_dual_cndmask_b32 v7, 0xff800000, v7
	v_mul_f32_e32 v66, v66, v79
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e32 v2, 0xff800000, v2, vcc_lo
	v_cndmask_b32_e32 v4, 0xff800000, v4, vcc_lo
	v_cndmask_b32_e32 v6, 0xff800000, v6, vcc_lo
	v_cndmask_b32_e32 v8, 0xff800000, v8, vcc_lo
	v_cndmask_b32_e32 v72, 0xff800000, v66, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v66, v2, v3, v4
	v_max3_f32 v73, v5, v6, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, v8, v72
	v_max3_f32 v66, v66, v73, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v73, v66, s10, 0xfedcba98 op_sel:[1,0]
.Ltmp3:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v66, v90, v66, v73
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v2, v66
	v_sub_f32_e32 v3, v3, v66
	v_sub_f32_e32 v5, v5, v66
	v_sub_f32_e32 v6, v6, v66
	v_sub_f32_e32 v7, v7, v66
	v_sub_f32_e32 v4, v4, v66
	v_sub_f32_e32 v8, v8, v66
	v_sub_f32_e32 v72, v72, v66
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	v_exp_f32_e32 v3, v3
	v_exp_f32_e32 v4, v4
	v_exp_f32_e32 v5, v5
	v_exp_f32_e32 v6, v6
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v8, v8
	v_exp_f32_e32 v72, v72
.Ltmp4:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v2, v2, v3 :: v_dual_add_f32 v3, v4, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v4, v6, v7 :: v_dual_add_f32 v5, v8, v72
	v_dual_add_f32 v2, v2, v3 :: v_dual_add_f32 v3, v4, v5
.Ltmp5:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_dual_sub_f32 v4, v90, v66 :: v_dual_mov_b32 v5, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp7:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v4, v2, s10, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s1, s4, 16
	s_cmpk_lt_u32 s4, 0x7f0
	s_mov_b32 s4, s1
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v65, v2, v4
.Ltmp12:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v65, v5, v3
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e64 v178.h, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v4.h, v54.l
	v_and_b32_e32 v8, 0xffff0000, v54
	v_and_b32_e32 v54, 0xffff0000, v53
	v_mov_b16_e32 v5.h, v53.l
	v_mov_b16_e64 v5.l, v178.h
	v_mov_b16_e32 v70.h, v46.l
	v_mov_b16_e32 v69.h, v47.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v53, v38, v54
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v54.h, v52.l
	v_and_b32_e32 v52, 0xffff0000, v52
	v_and_b32_e32 v46, 0xffff0000, v46
	v_mov_b16_e32 v67.h, v49.l
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v53, v37, v5
.Ltmp14:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v47, 0xffff0000, v47
	v_mov_b16_e32 v73.h, v43.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v46, v24, v46
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v68, 0xffff0000, v49
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v49, v28, v52
	v_mul_f32_e32 v47, v18, v47
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v43, 0xffff0000, v43
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v8, v40, v8 :: v_dual_and_b32 v7, 0xffff0000, v55
	v_mul_f32_e32 v52, v34, v68
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v6, 0xffff0000, v56
	v_mov_b16_e32 v56.h, v50.l
	v_mov_b16_e32 v68.h, v48.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v43, v10, v43 :: v_dual_and_b32 v48, 0xffff0000, v48
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v50, 0xffff0000, v50
	v_mov_b16_e32 v2.h, v56.l
	v_mov_b16_e32 v3.h, v55.l
	v_mov_b16_e64 v3.l, v178.h
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v7, v30, v7
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v55.h, v51.l
	v_mov_b16_e64 v56.l, v178.h
	v_mov_b16_e64 v67.l, v178.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v7, v29, v3 :: v_dual_and_b32 v72, 0xffff0000, v45
.Ltmp16:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v71.h, v45.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v45, v20, v48
	v_dual_mul_f32 v50, v36, v50 :: v_dual_and_b32 v51, 0xffff0000, v51
	v_dual_mul_f32 v6, v32, v6 :: v_dual_and_b32 v1, 31, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v2.l, v178.h
	v_mov_b16_e64 v4.l, v178.h
	v_mov_b16_e64 v69.l, v178.h
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v52, v33, v67
	v_fmac_f32_e32 v50, v35, v56
.Ltmp18:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v54.l, v178.h
	v_mov_b16_e64 v55.l, v178.h
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v51, v26, v51
	v_mul_f32_e32 v48, v22, v72
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v72.h, v44.l
	v_mov_b16_e32 v74.h, v42.l
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v51, v25, v55 :: v_dual_and_b32 v44, 0xffff0000, v44
.Ltmp20:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v75.h, v41.l
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v6, v31, v2 :: v_dual_and_b32 v41, 0xffff0000, v41
	v_dual_fmac_f32 v47, v17, v69 :: v_dual_fmac_f32 v8, v39, v4
	v_add_f32_e32 v5, v52, v50
.Ltmp22:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v42, 0xffff0000, v42
	v_mov_b16_e64 v68.l, v178.h
	v_mov_b16_e64 v70.l, v178.h
	v_mov_b16_e64 v71.l, v178.h
	v_mov_b16_e64 v72.l, v178.h
	v_mov_b16_e64 v73.l, v178.h
	v_mov_b16_e64 v74.l, v178.h
	v_mov_b16_e64 v75.l, v178.h
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v44, v12, v44 :: v_dual_fmac_f32 v49, v27, v54
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v53, v8 :: v_dual_mul_f32 v2, v16, v42
	v_fmac_f32_e32 v45, v19, v68
	v_dual_add_f32 v4, v7, v6 :: v_dual_mul_f32 v7, v14, v41
	v_fmac_f32_e32 v48, v21, v71
	v_dual_fmac_f32 v46, v23, v70 :: v_dual_fmac_f32 v43, v9, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_add_f32 v6, v51, v49 :: v_dual_fmac_f32 v7, v13, v75
	v_fmac_f32_e32 v2, v15, v74
	v_fmac_f32_e32 v44, v11, v72
	v_dual_add_f32 v3, v3, v4 :: v_dual_add_f32 v4, v5, v6
.Ltmp24:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s1, 0x800000, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v7, v2
	v_add_f32_e32 v7, v43, v44
.Ltmp26:
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v42, s5, v1
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v41, v4
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v48, v46
.Ltmp29:
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s4, 0, v65
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v2, v7
	v_add_f32_e32 v6, v47, v45
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v7, 0, 0x42000000, s1
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v43, v2
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp35:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_barrier
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v6, v5 :: v_dual_lshlrev_b32 v63, 4, v63
	s_mov_b32 s14, 0x7ffffffe
.Ltmp37:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s14
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v8, v3
.Ltmp39:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_mov_b32 s11, s15
	s_mov_b32 s33, 0
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_lshl_b32 s19, s7, 10
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_lshl_b32 s27, s7, 7
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s42, s38
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v3, v8 :: v_dual_add_f32 v4, v4, v41
.Ltmp44:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v8, 0, 32, s1
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v2, v43
.Ltmp46:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s1, 0x800, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v41, v3
	s_mov_b32 s43, s39
.Ltmp48:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v8, v65, v8
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v42, v2 :: v_dual_and_b32 v65, 24, v0
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_mov_b32 s22, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v6, v8
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v42, v42 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_mov_b32 s23, s15
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v3, v3, v41 :: v_dual_mov_b32 v44, v4
	s_mov_b32 s46, s14
	s_mov_b32 s47, s15
	s_mov_b32 s34, 0x76543210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v41, v3
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v6, v6, v7
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v7, v57, 2, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v4, v4, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v6, v66, v6 :: v_dual_mov_b32 v43, v4
	.loc	1 264 17 is_stmt 0              ; attention_backward.py:264:17
	v_cndmask_b32_e64 v179, 0, v6, s4
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_cmp_eq_u32_e64 s4, 0, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v8, v5
.Ltmp59:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s1, s4, s1
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s4, v37, v37
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v5, v5, v8 :: v_dual_add_f32 v8, v2, v42
.Ltmp62:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v2, v58, 1, v7
	v_lshl_add_u32 v7, v1, 2, 0
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v1, s6, v1
.Ltmp63:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v42, v5
	v_mov_b32_e32 v6, v8
.Ltmp64:
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v2, v179
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v7, v7
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v1, v1, s5, 2
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v2, v3, v41 :: v_dual_add_f32 v3, v4, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v4, v5, v42
	v_add_f32_e32 v5, v8, v6
.Ltmp68:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshlrev_b32_e32 v41, 1, v64
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e64 v6, 0x80000000, v1, s1
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v1, 1, v65
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_bfe_u32 v8, v37, 16, 1
	v_cmp_o_f32_e64 s5, v39, v39
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add_nc_u32_e32 v64, 0, v41
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s6, v40, v40
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v1, 0, v63, v1
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v7, v6, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v7, v1
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v66, 4, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v67, v1
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s28, v66
	v_mov_b32_e32 v69, v1
	v_mov_b32_e32 v71, v1
	v_mov_b32_e32 v68, v1
	v_mov_b32_e32 v72, v1
	v_mov_b32_e32 v70, v1
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v7, v6, s[8:11], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_add3_u32 v6, v37, v8, 0x7fff
	v_bfe_u32 v7, v38, 16, 1
	v_bfe_u32 v8, v39, 16, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b16 v37.l, 0x7fff, v6.h, s4
	v_bfe_u32 v6, v40, 16, 1
	v_add3_u32 v7, v38, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v38, v38
	v_add3_u32 v8, v39, v8, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v6, v40, v6, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v7.h, s4
	v_bfe_u32 v7, v29, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v38.l, 0x7fff, v8.h, s5
	v_bfe_u32 v8, v30, 16, 1
	v_cndmask_b16 v38.h, 0x7fff, v6.h, s6
	v_bfe_u32 v6, v31, 16, 1
	v_add3_u32 v7, v29, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v29, v29
	v_add3_u32 v8, v30, v8, 0x7fff
	v_cmp_o_f32_e64 s5, v30, v30
	v_add3_u32 v6, v31, v6, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_cndmask_b16 v39.l, 0x7fff, v7.h, s4
	v_bfe_u32 v7, v32, 16, 1
	v_cndmask_b16 v39.h, 0x7fff, v8.h, s5
	v_bfe_u32 v8, v33, 16, 1
	v_cndmask_b16 v40.l, 0x7fff, v6.h, s6
	v_bfe_u32 v6, v34, 16, 1
	v_add3_u32 v7, v32, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v32, v32
	v_add3_u32 v8, v33, v8, 0x7fff
	v_cmp_o_f32_e64 s5, v33, v33
	v_add3_u32 v6, v34, v6, 0x7fff
	v_cmp_o_f32_e64 s6, v34, v34
	v_cndmask_b16 v40.h, 0x7fff, v7.h, s4
	v_bfe_u32 v7, v35, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v8.h, s5
	v_bfe_u32 v8, v36, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v6.h, s6
	v_bfe_u32 v6, v25, 16, 1
	v_add3_u32 v7, v35, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v35, v35
	v_add3_u32 v8, v36, v8, 0x7fff
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v6, v25, v6, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_cndmask_b16 v30.l, 0x7fff, v7.h, s4
	v_bfe_u32 v7, v26, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v8.h, s5
	v_bfe_u32 v8, v27, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v6.h, s6
	v_bfe_u32 v6, v28, 16, 1
	v_add3_u32 v7, v26, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v26, v26
	v_add3_u32 v8, v27, v8, 0x7fff
	v_cmp_o_f32_e64 s5, v27, v27
	v_add3_u32 v6, v28, v6, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_cndmask_b16 v31.h, 0x7fff, v7.h, s4
	v_bfe_u32 v7, v21, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v8.h, s5
	v_bfe_u32 v8, v22, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v6.h, s6
	v_bfe_u32 v6, v23, 16, 1
	v_add3_u32 v7, v21, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v21, v21
	v_add3_u32 v8, v22, v8, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v6, v23, v6, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_cndmask_b16 v21.l, 0x7fff, v7.h, s4
	v_bfe_u32 v7, v24, 16, 1
	v_cndmask_b16 v21.h, 0x7fff, v8.h, s5
	v_bfe_u32 v8, v17, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v6.h, s6
	v_bfe_u32 v6, v18, 16, 1
	v_add3_u32 v7, v24, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v24, v24
	v_add3_u32 v8, v17, v8, 0x7fff
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v6, v18, v6, 0x7fff
	v_cmp_o_f32_e64 s6, v18, v18
	v_cndmask_b16 v22.h, 0x7fff, v7.h, s4
	v_bfe_u32 v7, v19, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v8.h, s5
	v_bfe_u32 v8, v20, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v6.h, s6
	v_bfe_u32 v6, v13, 16, 1
	v_add3_u32 v7, v19, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v19, v19
	v_add3_u32 v8, v20, v8, 0x7fff
	v_cmp_o_f32_e64 s5, v20, v20
	v_add3_u32 v6, v13, v6, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_cndmask_b16 v24.l, 0x7fff, v7.h, s4
	v_bfe_u32 v7, v14, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v8.h, s5
	v_bfe_u32 v8, v15, 16, 1
	v_bfe_u32 v13, v16, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s6
	v_add3_u32 v7, v14, v7, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	v_add3_u32 v8, v15, v8, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_bfe_u32 v14, v9, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s4
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s5
	v_bfe_u32 v8, v10, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v13.h, s6
	v_add3_u32 v13, v9, v14, 0x7fff
	v_bfe_u32 v14, v11, 16, 1
	v_cmp_o_f32_e64 s4, v9, v9
	v_bfe_u32 v9, v12, 16, 1
	v_add3_u32 v8, v10, v8, 0x7fff
	v_cmp_o_f32_e64 s5, v10, v10
	v_add3_u32 v10, v11, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v11, v11
	v_add3_u32 v9, v12, v9, 0x7fff
	v_lshlrev_b32_e32 v11, 6, v58
	v_cndmask_b16 v8.l, 0x7fff, v13.h, s4
	v_cmp_o_f32_e64 s4, v12, v12
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s6
	v_lshlrev_b32_e32 v10, 7, v57
	v_xad_u32 v12, v59, v41, 0
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s5
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s4
	ds_store_b128 v12, v[37:40]
	ds_store_b128 v12, v[29:32] offset:1024
	ds_store_b128 v12, v[21:24] offset:2048
	ds_store_b128 v12, v[6:9] offset:3072
	v_or3_b32 v10, v10, v11, v63
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v11, 1, v65
	v_lshl_or_b32 v12, v65, 6, v63
	v_add_nc_u32_e32 v6, 0, v10
	v_xad_u32 v7, v10, 16, 0
	v_xad_u32 v8, v10, 32, 0
	v_xad_u32 v9, v10, 48, 0
	ds_load_b128 v[17:20], v6
	ds_load_b128 v[21:24], v7
	ds_load_b128 v[25:28], v8
	ds_load_b128 v[29:32], v9
	v_xad_u32 v6, v10, 64, 0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_and_b32_e32 v8, 8, v0
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_xad_u32 v7, 0x50, v10, 0
	ds_load_b128 v[41:44], v6
	ds_load_b128 v[45:48], v7
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v6, 1, v8
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_xad_u32 v9, 0x60, v10, 0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v7, 2, v58
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_xad_u32 v10, 0x70, v10, 0
	ds_load_b128 v[49:52], v9
	ds_load_b128 v[53:56], v10
	v_dual_mov_b32 v59, v1 :: v_dual_add_nc_u32 v6, 0, v6
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v13, 9, v60
	v_mov_b32_e32 v65, 0
	ds_store_b128 v64, v[2:5]
	v_add3_u32 v2, v6, v7, v63
	v_dual_mov_b32 v7, 0x5410 :: v_dual_and_b32 v8, 48, v0
	v_dual_mov_b32 v10, 0x7632 :: v_dual_and_b32 v9, 12, v0
	v_bfe_i32 v4, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v7, 0x1054, v7, s3
	v_lshrrev_b32_e32 v3, 1, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v180, v9, 1, v62
	v_lshlrev_b32_e32 v9, 5, v9
	v_cndmask_b32_e64 v10, 0x3276, v10, s3
	v_lshl_or_b32 v7, v7, 8, v7
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v181, v2
	v_xor_b32_e32 v2, v61, v3
	v_lshl_or_b32 v10, v10, 8, v10
	v_and_b32_e32 v4, 0x420, v4
	v_and_b32_e32 v7, 0x540054, v7
	v_mov_b32_e32 v61, v1
	v_lshl_or_b32 v8, v8, 3, v63
	v_or3_b32 v182, v9, v13, v66
	v_dual_mov_b32 v66, v1 :: v_dual_and_b32 v9, 0x760076, v10
	v_mov_b32_e32 v63, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v183, v8, v4
	v_lshl_or_b32 v4, v7, 4, v7
	v_xor_b32_e32 v3, 8, v180
	v_xor_b32_e32 v5, 16, v180
	v_xor_b32_e32 v6, 24, v180
	v_xor_b32_e32 v11, v12, v11
	v_lshl_add_u32 v10, v58, 2, 0
	v_xor_b32_e32 v12, 16, v182
	v_lshl_or_b32 v7, v9, 4, v9
	v_xor_b32_e32 v8, 32, v182
	v_xor_b32_e32 v9, 48, v182
	v_xor_b32_e32 v13, 0x210, v183
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v184, 0x5040504, v4
	v_dual_mov_b32 v35, v1 :: v_dual_lshlrev_b32 v4, 5, v0
	v_and_b32_e32 v185, 0x7060706, v7
	v_lshl_add_u32 v0, v57, 1, 0
	v_dual_mov_b32 v37, v1 :: v_dual_add_nc_u32 v186, 0, v2
	v_add_nc_u32_e32 v187, 0, v3
	v_dual_mov_b32 v39, v1 :: v_dual_add_nc_u32 v188, 0, v5
	v_dual_mov_b32 v58, v1 :: v_dual_add_nc_u32 v189, 0, v6
	v_add_nc_u32_e32 v190, v10, v11
	v_dual_mov_b32 v60, v1 :: v_dual_add_nc_u32 v191, 0, v12
	v_dual_mov_b32 v11, v1 :: v_dual_add_nc_u32 v192, 0, v8
	v_dual_mov_b32 v62, v1 :: v_dual_add_nc_u32 v193, 0, v9
	v_add_nc_u32_e32 v194, 0, v13
	v_mov_b32_e32 v13, v1
	v_dual_mov_b32 v64, v1 :: v_dual_add_nc_u32 v195, 0, v4
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v34, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v38, v1
	v_dual_mov_b32 v40, v1 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s3, s33, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_add_nc_u32_e32 v5, s33, v168
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s3, s3, s19
	.loc	1 307 37                        ; attention_backward.py:307:37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_mad_u64_u32 v[2:3], null, s3, s30, v[137:138]
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s3, s33, 4
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s3, s3, s27
	.loc	1 364 39                        ; attention_backward.py:364:39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s3, s3, s30
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e64 v4, 0x80000000, v2, s2
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[2:3], null, v5, s29, v[138:139]
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v3, 1, v5
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v5, s3, v158, 1
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[147:148], v2, s[36:39], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v2, s33, v169, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v186, v[147:148]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x1
	buffer_load_u16 v77, v3, s[40:43], 0 offen
	buffer_load_u16 v202, v2, s[40:43], 0 offen
	v_add_lshl_u32 v2, s33, v170, 1
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_b64 v[6:7], v4, s[20:23], 0 offen
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v78.l, 4, v147.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v115, 8, v147
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v111, v148, 16, 4
	.loc	1 290 33                        ; attention_backward.py:290:33
	buffer_load_u16 v203, v2, s[40:43], 0 offen
	v_add_lshl_u32 v2, s33, v171, 1
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v178.l, v78.l, 15
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v78.l, v147.h, 15
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v112, -16, v111
	.loc	1 290 33                        ; attention_backward.py:290:33
	buffer_load_u16 v200, v2, s[40:43], 0 offen
	v_add_lshl_u32 v2, s33, v172, 1
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v114, -16, v178
	.loc	1 290 33                        ; attention_backward.py:290:33
	buffer_load_u16 v201, v2, s[40:43], 0 offen
	v_add_lshl_u32 v2, s33, v173, 1
	buffer_load_u16 v199, v2, s[40:43], 0 offen
	v_add_lshl_u32 v2, s33, v174, 1
	buffer_load_u16 v198, v2, s[40:43], 0 offen
	v_add_lshl_u32 v2, s33, v175, 1
	buffer_load_u16 v197, v2, s[40:43], 0 offen
	v_add_lshl_u32 v2, s33, v176, 1
	buffer_load_u16 v196, v2, s[40:43], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_add_nc_u32_e32 v2, 0, v180
	ds_load_b64 v[149:150], v2
	ds_load_b64 v[151:152], v187
	ds_load_b64 v[153:154], v188
	ds_load_b64 v[155:156], v189
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_b128 v[2:5], v5, s[44:47], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v190, v[2:5]
	ds_store_b128 v190, v[2:5] offset:256
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v2.l, v6.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v5, v6, 16, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v109, 8, v6
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v204, 16, v77
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v3, 15, v6
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s3, 7, v2.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v2.l, v6.h, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v8, -16, v5
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b64 v[80:81], 24, v[6:7]
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v4, -16, v3
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_add_nc_u32_e32 v226, 0, v183
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v2.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v2.l, v109.l, 15
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v3, v3, v4, s3
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_barrier
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v5, v5, v8, s4
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v8, v6, 8, 4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v2.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_alignbit_b32 v2, v7, v6, 24
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v105, v3
	v_cvt_f32_i32_e32 v107, v5
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v73, -16, v8
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v120, v6, 20, 4
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v4, 15, v2
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v2.l, v80.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v119, v80, 0, 8
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v8, v8, v73, s4
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v121, -16, v120
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v73, -16, v4
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s3, 7, v2.l
	.loc	1 362 30 is_stmt 1              ; attention_backward.py:362:30
	v_mov_b16_e64 v80.h, v178.h
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v106, v8
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v8, 0, v182
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v227, 24, v7
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v2, v4, v73, s3
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v78.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v78.l, v148.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v228, 8, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v108, v2
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[73:76], v8
	ds_load_b128 v[93:96], v8 offset:64
	ds_load_b128 v[2:5], v191
	ds_load_b128 v[89:92], v191 offset:64
	ds_load_b128 v[101:104], v192
	ds_load_b128 v[85:88], v192 offset:64
	ds_load_b128 v[97:100], v193
	ds_load_b128 v[81:84], v193 offset:64
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s4, 7, v78.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v78.l, v148.h, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v226, v[105:108]
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v106, v147, 16, 4
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v78.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[78:79], 24, v[147:148]
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v108, 15, v148
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v79, v147, 0, 8
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v107, -16, v106
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v111, v111, v112, s5
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v112, 24, v148
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v110, -16, v108
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v113, v78, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s6, 0, v79.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v79, v147, 8, 4
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v78.h, v115.l, 15
	.loc	1 306 27 is_stmt 1              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v106, v106, v107, s3
	v_cndmask_b32_e64 v107, v108, v110, s4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v108, 8, v148
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v116, -16, v79
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s7, 7, v78.h
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v105.l, 4, v78.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v78.l, v78.l, 15
	v_and_b16 v78.h, v108.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v116, v79, v116, s7
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v79, v148, 8, 4
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v229, 16, v5
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v78.h
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v78.h, v112.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v106, v106, v204
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v110, -16, v79
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v230, 0xffff0000, v5
	v_lshlrev_b32_e32 v234, 16, v99
	v_lshlrev_b32_e32 v236, 16, v100
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v220, 0, v106, s1
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v110, v79, v110, s3
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v79, v148, 24, 4
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v78.h
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v78.h, 4, v109.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v106, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v117, -16, v79
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v106, v106, v204
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v117, v79, v117, s3
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_alignbit_b32 v79, v148, v147, 24
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v78.l
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v78.l, 4, v80.l
	v_and_b16 v80.l, v78.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v209, 0, v106, s1
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v79, 15, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v118, -16, v79
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v118, v79, v118, s3
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v79, v109, 0, 8
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v109, -16, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v79.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_mov_b16_e32 v79.l, v6.h
	v_bfe_i32 v79, v79, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s4, 0, v79.l
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v79, v120, v121, s4
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_and_b16 v120.l, v78.l, 15
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e32 v78.l, v119.l
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v120.h, v178.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v79, v79
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s4, 0, v78.l
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v78, v178, v114, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v119, -16, v120
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v78, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v77, v78, v204
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v78, v80, v109, s3
	v_cndmask_b32_e64 v80, v120, v119, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v224, 0, v77, s1
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v77.l, 4, v115.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v78, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v178.l, v224.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v225, 1, v178
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v178.l, v77.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v77, v115, 0, 8
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v109, -16, v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v77.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v116
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v219, v178, v109, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v77, v204
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v221, 0, v77, s1
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v77.l, v113.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v178.l, v221.h
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v77.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v222, 1, v178
	v_mov_b16_e64 v178.l, v220.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v77, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v223, 1, v178
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v178.l, v105.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v215, 0, v77, s1
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v77.l, 4, v148.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v105, -16, v178
	.loc	1 307 28 is_stmt 0              ; attention_backward.py:307:28
	v_cndmask_b32_e64 v213, v178, v105, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v178.l, v215.h
	v_and_b32_e32 v216, 1, v178
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v178.l, v77.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v77, v148, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v105, -16, v178
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v77.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v211, v178, v105, s3
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v77, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v217, 0, v77, s1
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v77.l, 4, v108.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v178.l, v217.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v218, 1, v178
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v178.l, v77.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v77, v108, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v105, -16, v178
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v77.l
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v208, v178, v105, s3
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v77, v77, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v212, 0, v77, s1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v77, v112, 0, 8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v178.l, v212.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v77.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v77, v117
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v214, 1, v178
	v_mov_b16_e64 v178.l, v209.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v77, v77, v204 :: v_dual_and_b32 v210, 1, v178
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v178.l, 4, v112.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v206, 0, v77, s1
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v77.l, 4, v6.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v6, v6, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v105, -16, v178
	.loc	1 307 28 is_stmt 0              ; attention_backward.py:307:28
	v_cndmask_b32_e64 v205, v178, v105, s3
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v178.l, v206.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v6.l
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v105, v7, 24, 4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v207, 1, v178
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v178.l, v77.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v106, -16, v105
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v77, -16, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v6, v178, v77, s3
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v77, v6
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v6.l, v7.h, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v194, v[77:80]
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s3, 7, v6.l
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v79, 15, v7
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v6.l, v7.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v77, v7, 16, 4
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v80, -16, v79
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v6.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v6.l, v227.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v78, -16, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v79, v79, v80, s4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s5, 7, v6.l
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_bfe_u32 v80, v7, 8, 4
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v6.l, v228.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v105, v105, v106, s5
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v106, -16, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v6.l
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v6, v80, v106, s4
	v_cndmask_b32_e64 v106, v77, v78, s3
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v77, v79
	v_cvt_f32_i32_e32 v80, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v78, v6
	v_cvt_f32_i32_e32 v79, v106
	ds_load_b128 v[129:132], v8
	ds_load_b128 v[117:120], v8 offset:64
	ds_load_b128 v[133:136], v191
	ds_load_b128 v[113:116], v191 offset:64
	ds_load_b128 v[125:128], v192
	ds_load_b128 v[109:112], v192 offset:64
	ds_load_b128 v[121:124], v193
	ds_load_b128 v[105:108], v193 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v6.l, 4, v7.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v226, v[77:80]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v77, v7, 0, 8
	v_mov_b16_e32 v78.l, v7.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v79.h, v178.h
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_and_b16 v79.l, v6.l, 15
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v7, v7, 20, 4
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e32 v6.l, v77.l
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v226, 16, v76
	v_and_b32_e32 v235, 0xffff0000, v99
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v77, -16, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v6.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v6, v78, 0, 8
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v78, -16, v7
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v77, v79, v77, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v6.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v6, v227, 0, 8
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v7, v7, v78, s3
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v78.h, v178.h
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_lshrrev_b16 v78.l, 4, v227.l
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v6.l
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v6.l, 4, v228.l
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v227, 0xffff0000, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v79, -16, v78
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v78, v78, v79, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_and_b16 v79.l, v6.l, 15
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v79.h, v178.h
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v6, v228, 0, 8
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v228, 0xffff0000, v4
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v80, -16, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v6.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v6, v79, v80, s3
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v79, v7
	v_cvt_f32_i32_e32 v80, v78
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v7, 0xffff0000, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v78, v6
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v6, 16, v73
	v_lshlrev_b32_e32 v73, 16, v74
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v7, v130, v7
	ds_store_b128 v194, v[77:80]
	v_dual_mul_f32 v6, v129, v6 :: v_dual_mul_f32 v77, v131, v73
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v73, 0xffff0000, v74
	v_lshlrev_b32_e32 v79, 16, v75
	v_and_b32_e32 v80, 0xffff0000, v75
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v78, v132, v73
	ds_load_b128 v[73:76], v8
	ds_load_b128 v[129:132], v8 offset:64
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v6, v6
	v_cmp_o_f32_e64 s4, v7, v7
	v_cmp_o_f32_e64 s5, v77, v77
	v_cmp_o_f32_e64 s6, v78, v78
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v8, v73, v79 :: v_dual_and_b32 v237, 0xffff0000, v100
	v_dual_mul_f32 v73, v74, v80 :: v_dual_mul_f32 v74, v75, v226
	v_dual_mul_f32 v75, v76, v227 :: v_dual_lshlrev_b32 v76, 16, v2
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v2, 0xffff0000, v2
	v_lshlrev_b32_e32 v227, 16, v4
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v8, v8
	v_cmp_o_f32_e64 s8, v73, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v76, v133, v76 :: v_dual_mul_f32 v79, v134, v2
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v2, 16, v3
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v74, v74
	v_cmp_o_f32_e64 s10, v75, v75
	v_cmp_o_f32_e64 s11, v76, v76
	v_cmp_o_f32_e64 s12, v79, v79
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v80, v135, v2
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v2, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v80, v80
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v226, v136, v2
	ds_load_b128 v[2:5], v191
	ds_load_b128 v[133:136], v191 offset:64
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v226, v226
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v2, v2, v227
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v227, v6, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v3, v3, v228 :: v_dual_mul_f32 v4, v4, v229
	v_mul_f32_e32 v5, v5, v230
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v2, v2
	v_add3_u32 v6, v6, v227, 0x7fff
	v_bfe_u32 v227, v7, 16, 1
	v_cmp_o_f32_e64 s16, v3, v3
	v_cmp_o_f32_e64 s17, v4, v4
	v_cmp_o_f32_e64 s18, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v7, v7, v227, 0x7fff
	v_bfe_u32 v227, v77, 16, 1
	v_add3_u32 v77, v77, v227, 0x7fff
	v_bfe_u32 v227, v78, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v78, v78, v227, 0x7fff
	v_bfe_u32 v227, v8, 16, 1
	v_add3_u32 v8, v8, v227, 0x7fff
	v_bfe_u32 v227, v73, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v227, v73, v227, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	v_add3_u32 v228, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v77.h, s5
	v_cndmask_b16 v74.h, 0x7fff, v78.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v229, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v8.h, s7
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	v_mov_b32_e32 v8, v1
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v75.h, 0x7fff, v227.h, s8
	v_add3_u32 v230, v76, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v228.h, s9
	v_cndmask_b16 v76.h, 0x7fff, v229.h, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v77.l, 0x7fff, v230.h, s11
	v_add3_u32 v79, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v77.h, 0x7fff, v79.h, s12
	v_add3_u32 v80, v80, v73, 0x7fff
	v_bfe_u32 v73, v226, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.l, 0x7fff, v80.h, s13
	v_add3_u32 v226, v226, v73, 0x7fff
	v_bfe_u32 v73, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.h, 0x7fff, v226.h, s14
	v_add3_u32 v2, v2, v73, 0x7fff
	v_bfe_u32 v73, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v2.h, s15
	v_add3_u32 v3, v3, v73, 0x7fff
	v_bfe_u32 v73, v4, 16, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v79.h, 0x7fff, v3.h, s16
	v_add3_u32 v4, v4, v73, 0x7fff
	v_bfe_u32 v73, v5, 16, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v80.l, 0x7fff, v4.h, s17
	v_add3_u32 v5, v5, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v6.h, s3
	v_cndmask_b16 v73.h, 0x7fff, v7.h, s4
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v80.h, 0x7fff, v5.h, s18
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v233, v8
	v_mov_b32_e32 v231, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v229, v4 :: v_dual_mov_b32 v230, v5
	v_dual_mov_b32 v227, v2 :: v_dual_mov_b32 v232, v7
	v_mov_b32_e32 v228, v3
	v_mov_b32_e32 v226, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[226:233], v[73:80], v[17:24], v[226:233]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v73, 16, v101
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v77, v125, v73
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v73, 0xffff0000, v101
	v_lshlrev_b32_e32 v125, 16, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v77, v77
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v78, v126, v73 :: v_dual_lshlrev_b32 v73, 16, v102
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v126, 0xffff0000, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s4, v78, v78
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v79, v127, v73
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v73, 0xffff0000, v102
	v_lshlrev_b32_e32 v127, 16, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v79, v79
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v80, v128, v73
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v128, 0xffff0000, v104
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[73:76], v192
	ds_load_b128 v[101:104], v192 offset:64
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v80, v80
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v125, v73, v125
	v_dual_mul_f32 v126, v74, v126 :: v_dual_lshlrev_b32 v73, 16, v97
	v_dual_mul_f32 v127, v75, v127 :: v_dual_mul_f32 v128, v76, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v125, v125
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v121, v121, v73
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v73, 0xffff0000, v97
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s8, v126, v126
	v_cmp_o_f32_e64 s9, v127, v127
	v_cmp_o_f32_e64 s10, v128, v128
	v_cmp_o_f32_e64 s11, v121, v121
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v122, v122, v73 :: v_dual_lshlrev_b32 v73, 16, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v122, v122
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v123, v123, v73
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v73, 0xffff0000, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v123, v123
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v124, v124, v73
	ds_load_b128 v[73:76], v193
	ds_load_b128 v[97:100], v193 offset:64
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v73, v73, v234
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v234, v77, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v74, v74, v235
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v124, v124
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v75, v75, v236
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v73, v73
	v_add3_u32 v77, v77, v234, 0x7fff
	v_bfe_u32 v234, v78, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v76, v76, v237
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v74, v74
	v_cmp_o_f32_e64 s17, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v78, v78, v234, 0x7fff
	v_bfe_u32 v234, v79, 16, 1
	v_cmp_o_f32_e64 s18, v76, v76
	v_add3_u32 v79, v79, v234, 0x7fff
	v_bfe_u32 v234, v80, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v80, v80, v234, 0x7fff
	v_bfe_u32 v234, v125, 16, 1
	v_add3_u32 v125, v125, v234, 0x7fff
	v_bfe_u32 v234, v126, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v126, v126, v234, 0x7fff
	v_bfe_u32 v234, v127, 16, 1
	v_add3_u32 v127, v127, v234, 0x7fff
	v_bfe_u32 v234, v128, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v128, v128, v234, 0x7fff
	v_bfe_u32 v234, v121, 16, 1
	v_add3_u32 v121, v121, v234, 0x7fff
	v_bfe_u32 v234, v122, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v77.l, 0x7fff, v121.h, s11
	v_add3_u32 v122, v122, v234, 0x7fff
	v_bfe_u32 v234, v123, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v123, v123, v234, 0x7fff
	v_bfe_u32 v234, v124, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v123.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v124, v124, v234, 0x7fff
	v_bfe_u32 v234, v73, 16, 1
	v_add3_u32 v234, v73, v234, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v234.h, s15
	v_add3_u32 v235, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v79.h, s5
	v_cndmask_b16 v74.h, 0x7fff, v80.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v79.h, 0x7fff, v235.h, s16
	v_add3_u32 v236, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v125.h, s7
	v_cndmask_b16 v75.h, 0x7fff, v126.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v80.l, 0x7fff, v236.h, s17
	v_add3_u32 v237, v76, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v77.h, s3
	v_cndmask_b16 v73.h, 0x7fff, v78.h, s4
	v_cndmask_b16 v76.l, 0x7fff, v127.h, s9
	v_cndmask_b16 v76.h, 0x7fff, v128.h, s10
	v_cndmask_b16 v77.h, 0x7fff, v122.h, s12
	v_cndmask_b16 v78.h, 0x7fff, v124.h, s14
	v_cndmask_b16 v80.h, 0x7fff, v237.h, s18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[226:233], v[73:80], v[25:32], v[226:233]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v79, 16, v96
	v_and_b32_e32 v80, 0xffff0000, v96
	v_lshlrev_b32_e32 v73, 16, v93
	v_lshlrev_b32_e32 v96, 16, v92
	v_lshlrev_b32_e32 v75, 16, v94
	v_and_b32_e32 v76, 0xffff0000, v94
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v80, v132, v80 :: v_dual_mul_f32 v73, v117, v73
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v94, 16, v90
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v96, v135, v96
	v_mul_f32_e32 v75, v119, v75
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v77, 16, v95
	v_and_b32_e32 v74, 0xffff0000, v93
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v94, v115, v94
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v78, 0xffff0000, v95
	v_lshlrev_b32_e32 v95, 16, v91
	v_and_b32_e32 v91, 0xffff0000, v91
	v_and_b32_e32 v92, 0xffff0000, v92
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v74, v118, v74
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v73, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v76, v120, v76 :: v_dual_mul_f32 v91, v134, v91
	v_dual_mul_f32 v92, v136, v92 :: v_dual_lshlrev_b32 v93, 16, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s4, v74, v74
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v77, v129, v77
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v75, v75
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v93, v113, v93 :: v_dual_and_b32 v90, 0xffff0000, v90
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v113, v73, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v78, v130, v78
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v76, v76
	v_cmp_o_f32_e64 s7, v77, v77
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v90, v116, v90
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v73, v73, v113, 0x7fff
	v_bfe_u32 v113, v74, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v79, v131, v79
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s8, v78, v78
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v89, 0xffff0000, v89
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v80, v80
	v_add3_u32 v74, v74, v113, 0x7fff
	v_bfe_u32 v113, v75, 16, 1
	v_cmp_o_f32_e64 s9, v79, v79
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v89, v114, v89
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v93, v93
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v95, v133, v95
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v75, v75, v113, 0x7fff
	v_bfe_u32 v113, v76, 16, 1
	v_cmp_o_f32_e64 s12, v89, v89
	v_cmp_o_f32_e64 s13, v94, v94
	v_cmp_o_f32_e64 s14, v90, v90
	v_cmp_o_f32_e64 s15, v95, v95
	v_add3_u32 v76, v76, v113, 0x7fff
	v_bfe_u32 v113, v77, 16, 1
	v_cmp_o_f32_e64 s16, v91, v91
	v_cmp_o_f32_e64 s17, v96, v96
	v_cmp_o_f32_e64 s18, v92, v92
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s3
	v_add3_u32 v77, v77, v113, 0x7fff
	v_bfe_u32 v113, v78, 16, 1
	v_cndmask_b16 v73.h, 0x7fff, v74.h, s4
	v_cndmask_b16 v74.l, 0x7fff, v75.h, s5
	v_cndmask_b16 v74.h, 0x7fff, v76.h, s6
	v_cndmask_b16 v75.l, 0x7fff, v77.h, s7
	v_add3_u32 v78, v78, v113, 0x7fff
	v_bfe_u32 v113, v79, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v75.h, 0x7fff, v78.h, s8
	v_add3_u32 v79, v79, v113, 0x7fff
	v_bfe_u32 v113, v80, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v76.l, 0x7fff, v79.h, s9
	v_add3_u32 v80, v80, v113, 0x7fff
	v_bfe_u32 v113, v93, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
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
	v_mov_b16_e64 v90.h, v178.h
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
	v_cvt_f32_i32_e32 v91, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v80.l, 0x7fff, v96.h, s17
	v_add3_u32 v92, v92, v113, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v91, v91, v204
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v80.h, 0x7fff, v92.h, s18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[226:233], v[73:80], v[41:48], v[226:233]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v76, 0xffff0000, v86
	v_lshlrev_b32_e32 v79, 16, v88
	v_and_b32_e32 v80, 0xffff0000, v88
	v_lshlrev_b32_e32 v88, 16, v84
	v_lshlrev_b32_e32 v75, 16, v86
	v_lshlrev_b32_e32 v86, 16, v82
	v_lshlrev_b32_e32 v77, 16, v87
	v_and_b32_e32 v78, 0xffff0000, v87
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v88, v99, v88
	v_dual_mul_f32 v75, v111, v75 :: v_dual_and_b32 v74, 0xffff0000, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v86, v107, v86 :: v_dual_mul_f32 v77, v101, v77
	v_dual_mul_f32 v80, v104, v80 :: v_dual_lshlrev_b32 v73, 16, v85
	v_mul_f32_e32 v74, v110, v74
	v_mul_f32_e32 v76, v112, v76
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v73, v109, v73 :: v_dual_mul_f32 v78, v102, v78
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s4, v74, v74
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v87, 16, v83
	v_and_b32_e32 v83, 0xffff0000, v83
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v89, v73, 16, 1
	v_cmp_o_f32_e64 s3, v73, v73
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v82, 0xffff0000, v82
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v76, v76
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v83, v98, v83
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v73, v73, v89, 0x7fff
	v_bfe_u32 v89, v74, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v82, v108, v82 :: v_dual_mul_f32 v79, v103, v79
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v84, 0xffff0000, v84
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v74, v74, v89, 0x7fff
	v_bfe_u32 v89, v75, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v84, v100, v84 :: v_dual_lshlrev_b32 v85, 16, v81
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s8, v78, v78
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v81, 0xffff0000, v81
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v75, v75, v89, 0x7fff
	v_bfe_u32 v89, v76, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v85, v105, v85
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v79, v79
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v81, v106, v81
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v80, v80
	v_add3_u32 v76, v76, v89, 0x7fff
	v_bfe_u32 v89, v77, 16, 1
	v_cmp_o_f32_e64 s11, v85, v85
	v_cmp_o_f32_e64 s12, v81, v81
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v87, v97, v87
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v86, v86
	v_add3_u32 v77, v77, v89, 0x7fff
	v_bfe_u32 v89, v78, 16, 1
	v_cmp_o_f32_e64 s14, v82, v82
	v_cmp_o_f32_e64 s15, v87, v87
	v_cmp_o_f32_e64 s16, v83, v83
	v_cmp_o_f32_e64 s17, v88, v88
	v_add3_u32 v78, v78, v89, 0x7fff
	v_bfe_u32 v89, v79, 16, 1
	v_cmp_o_f32_e64 s18, v84, v84
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s3
	v_cndmask_b16 v73.h, 0x7fff, v74.h, s4
	v_cndmask_b16 v74.l, 0x7fff, v75.h, s5
	v_add3_u32 v79, v79, v89, 0x7fff
	v_bfe_u32 v89, v80, 16, 1
	v_cndmask_b16 v74.h, 0x7fff, v76.h, s6
	v_cndmask_b16 v75.l, 0x7fff, v77.h, s7
	v_cndmask_b16 v75.h, 0x7fff, v78.h, s8
	v_cndmask_b16 v76.l, 0x7fff, v79.h, s9
	v_add3_u32 v80, v80, v89, 0x7fff
	v_bfe_u32 v89, v85, 16, 1
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s4, v224, v224
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v76.h, 0x7fff, v80.h, s10
	v_add3_u32 v85, v85, v89, 0x7fff
	v_bfe_u32 v89, v81, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
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
	v_wmma_f32_16x16x16_bf16 v[226:233], v[73:80], v[49:56], v[226:233]
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[149:150], v[139:140], v[1:8] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v3.l, v147.h
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v4, 15, v147
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v2.l, v147.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[151:152], v[143:144], v[73:80] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v5.l, v148.h
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v89, v226, v181
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v2.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[153:154], v[141:142], v[73:80] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v2, v3, 0, 8
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[155:156], v[145:146], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v88, v73
	v_cvt_f32_i32_e32 v84, v75
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v73, v147, 20, 4
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v75, -16, v4
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v86, v74
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v74, v148, 20, 4
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v82, v76
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v3, -16, v73
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v4, v4, v75, s3
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v2.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v2, v5, 0, 8
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v5, -16, v74
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v81, v77
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v3, v73, v3, s3
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v2.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v73.h, v178.h
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v8, v80
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v4, v4, v204
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v6, v233, v181
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v2, v74, v5, s3
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v5.h, v178.h
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v3, v3, v204 :: v_dual_sub_f32 v80, v230, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v87, v227, v181
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v5.l, v4.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_cmp_o_f32_e64 s3, v4, v4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v2, v2, v204
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v77, v78
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v5, 1, v5
	v_mov_b16_e32 v73.l, v3.h
	v_cmp_o_f32_e64 s5, v3, v3
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v78, v231, v181
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v4, v4, v5, 0x7fff
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v5, v224, v225, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v79, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v3, v3, v73, 0x7fff
	v_mov_b16_e64 v73.h, v178.h
	v_mov_b16_e32 v73.l, v2.h
	v_cndmask_b16 v75.h, 0x7fff, v3.h, s5
	v_add3_u32 v3, v221, v222, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v73, 1, v73
	v_cmp_o_f32_e64 s5, v209, v209
	v_add3_u32 v2, v2, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v4.h, s3
	v_cmp_o_f32_e64 s3, v221, v221
	v_cndmask_b16 v73.h, 0x7fff, v5.h, s4
	v_cmp_o_f32_e64 s4, v220, v220
	v_add3_u32 v4, v220, v223, 0x7fff
	v_mov_b16_e64 v5.h, v178.h
	v_cndmask_b16 v74.l, 0x7fff, v3.h, s3
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v3, v219
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v75.l, 0x7fff, v4.h, s4
	v_mov_b16_e64 v4.h, v178.h
	v_cmp_o_f32_e64 s4, v215, v215
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v3, v3, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_mov_b16_e32 v4.l, v3.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v3, v3
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v3, v4, 0x7fff
	v_add3_u32 v4, v215, v216, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v3.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v76.l, 0x7fff, v4.h, s4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v4, v213
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v83, v229, v181
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s3, v217, v217
	v_add3_u32 v3, v217, v218, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v4, v4, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s3
	v_cmp_o_f32_e64 s3, v212, v212
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_add3_u32 v3, v212, v214, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v5.l, v4.h
	v_cmp_o_f32_e64 s4, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s3
	v_and_b32_e32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v5, v4, v5, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v2.h, s6
	v_cndmask_b16 v76.h, 0x7fff, v5.h, s4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v5, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v5, v5, v204
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v5, 0, v5, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v90.l, v5.h
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v85, v228, v181
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s4, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v90, 1, v90
	v_add3_u32 v5, v5, v90, 0x7fff
	v_add3_u32 v90, v209, v210, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s4
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v5, v208
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v4.l, 0x7fff, v90.h, s5
	v_mov_b16_e64 v90.h, v178.h
	v_cmp_o_f32_e64 s4, v206, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v5, v5, v204
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v5, 0, v5, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v90.l, v5.h
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v7, v232, v181
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s3, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v90, 1, v90
	v_add3_u32 v5, v5, v90, 0x7fff
	v_add3_u32 v90, v206, v207, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s3
	v_cndmask_b16 v5.l, 0x7fff, v90.h, s4
	v_cndmask_b32_e64 v90, 0, v91, s1
	v_mov_b16_e64 v91.h, v178.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v91.l, v90.h
	v_cmp_o_f32_e64 s3, v90, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v90, v90, v91, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v5.h, 0x7fff, v90.h, s3
	ds_store_b128 v195, v[73:76]
	ds_store_b128 v195, v[2:5] offset:16
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v2, v177, v88 :: v_dual_lshlrev_b32 v3, 16, v202
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v4, 16, v203
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v2, v2, v3, -v179
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v3, v177, v86
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v3, v3, v4, -v179
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_dual_mul_f32 v2, v2, v89 :: v_dual_cndmask_b32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v2, s31, v2 :: v_dual_mul_f32 v3, v3, v87
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v4, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v3, s31, v3
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s3, v2, v2
	v_add3_u32 v2, v2, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_u32 v4, v3, 16, 1
	v_cmp_o_f32_e64 s4, v3, v3
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v3, v4, 0x7fff
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v4, 16, v201
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v3, v2, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v73, v3, v2, v184
	v_perm_b32 v74, v3, v2, v185
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v2, v177, v84
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v3, 16, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v2, v2, v3, -v179
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v3, v177, v82
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v3, v3, v4, -v179
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_dual_mul_f32 v2, v2, v85 :: v_dual_cndmask_b32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v2, s31, v2 :: v_dual_mul_f32 v3, v3, v83
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v83, v0 offset:608
	ds_load_u16_d16 v82, v0 offset:352
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
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v4, v2, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v3, s31, v3
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s3, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v2, v4, 0x7fff
	v_bfe_u32 v4, v3, 16, 1
	v_cmp_o_f32_e64 s4, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	v_add3_u32 v3, v3, v4, 0x7fff
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v4, 16, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_permlanex16_b32 v3, v2, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v75, v3, v2, v184
	v_perm_b32 v76, v3, v2, v185
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v2, v177, v81 :: v_dual_lshlrev_b32 v3, 16, v199
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v82, v0 offset:480
	ds_load_u16_d16 v81, v0 offset:96
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
	ds_load_u16_d16 v84, v0 offset:864
	ds_load_u16_d16 v85, v0 offset:1120
	ds_load_u16_d16 v86, v0 offset:1376
	ds_load_u16_d16 v87, v0 offset:1632
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v96, v0 offset:1984
	ds_load_u16_d16 v88, v0 offset:1888
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v97, v0 offset:160
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v89, v0 offset:192
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v81, v0 offset:224
	ds_load_u16_d16_hi v98, v0 offset:416
	ds_load_u16_d16_hi v90, v0 offset:448
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v2, v2, v3, -v179
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v3, v177, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v2, v2
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v3, v3, v4, -v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v3, v3
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_dual_mul_f32 v2, v2, v80 :: v_dual_cndmask_b32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v2, s31, v2
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v3, v3, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v4, v2, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v3, s31, v3
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s3, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v2, v2, v4, 0x7fff
	v_bfe_u32 v4, v3, 16, 1
	v_cmp_o_f32_e64 s4, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	v_add3_u32 v3, v3, v4, 0x7fff
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v4, 16, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_permlanex16_b32 v3, v2, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v77, v3, v2, v184
	v_perm_b32 v78, v3, v2, v185
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v2, v177, v79 :: v_dual_lshlrev_b32 v3, 16, v197
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v2, v2, v3, -v179
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v3, v177, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v2, v2
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v3, v3, v4, -v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v3, v3
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v2, v2, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mul_f32 v2, s31, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v3, v3, v6
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v4, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v3, s31, v3
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s3, v2, v2
	v_add3_u32 v2, v2, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_u32 v4, v3, 16, 1
	v_cmp_o_f32_e64 s4, v3, v3
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v3, v4, 0x7fff
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	s_add_i32 s3, s33, 16
	s_cmpk_lt_u32 s33, 0x7f0
	s_mov_b32 s33, s3
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v3, v2, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v79, v3, v2, v184
	v_perm_b32 v80, v3, v2, v185
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[100:107], v[73:80], v[65:72]
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v100, v0 offset:800
	ds_load_u16_d16 v101, v0 offset:1056
	ds_load_u16_d16 v102, v0 offset:1312
	ds_load_u16_d16 v103, v0 offset:1568
	ds_load_u16_d16 v104, v0 offset:1824
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v99, v0 offset:672
	ds_load_u16_d16_hi v83, v0 offset:736
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v100, v0 offset:928
	ds_load_u16_d16_hi v84, v0 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v0 offset:1184
	ds_load_u16_d16_hi v85, v0 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v102, v0 offset:1440
	ds_load_u16_d16_hi v86, v0 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v103, v0 offset:1696
	ds_load_u16_d16_hi v87, v0 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v104, v0 offset:1952
	ds_load_u16_d16_hi v88, v0 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[33:40], v[89:96], v[73:80], v[33:40]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[97:104], v[73:80], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[73:80], v[9:16]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_scc1 .LBB0_3
; %bb.4:
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s28, v157
	s_mul_i32 s4, s28, s26
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s28, v163
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v1, 62, v167
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s0
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, s4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 16, v163
	v_or_b32_e32 v3, 32, v163
	v_or_b32_e32 v2, 48, v163
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v5, v163, 2
	v_add_lshl_u32 v7, v5, v166, 2
	v_add_lshl_u32 v8, v5, v165, 2
	v_add_lshl_u32 v1, v5, v1, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v163
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	v_add_lshl_u32 v17, v5, v160, 2
	v_add_lshl_u32 v18, v5, v159, 2
	s_clause 0x2
	buffer_store_b32 v65, v6, s[24:27], 0 offen
	buffer_store_b32 v66, v7, s[24:27], 0 offen
	buffer_store_b32 v67, v8, s[24:27], 0 offen
	v_add_lshl_u32 v6, v5, v164, 2
	v_add_lshl_u32 v7, v5, v162, 2
	v_add_lshl_u32 v8, v5, v161, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s28, v4
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	v_add_lshl_u32 v4, v5, v4, 2
	s_clause 0x4
	buffer_store_b32 v68, v6, s[24:27], 0 offen
	buffer_store_b32 v69, v7, s[24:27], 0 offen
	buffer_store_b32 v70, v8, s[24:27], 0 offen
	buffer_store_b32 v71, v17, s[24:27], 0 offen
	buffer_store_b32 v72, v18, s[24:27], 0 offen
	v_add_nc_u32_e32 v6, 0x48, v0
	v_add_nc_u32_e32 v7, 0x50, v0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v8, 0x58, v0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_nc_u32_e32 v17, 0x60, v0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	s_clause 0x2
	buffer_store_b32 v57, v4, s[24:27], 0 offen
	buffer_store_b32 v58, v6, s[24:27], 0 offen
	buffer_store_b32 v59, v7, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v17, s0
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
	buffer_store_b32 v33, v3, s[24:27], 0 offen
	v_add_nc_u32_e32 v3, 0x90, v0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_nc_u32_e32 v6, 0x98, v0
	v_add_nc_u32_e32 v7, 0xa0, v0
	v_add_nc_u32_e32 v8, 0xa8, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	buffer_store_b32 v34, v4, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s0
	v_cndmask_b32_e64 v6, 0x80000000, v7, s0
	v_cndmask_b32_e64 v7, 0x80000000, v8, s0
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s28, v2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v35, v3, s[24:27], 0 offen
	v_add_nc_u32_e32 v3, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v36, v4, s[24:27], 0 offen
	buffer_store_b32 v37, v6, s[24:27], 0 offen
	buffer_store_b32 v38, v7, s[24:27], 0 offen
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
	buffer_store_b32 v39, v3, s[24:27], 0 offen
	buffer_store_b32 v40, v4, s[24:27], 0 offen
	buffer_store_b32 v9, v2, s[24:27], 0 offen
	buffer_store_b32 v10, v6, s[24:27], 0 offen
	buffer_store_b32 v11, v7, s[24:27], 0 offen
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
	buffer_store_b32 v12, v2, s[24:27], 0 offen
	buffer_store_b32 v13, v3, s[24:27], 0 offen
	buffer_store_b32 v14, v4, s[24:27], 0 offen
	buffer_store_b32 v15, v0, s[24:27], 0 offen
	buffer_store_b32 v16, v1, s[24:27], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp69:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 238
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14604
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
