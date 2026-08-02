	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[28:31], s[0:1], 0x74
.Ltmp0:
	.loc	1 139 44 prologue_end           ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v8, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v125, 1, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s5, s2, 5
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v124, 32, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v1, 16, v8
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v4, s5, v125
	.loc	1 133 26 is_stmt 1              ; attention_backward.py:133:26
	s_lshl_b32 s6, s3, 11
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 1, v124
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s26, s5, s6
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x58
	s_load_b256 s[16:23], s[0:1], 0x0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v3, s26, v125
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v5, 3, v0
	v_dual_mov_b32 v131, 0xff800000 :: v_dual_and_b32 v10, 7, v0
	s_load_b256 s[8:15], s[0:1], 0x38
	s_mov_b32 s39, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 124 21 is_stmt 0              ; attention_backward.py:124:21
	v_or_b32_e32 v6, s5, v5
	.loc	1 139 44 is_stmt 1              ; attention_backward.py:139:44
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s29, v1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v5, s30, v5
	s_mul_i32 s7, s30, s26
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, 0x800, v6
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v123, 15, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v101, v0, 4, 1
	s_load_b64 s[40:41], s[0:1], 0x20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v12, s30, 3, v5
	v_lshl_add_u32 v14, s30, 4, v5
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v98, v2, v123
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[2:3], null, s29, v3, v[1:2]
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s37, s17, 0xffff
	s_mov_b32 s36, s16
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v1, s26, v98
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s5, v98
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v127, 4, v10
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v126, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_lshlrev_b32 v9, 1, v1
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v7
	v_lshlrev_b32_e32 v128, 5, v123
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v106, 2, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[1:4], v2, s[36:39], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s37, s23, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v9, 3, v10
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_mov_b32 s36, s22
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v10, 6, v124
	buffer_load_u16 v11, v7, s[36:39], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v99, v5, v9
	v_add_nc_u32_e32 v13, s7, v9
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s2, s30, v9
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v100, v12, v9
	v_mad_u64_u32 v[6:7], null, s30, 24, v[5:6]
	v_add_nc_u32_e32 v9, s7, v99
	v_or_b32_e32 v15, 4, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v7, s7, v100
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s4, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v17, v13, v14
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v16, 2, v9
	v_add_lshl_u32 v5, v15, v5, 2
	v_lshlrev_b32_e32 v18, 2, v7
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v13, v13, v6
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s37, s9, 0xffff
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	s_mov_b32 s36, s8
	v_add_lshl_u32 v12, v15, v12, 2
	s_clause 0x1
	buffer_load_b128 v[61:64], v16, s[36:39], 0 offen
	buffer_load_b128 v[53:56], v5, s[36:39], 0 offen
	v_lshlrev_b32_e32 v16, 2, v17
	v_add_lshl_u32 v14, v15, v14, 2
	v_cndmask_b32_e64 v5, 0x80000000, v18, s4
	v_lshlrev_b32_e32 v18, 2, v13
	v_add_lshl_u32 v6, v15, v6, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	v_cndmask_b32_e64 v15, 0x80000000, v16, s4
	v_cndmask_b32_e64 v14, 0x80000000, v14, s4
	v_cndmask_b32_e64 v16, 0x80000000, v18, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	s_clause 0x5
	buffer_load_b128 v[69:72], v5, s[36:39], 0 offen
	buffer_load_b128 v[65:68], v12, s[36:39], 0 offen
	buffer_load_b128 v[57:60], v15, s[36:39], 0 offen
	buffer_load_b128 v[49:52], v14, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v16, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v6, s[36:39], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v5, 1, v9
	v_lshlrev_b32_e32 v6, 1, v7
	v_lshlrev_b32_e32 v7, 1, v17
	v_lshlrev_b32_e32 v9, 1, v13
	s_and_b32 s37, s11, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	s_mov_b32 s36, s10
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	s_clause 0x3
	buffer_load_b128 v[85:88], v5, s[36:39], 0 offen
	buffer_load_b128 v[81:84], v6, s[36:39], 0 offen
	buffer_load_b128 v[77:80], v7, s[36:39], 0 offen
	buffer_load_b128 v[73:76], v9, s[36:39], 0 offen
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v5, 1, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s8, s3, 31
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v6, 56, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s0, s8, 28
	v_lshlrev_b32_e32 v7, 3, v0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v12, v5, 30, v101
	v_and_or_b32 v132, v5, 24, v128
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s0, s3, s0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v129, 1, v6
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v12, 2, v12
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s0, s0, 10
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s1, s3, s1
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s3, s0, 0xffffc000
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s0, s1, 0x10007
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v5, 4, v12
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v6, 7, v123
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s1, s1, s0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v9, 16, v0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_i32 s0, s1, 0x80000
	v_and_b32_e32 v13, 24, v125
	s_sext_i32_i16 s0, s0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_or3_b32 v6, v6, v10, v127
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s0, s0, 10
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_mul_f32 s1, s31, 0x3fb8aa3b
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s27, s0, 0xfffff800
	v_xor_b32_e32 v122, v7, v13
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v7, 0, v6
	v_xad_u32 v10, v6, 16, 0
	v_xad_u32 v13, v6, 32, 0
	v_xad_u32 v14, v6, 48, 0
	v_xad_u32 v17, v6, 64, 0
	v_xad_u32 v21, 0x50, v6, 0
	v_xad_u32 v25, 0x60, v6, 0
	v_xad_u32 v29, 0x70, v6, 0
	v_xor_b32_e32 v6, 8, v132
	v_xor_b32_e32 v19, 24, v132
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_add_i32 s27, s27, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s3, 0, v9
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_lshlrev_b32_e32 v89, 3, v126
	v_add_nc_u32_e32 v133, 0, v6
	v_add_nc_u32_e32 v135, 0, v19
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v104, 2, v101
	v_or_b32_e32 v103, 4, v101
	v_or_b32_e32 v102, 6, v101
	v_or_b32_e32 v110, 8, v101
	v_or_b32_e32 v109, 10, v101
	v_or_b32_e32 v108, 12, v101
	v_or_b32_e32 v107, 14, v101
	v_lshrrev_b32_e32 v105, 4, v0
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s0, s29, v89
	v_or_b32_e32 v112, s27, v106
	v_or_b32_e32 v113, s27, v101
	v_or_b32_e32 v114, s27, v104
	v_or_b32_e32 v115, s27, v103
	v_or_b32_e32 v116, s27, v102
	v_or_b32_e32 v117, s27, v110
	v_or_b32_e32 v118, s27, v109
	v_or_b32_e32 v119, s27, v108
	v_or_b32_e32 v120, s27, v107
	s_mov_b32 s4, 0
	s_mov_b32 s7, 0x76543210
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b64 s[8:9], s[14:15]
	s_waitcnt lgkmcnt(0)
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s37, s19, 0xffff
	s_mov_b32 s36, s18
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(13)
	ds_bpermute_b32 v15, v12, v1
	ds_bpermute_b32 v1, v5, v1
	ds_bpermute_b32 v16, v12, v2
	ds_bpermute_b32 v2, v5, v2
	ds_bpermute_b32 v18, v12, v3
	ds_bpermute_b32 v3, v5, v3
	ds_bpermute_b32 v12, v12, v4
	ds_bpermute_b32 v4, v5, v4
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v11, 16, v11
	v_xor_b32_e32 v5, 16, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v111, s1, v11
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v8, v8, v129, 0
	v_add_nc_u32_e32 v134, 0, v5
	s_waitcnt vmcnt(3)
	ds_store_b128 v8, v[85:88]
	s_waitcnt vmcnt(2)
	ds_store_b128 v8, v[81:84] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v8, v[77:80] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v8, v[73:76] offset:3072
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v90, v1, v15, s3
	v_cndmask_b32_e64 v92, v15, v1, s3
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v91, v2, v16, s3
	v_cndmask_b32_e64 v93, v16, v2, s3
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v94, v3, v18, s3
	v_cndmask_b32_e64 v96, v18, v3, s3
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v95, v4, v12, s3
	v_cndmask_b32_e64 v97, v12, v4, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v7
	ds_load_b128 v[5:8], v10
	ds_load_b128 v[9:12], v13
	ds_load_b128 v[13:16], v14
	ds_load_b128 v[17:20], v17
	ds_load_b128 v[21:24], v21
	ds_load_b128 v[25:28], v25
	ds_load_b128 v[29:32], v29
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_add_nc_u32_e32 v34, s4, v112
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v121, 0, v122
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v36, s4, v113, 1
	v_add_lshl_u32 v37, s4, v114, 1
	v_add_lshl_u32 v38, s4, v115, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[34:35], null, v34, s29, v[89:90]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v39, s4, v116, 1
	v_add_lshl_u32 v40, s4, v117, 1
	v_add_lshl_u32 v136, s4, v118, 1
	v_add_lshl_u32 v137, s4, v119, 1
	v_add_lshl_u32 v138, s4, v120, 1
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v144, 0, v132
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	v_mov_b32_e32 v154, v131
	buffer_load_b64 v[34:35], v34, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s1, 0xff800000, v154
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v121, v[34:35]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v146, v36, s[40:43], 0 offen
	buffer_load_u16 v147, v37, s[40:43], 0 offen
	buffer_load_u16 v148, v38, s[40:43], 0 offen
	buffer_load_u16 v149, v39, s[40:43], 0 offen
	buffer_load_u16 v150, v40, s[40:43], 0 offen
	buffer_load_u16 v151, v136, s[40:43], 0 offen
	buffer_load_u16 v152, v137, s[40:43], 0 offen
	buffer_load_u16 v153, v138, s[40:43], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v143, v40
	v_dual_mov_b32 v139, v36 :: v_dual_mov_b32 v138, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v141, v38 :: v_dual_mov_b32 v140, v37
	v_dual_mov_b32 v142, v39 :: v_dual_mov_b32 v137, v34
	v_mov_b32_e32 v136, v33
	.loc	1 198 28                        ; attention_backward.py:198:28
	ds_load_b64 v[34:35], v144
	ds_load_b64 v[36:37], v133
	ds_load_b64 v[38:39], v134
	ds_load_b64 v[144:145], v135
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[34:35], v[90:91], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[36:37], v[94:95], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[38:39], v[92:93], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[144:145], v[96:97], v[136:143] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v34, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v35, v137
	v_cvt_f32_i32_e32 v36, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v37, v139
	v_cvt_f32_i32_e32 v38, v140
	v_cvt_f32_i32_e32 v39, v141
	v_cvt_f32_i32_e32 v40, v142
	v_cvt_f32_i32_e32 v131, v143
	v_mul_f32_e32 v34, v111, v34
	v_mul_f32_e32 v35, v111, v35
	v_mul_f32_e32 v36, v111, v36
	v_mul_f32_e32 v37, v111, v37
	v_mul_f32_e32 v38, v111, v38
	v_mul_f32_e32 v39, v111, v39
	v_mul_f32_e32 v40, v111, v40
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v131, v111, v131 :: v_dual_lshlrev_b32 v136, 16, v146
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v137, 16, v147
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v138, 16, v148
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v139, 16, v149
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v140, 16, v150
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v141, 16, v151
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v142, 16, v152
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v34, v34, v136 :: v_dual_lshlrev_b32 v143, 16, v153
	v_dual_mul_f32 v35, v35, v137 :: v_dual_mul_f32 v36, v36, v138
	v_dual_mul_f32 v37, v37, v139 :: v_dual_mul_f32 v38, v38, v140
	v_dual_mul_f32 v39, v39, v141 :: v_dual_mul_f32 v40, v40, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v131, v131, v143
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_dual_cndmask_b32 v35, 0xff800000, v35 :: v_dual_cndmask_b32 v34, 0xff800000, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v37, 0xff800000, v37 :: v_dual_cndmask_b32 v36, 0xff800000, v36
	v_dual_cndmask_b32 v39, 0xff800000, v39 :: v_dual_cndmask_b32 v38, 0xff800000, v38
	v_cndmask_b32_e32 v40, 0xff800000, v40, vcc_lo
	v_cndmask_b32_e32 v136, 0xff800000, v131, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v131, v34, v35, v36
	v_max3_f32 v137, v37, v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v138, v40, v136
	v_max3_f32 v131, v131, v137, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v137, v131, s7, 0xfedcba98 op_sel:[1,0]
.Ltmp3:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v131, v154, v131, v137
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v136, v136, v131
	v_sub_f32_e32 v35, v35, v131
	v_sub_f32_e32 v37, v37, v131
	v_sub_f32_e32 v36, v36, v131
	v_sub_f32_e32 v39, v39, v131
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v136, v136
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v34, v34, v131
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v37, v37
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v38, v38, v131
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v38, v38
.Ltmp4:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v34, v34, v35 :: v_dual_add_f32 v35, v36, v37
.Ltmp5:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v40, v40, v131
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v38, v39
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp7:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v37, v40, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v35, v36, v37 :: v_dual_sub_f32 v36, v154, v131
	v_mov_b32_e32 v37, v130
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v35, v36
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_cndmask_b32_e32 v34, 0, v34, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v36, v34, s7, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v35, 0, v35, s1
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s1, s4, 16
	s_cmpk_lt_u32 s4, 0x7f0
	s_mov_b32 s4, s1
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v130, v34, v36
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp14:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v130, v37, v35
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_mov_b16_e32 v122.h, 0
	.loc	1 171 28 is_stmt 1              ; attention_backward.py:171:28
	v_mov_b16_e32 v33.h, v88.l
	v_mov_b16_e32 v36.h, v87.l
	v_mov_b16_e32 v37.h, v86.l
	v_mov_b16_e32 v38.h, v85.l
	v_mov_b16_e32 v33.l, v122.h
	v_and_b32_e32 v40, 0xffff0000, v87
	v_mov_b16_e32 v36.l, v122.h
	v_and_b32_e32 v87, 0xffff0000, v85
	v_mov_b16_e32 v37.l, v122.h
	v_mov_b16_e32 v38.l, v122.h
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v40, v54, v40
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v85.h, v82.l
	v_and_b32_e32 v82, 0xffff0000, v82
	v_mov_b16_e32 v85.l, v122.h
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s1, 0x800000, v130
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v40, v53, v36
.Ltmp16:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v86, 0xffff0000, v86
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v72, v72, v82 :: v_dual_and_b32 v39, 0xffff0000, v88
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v82.h, v79.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v54, v64, v86 :: v_dual_and_b32 v79, 0xffff0000, v79
	v_dual_mul_f32 v39, v56, v39 :: v_dual_and_b32 v34, 31, v0
	v_dual_mul_f32 v56, v62, v87 :: v_dual_and_b32 v87, 0xffff0000, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v54, v63, v37
.Ltmp18:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v62.h, v84.l
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v39, v55, v33 :: v_dual_fmac_f32 v56, v61, v38
.Ltmp20:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v64.h, v83.l
	v_mov_b16_e32 v62.l, v122.h
	v_mov_b16_e32 v64.l, v122.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v40, v39
	v_add_f32_e32 v36, v56, v54
.Ltmp22:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v70, v70, v87
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v81.h, v80.l
	v_mov_b16_e32 v86.l, v122.h
	v_mov_b16_e32 v86.h, v81.l
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v36, v37
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v50, v50, v79
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v79.h, v74.l
	v_and_b32_e32 v74, 0xffff0000, v74
	v_and_b32_e32 v84, 0xffff0000, v84
	v_and_b32_e32 v87, 0xffff0000, v77
	v_mov_b16_e32 v81.l, v122.h
	v_mov_b16_e32 v82.l, v122.h
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v33, v48, v74
	v_dual_mul_f32 v68, v68, v84 :: v_dual_and_b32 v83, 0xffff0000, v83
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v72, v71, v85
.Ltmp26:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v84.l, v122.h
	v_mov_b16_e32 v84.h, v77.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v66, v66, v83
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v68, v67, v62
.Ltmp28:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v83.h, v78.l
	v_mov_b16_e32 v83.l, v122.h
	v_mov_b16_e32 v79.l, v122.h
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v66, v65, v64
.Ltmp30:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v77.h, v76.l
	v_mov_b16_e32 v77.l, v122.h
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v35, s5, v34
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s4, 0, v130
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v39, v66, v68
.Ltmp32:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v80, 0xffff0000, v80
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v52, v52, v80
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v80.h, v73.l
	v_and_b32_e32 v73, 0xffff0000, v73
	v_mov_b16_e32 v80.l, v122.h
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v70, v69, v86
	v_fmac_f32_e32 v52, v51, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v33, v47, v79 :: v_dual_mul_f32 v40, v46, v73
	s_mov_b32 s14, 0x7ffffffe
	v_add_f32_e32 v38, v70, v72
.Ltmp34:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s14
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v40, v45, v80 :: v_dual_mov_b32 v45, v36
	v_dual_fmac_f32 v50, v49, v82 :: v_dual_mov_b32 v49, 0
	v_dual_add_f32 v37, v38, v39 :: v_dual_and_b32 v78, 0xffff0000, v78
.Ltmp36:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v58, v58, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v39, v50, v52
	v_dual_add_f32 v33, v40, v33 :: v_dual_and_b32 v76, 0xffff0000, v76
.Ltmp38:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v60, v60, v78
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v58, v57, v84
.Ltmp40:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v78.h, v75.l
	v_and_b32_e32 v75, 0xffff0000, v75
	v_mov_b16_e32 v78.l, v122.h
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v60, v59, v83
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v45, v45 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_mov_b32 s11, s15
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v42, v42, v75
	v_mov_b32_e32 v66, v49
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v58, v60
	v_add_f32_e32 v36, v36, v45
	v_mov_b32_e32 v68, v49
	v_fmac_f32_e32 v42, v41, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v67, v49 :: v_dual_add_f32 v38, v38, v39
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v39, v37
	v_mov_b32_e32 v70, v49
	v_mov_b32_e32 v72, v49
	v_dual_mov_b32 v58, v49 :: v_dual_mov_b32 v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v39, v39 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v44, v44, v76 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v69, v49
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v37, v37, v39 :: v_dual_fmac_f32 v44, v43, v77
.Ltmp49:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v43, 0, 32, s1
	v_dual_mov_b32 v71, v49 :: v_dual_add_f32 v38, v38, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v41, v37 :: v_dual_add_f32 v40, v42, v44
.Ltmp51:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v39, v130, v43
	v_cndmask_b32_e64 v42, 0, 0x42000000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v44, v36 :: v_dual_mov_b32 v43, v38
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v33, v33, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v39, v39
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v40, v33 :: v_dual_mov_b32 v57, 0
.Ltmp56:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s1, 0x800, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v36, v44 :: v_dual_add_f32 v37, v37, v41
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v39, v39, v42
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v42, v123, 2, 0
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v35, v36 :: v_dual_add_f32 v38, v38, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v33, v33, v40
.Ltmp62:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v39, v131, v39
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v41, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v43, v38 :: v_dual_mov_b32 v40, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp64:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v81, 0, v39, s4
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v39, v124, 1, v42
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cmp_eq_u32_e64 s4, 0, v124
	ds_store_b32 v39, v81
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v40, v33, v40
.Ltmp68:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v33, v34, 2, 0
	v_mov_b32_e32 v59, v49
	s_and_b32 s1, s4, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v63, v49 :: v_dual_mov_b32 v42, v40
	ds_load_b32 v39, v33
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v33, v36, v35
.Ltmp70:
	.loc	1 266 18                        ; attention_backward.py:266:18
	v_or_b32_e32 v36, s6, v34
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v37, v41
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v35, v38, v43 :: v_dual_and_b32 v38, 24, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp74:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v37, v36, s5, 2
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v40, v42 :: v_dual_add_nc_u32 v41, 0, v129
	v_mov_b32_e32 v61, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp76:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v40, 1, v38
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	v_dual_mov_b32 v45, v49 :: v_dual_and_b32 v42, 4, v125
	v_mov_b32_e32 v43, v49
	v_mov_b32_e32 v60, v49
	v_mov_b32_e32 v62, v49
	v_mov_b32_e32 v64, v49
	v_mov_b32_e32 v44, v49
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v39, v37, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v39, 0, v127, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v41, v[33:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v39, v39
	v_dual_mov_b32 v47, v49 :: v_dual_lshlrev_b32 v40, 4, v126
	v_mov_b32_e32 v46, v49
	v_mov_b32_e32 v48, v49
	s_mov_b32 s33, 0
	s_and_b32 s21, s21, 0xffff
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s28, v40
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
	s_mov_b32 s34, 0x76543210
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v39, v37, s[8:11], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v41, v[33:36]
	v_mov_b32_e32 v35, 0x7632
	v_mov_b32_e32 v34, 0x5410
	v_lshrrev_b32_e32 v37, 2, v124
	v_add_nc_u32_e32 v39, 0, v42
	v_and_b32_e32 v42, 12, v0
	v_cndmask_b32_e64 v35, 0x3276, v35, s3
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v33, v39, v37, v127
	v_lshlrev_b32_e32 v39, 1, v38
	v_lshl_or_b32 v35, v35, 8, v35
	v_lshl_or_b32 v38, v38, 6, v127
	v_lshl_or_b32 v82, v42, 1, v128
	ds_load_b32 v83, v33
	v_lshlrev_b32_e32 v41, 9, v126
	v_and_b32_e32 v35, 0x760076, v35
	v_xor_b32_e32 v38, v38, v39
	v_lshl_add_u32 v39, v124, 2, 0
	v_xor_b32_e32 v37, 24, v82
	v_lshlrev_b32_e32 v42, 5, v42
	v_lshl_or_b32 v35, v35, 4, v35
	v_xor_b32_e32 v33, 8, v82
	v_add_nc_u32_e32 v124, v39, v38
	v_mov_b32_e32 v39, v49
	v_xor_b32_e32 v36, 16, v82
	v_and_b32_e32 v86, 0x7060706, v35
	v_mov_b32_e32 v35, v49
	v_cndmask_b32_e64 v34, 0x1054, v34, s3
	v_add_nc_u32_e32 v87, 0, v33
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v88, 0, v36
	v_mov_b32_e32 v36, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v34, v34, 8, v34
	v_mov_b32_e32 v38, v49
	v_and_b32_e32 v34, 0x540054, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 4, v34
	v_and_b32_e32 v85, 0x5040504, v34
	v_lshlrev_b32_e32 v34, 5, v0
	v_lshl_add_u32 v0, v123, 1, 0
	v_add_nc_u32_e32 v123, 0, v37
	v_mov_b32_e32 v37, v49
	v_or3_b32 v84, v42, v41, v40
	v_add_nc_u32_e32 v128, 0, v34
	v_mov_b32_e32 v34, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v40, 16, v84
	v_xor_b32_e32 v41, 32, v84
	v_xor_b32_e32 v42, 48, v84
	v_add_nc_u32_e32 v125, 0, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v126, 0, v41
	v_add_nc_u32_e32 v127, 0, v42
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, v49
	v_mov_b32_e32 v40, v49
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_or_b32 s3, s33, s27
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v131, s33, v113, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_or_b32_e32 v129, s3, v106
	.loc	1 386 21                        ; attention_backward.py:386:21
	s_mul_i32 s4, s3, s30
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v132, s33, v114, 1
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_add_lshl_u32 v135, s4, v99, 1
	v_add_lshl_u32 v136, s4, v100, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[129:130], null, v129, s29, v[89:90]
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v134, s33, v112, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v130, 0x80000000, v135, s2
	v_cndmask_b32_e64 v139, 0x80000000, v136, s2
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v133, s33, v115, 1
	v_add_lshl_u32 v146, s33, v116, 1
	v_add_lshl_u32 v147, s33, v117, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v148, s33, v118, 1
	v_add_lshl_u32 v149, s33, v119, 1
	v_add_lshl_u32 v150, s33, v120, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v50, v49 :: v_dual_add_nc_u32 v145, 0, v82
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[143:144], v129, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v52, v49 :: v_dual_add_nc_u32 v153, 0, v84
	v_mov_b32_e32 v51, v49
	v_mov_b32_e32 v54, v49
	v_mov_b32_e32 v55, v49
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v121, v[143:144]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1
	buffer_load_b128 v[135:138], v130, s[20:23], 0 offen
	buffer_load_b128 v[139:142], v139, s[20:23], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x8
	buffer_load_u16 v154, v131, s[40:43], 0 offen
	buffer_load_u16 v155, v132, s[40:43], 0 offen
	buffer_load_u16 v156, v133, s[40:43], 0 offen
	buffer_load_u16 v157, v146, s[40:43], 0 offen
	buffer_load_u16 v131, v147, s[40:43], 0 offen
	buffer_load_u16 v132, v148, s[40:43], 0 offen
	buffer_load_u16 v133, v149, s[40:43], 0 offen
	buffer_load_u16 v130, v134, s[40:43], 0 offen
	buffer_load_u16 v134, v150, s[40:43], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[145:146], v145
	ds_load_b64 v[147:148], v87
	ds_load_b64 v[149:150], v88
	ds_load_b64 v[151:152], v123
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_alignbit_b32 v161, v144, v143, 24
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v56, v49
	v_mov_b32_e32 v53, v49
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v158, v143, 0, 8
	v_lshrrev_b32_e32 v129, 24, v144
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v129.h, v143.l, 15
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v80, v56 :: v_dual_mov_b32 v79, v55
	v_dual_mov_b32 v78, v54 :: v_dual_mov_b32 v77, v53
	v_dual_mov_b32 v76, v52 :: v_dual_mov_b32 v75, v51
	v_dual_mov_b32 v74, v50 :: v_dual_mov_b32 v73, v49
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v159, 8, v143
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v129.h
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v160.l, v143.h
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v122.l, 4, v143.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v162, v144, 0, 8
	v_lshrrev_b32_e32 v163, 8, v144
	v_mov_b16_e64 v164.l, v144.h
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(10)
	ds_store_b128 v124, v[135:138]
	s_waitcnt vmcnt(9)
	ds_store_b128 v124, v[139:142] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[135:138], v153
	ds_load_b128 v[139:142], v125
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v122.l, v122.l, 15
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v131, 16, v131
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v132, 16, v132
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[135:142], v[1:8], v[73:80]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[135:138], v126
	ds_load_b128 v[139:142], v127
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[135:142], v[9:16], v[73:80]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[135:138], v153 offset:64
	ds_load_b128 v[139:142], v125 offset:64
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v153, 15, v143
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[135:142], v[17:24], v[73:80]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[135:138], v126 offset:64
	ds_load_b128 v[139:142], v127 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[73:80], v[135:142], v[25:32], v[73:80]
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[135:142], v[145:146], v[90:91], v[49:56] neg_lo:[1,1,0]
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v51.l, v144.h, 15
	v_and_b16 v50.l, v143.h, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_bfe_u32 v55, v143, 16, 4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[135:142], v[147:148], v[94:95], v[135:142] neg_lo:[1,1,0]
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v146, v143, 8, 4
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s6, 7, v51.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v51.l, v158.l
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v147, v143, 20, 4
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[135:142], v[149:150], v[92:93], v[135:142] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[53:54], 24, v[143:144]
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v50.h, v144.l, 15
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s7, 0, v51.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v51, -16, v153
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[135:142], v[151:152], v[96:97], v[135:142] neg_lo:[1,1,0]
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s4, 7, v50.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v145, v144, 16, 4
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v52.l, 4, v144.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v143, v153, v51, s3
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v51.l, v159.l, 15
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v56, v135
	v_cvt_f32_i32_e32 v135, v136
	v_cvt_f32_i32_e32 v136, v137
	v_cvt_f32_i32_e32 v137, v138
	v_cvt_f32_i32_e32 v138, v139
	v_cvt_f32_i32_e32 v139, v140
	v_cvt_f32_i32_e32 v140, v141
	v_cvt_f32_i32_e32 v141, v142
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v142, 15, v144
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v51.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v51, -16, v55
	.loc	1 304 27 is_stmt 1              ; attention_backward.py:304:27
	v_bfe_u32 v148, v144, 8, 4
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v50.h
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v149, v144, 20, 4
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v150, v144, 24, 4
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v144, v55, v51, s4
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v51, -16, v142
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_bfe_i32 v54, v53, 0, 8
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v50.l, 4, v53.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v50.h, v53.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_and_b32_e32 v53, 15, v161
	.loc	1 306 27 is_stmt 1              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v142, v142, v51, s5
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v51.l, v163.l, 15
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v139, v111, v139
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s8, 7, v50.h
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v138, v111, v138
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s4, 7, v51.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v51, -16, v145
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_mul_f32_e32 v140, v111, v140
	v_mul_f32_e32 v141, v111, v141
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v145, v145, v51, s6
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v51.l, v129.l, 15
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v133, v140, v133, -v81
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v151.h, v122.h
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v73, v73, v83
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s6, 7, v51.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v51.l, v162.l
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v133, v133
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v152.h, v122.h
	v_mov_b16_e32 v55.h, v122.h
	v_mov_b16_e32 v52.h, v122.h
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s5, 0, v51.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v51, -16, v146
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v50.h, v122.h
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v74, v74, v83
	v_sub_f32_e32 v79, v79, v83
	v_sub_f32_e32 v78, v78, v83
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v146, v146, v51, s3
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v51, -16, v148
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e32 v133, 0, v133, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v148, v148, v51, s4
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v51, -16, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v79, v133, v79
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v148, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v150, v150, v51, s6
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v51, v160, 0, 8
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v79, s31, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v150, v150
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s9, 0, v51.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v51, v164, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s10, 0, v51.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v51, v159, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s11, 0, v51.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v51, v163, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s4, 0, v51.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v51, v129, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v51.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v51, -16, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v153, v53, v51, s8
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e32 v51.l, v54.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v53.h, v122.h
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v53.l, 4, v163.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v153, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s6, 0, v51.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v51, -16, v147
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v54, v147, v51, s9
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v51, -16, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v147, v149, v51, s10
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_dual_mul_f32 v51, v111, v56 :: v_dual_lshlrev_b32 v56, 16, v154
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v154.h, v122.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v147, v147
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v149, v51, v56, -v81
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v56, v111, v135
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v135, 16, v155
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v155, v54
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v54, 16, v130
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v51.l, 4, v159.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v51.h, v122.h
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v135, v56, v135, -v81
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v56, v111, v136
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v136, 16, v156
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v142, v142, v54
	v_mul_f32_e32 v145, v145, v54
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v135, v135
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v130, 16, v134
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v136, v56, v136, -v81
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v56, v111, v137
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v137, 16, v157
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v134, v138, v131, -v81
	v_fma_f32 v138, v139, v132, -v81
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v136, v136
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_mul_f32_e32 v132, v147, v54
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v137, v56, v137, -v81
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v56, -16, v122
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v135, 0, v135, vcc_lo
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v139, v141, v130, -v81
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_mul_f32_e32 v141, v144, v54
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v137, v137
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v56, v122, v56, s7
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v130, v143, v54
	v_mul_f32_e32 v144, v148, v54
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v134, v134
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v143, v153, v54
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v153, 0, v132, s1
	v_cndmask_b32_e64 v132, 0, v142, s1
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v142, v149
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e32 v137, 0, v137, vcc_lo
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cndmask_b32_e64 v148, 0, v130, s1
	v_cndmask_b32_e64 v130, 0, v145, s1
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v138, v138
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v131, v155, v54 :: v_dual_cndmask_b32 v136, 0, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v151.l, v148.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v56, v56, v54
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s13, v148, v148
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v139, v139
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v140, v146, v54 :: v_dual_and_b32 v145, 1, v151
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v147, 0, v56, s1
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v151, 0, v134, vcc_lo
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v146, v150, v54
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v150, 0, v131, s1
	v_add3_u32 v134, v148, v145, 0x7fff
	v_mov_b16_e64 v122.l, v147.h
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v148, v75, v83
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v131, 0, v144, s1
	v_mov_b16_e64 v154.l, v153.h
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v142, 0, v142, vcc_lo
	v_cndmask_b32_e32 v138, 0, v138, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v74, v135, v74 :: v_dual_mul_f32 v135, v136, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v73, v142, v73 :: v_dual_and_b32 v144, 1, v122
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v122.l, v51.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v149, 1, v154
	v_cmp_o_f32_e64 s14, v147, v147
	v_add3_u32 v144, v147, v144, 0x7fff
	v_mov_b16_e64 v152.l, v150.h
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v145, -16, v122
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v147, v153, v149, 0x7fff
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v149, v76, v83
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v139, 0, v139, vcc_lo
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v140, 0, v140, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v76, v122, v145, s11
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v141, 0, v141, s1
	v_cndmask_b32_e64 v56, 0, v146, s1
	v_and_b32_e32 v146, 1, v152
	v_mov_b16_e64 v122.l, v140.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s15, v150, v150
	v_cndmask_b16 v75.h, 0x7fff, v144.h, s14
	v_add3_u32 v146, v150, v146, 0x7fff
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v150, v77, v83
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v76, v76, v54 :: v_dual_mul_f32 v135, s31, v135
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v73, s31, v73 :: v_dual_and_b32 v144, 1, v122
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v122.l, v141.h
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v145, 0, v76, s1
	v_cmp_o_f32_e64 s17, v140, v140
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v80, v80, v83
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v140, v140, v144, 0x7fff
	v_cndmask_b32_e64 v143, 0, v143, s1
	v_mov_b16_e64 v55.l, v145.h
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v136, v137, v149 :: v_dual_mul_f32 v137, v151, v150
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v144, 1, v122
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v122.l, v50.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s18, v141, v141
	v_cndmask_b16 v76.l, 0x7fff, v140.h, s17
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v137, s31, v137
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v140, v141, v144, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v141, -16, v122
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v78, v138, v78 :: v_dual_and_b32 v55, 1, v55
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v74, s31, v74
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s12, v143, v143
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v133, v122, v141, s6
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v122.l, v143.h
	v_cmp_o_f32_e64 s11, v145, v145
	v_add3_u32 v55, v145, v55, 0x7fff
	v_cndmask_b16 v77.l, 0x7fff, v140.h, s18
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v133, v133
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v138, 1, v122
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v122.l, v52.l, 15
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v80, v139, v80
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v139, v73, 16, 1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v133, v133, v54
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v138, v143, v138, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v143, -16, v122
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v140, v74, 16, 1
	v_cmp_o_f32_e64 s6, v73, v73
	v_bfe_u32 v141, v135, 16, 1
	v_add3_u32 v73, v73, v139, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v76.h, 0x7fff, v55.h, s11
	v_cndmask_b32_e64 v55, 0, v133, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v133, v122, v143, s5
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s16, v153, v153
	v_cndmask_b16 v75.l, 0x7fff, v134.h, s13
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s13, v74, v74
	v_add3_u32 v74, v74, v140, 0x7fff
	v_cmp_o_f32_e64 s14, v135, v135
	v_add3_u32 v135, v135, v141, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v73.h, s6
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v73, v133
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v80, s31, v80
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v134.h, 0x7fff, v147.h, s16
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v147, v79, 16, 1
	v_cndmask_b16 v161.l, 0x7fff, v135.h, s14
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v135, v73, v54
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v148, v80, 16, 1
	v_cmp_o_f32_e64 s18, v79, v79
	v_add3_u32 v79, v79, v147, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v122.l, v132.h
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v136, s31, v136
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s19, v80, v80
	v_add3_u32 v80, v80, v148, 0x7fff
	v_cndmask_b16 v80.l, 0x7fff, v79.h, s18
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_and_b32_e32 v79, 1, v122
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v142, v136, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v77.h, 0x7fff, v146.h, s15
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s15, v136, v136
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s13
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v122.l, v53.l, 15
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v136, v136, v142, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v53.l, v55.h
	v_cmp_o_f32_e64 s10, v132, v132
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v133, v74, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s5, v55, v55
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v161.h, 0x7fff, v136.h, s15
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v136, -16, v122
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v78, s31, v78 :: v_dual_and_b32 v53, 1, v53
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_perm_b32 v73, v133, v74, v85
	v_perm_b32 v74, v133, v74, v86
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cndmask_b32_e64 v133, 0, v135, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v135, v122, v136, s4
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v146, v78, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v122.l, v131.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s17, v78, v78
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v79, v132, v79, 0x7fff
	v_add3_u32 v53, v55, v53, 0x7fff
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v78, v78, v146, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v52.l, v133.h
	v_and_b32_e32 v55, 1, v122
	v_mov_b16_e64 v122.l, v130.h
	v_cndmask_b16 v78.l, 0x7fff, v138.h, s12
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v162.h, 0x7fff, v78.h, s17
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v132.l, 0x7fff, v79.h, s10
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v79, v135
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v78.h, 0x7fff, v53.h, s5
	v_and_b32_e32 v52, 1, v52
	v_and_b32_e32 v53, 1, v122
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v122.l, 4, v129.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s4, v133, v133
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v79, v79, v54
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_store_b128 v128, v[75:78]
	v_add3_u32 v52, v133, v52, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v75, -16, v122
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s8, v130, v130
	v_cndmask_b32_e64 v76, 0, v79, s1
	v_add3_u32 v53, v130, v53, 0x7fff
	v_cndmask_b16 v132.h, 0x7fff, v52.h, s4
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v52, v122, v75, s3
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v122.l, v56.h
	v_mov_b16_e32 v51.l, v76.h
	v_cmp_o_f32_e64 s3, v76, v76
	v_cndmask_b16 v134.l, 0x7fff, v53.h, s8
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v52, v52
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v53, 1, v122
	v_and_b32_e32 v51, 1, v51
	v_cmp_o_f32_e64 s9, v131, v131
	v_cmp_o_f32_e64 s7, v56, v56
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v52, v52, v54
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v55, v131, v55, 0x7fff
	v_add3_u32 v51, v76, v51, 0x7fff
	v_add3_u32 v53, v56, v53, 0x7fff
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v144, v137, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v52, 0, v52, s1
	v_cndmask_b16 v133.l, 0x7fff, v55.h, s9
	v_cndmask_b16 v133.h, 0x7fff, v51.h, s3
	v_cndmask_b16 v135.l, 0x7fff, v53.h, s7
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s16, v137, v137
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v50.l, v52.h
	v_cmp_o_f32_e64 s3, v52, v52
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v137, v137, v144, 0x7fff
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v50, 1, v50
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v162.l, 0x7fff, v137.h, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v50, v52, v50, 0x7fff
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v51, v162, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v135.h, 0x7fff, v50.h, s3
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v50, v161, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v77, v51, v162, v85
	v_perm_b32 v78, v51, v162, v86
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s3, s33, 16
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_store_b128 v128, v[132:135] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v136, v0 offset:1824
	ds_load_u16_d16 v139, v0 offset:576
	ds_load_u16_d16 v147, v0 offset:512
	ds_load_u16_d16 v130, v0 offset:288
	ds_load_u16_d16 v155, v0 offset:608
	ds_load_u16_d16 v154, v0 offset:352
	ds_load_u16_d16 v148, v0 offset:768
	ds_load_u16_d16 v140, v0 offset:832
	ds_load_u16_d16 v149, v0 offset:1024
	ds_load_u16_d16 v132, v0 offset:800
	ds_load_u16_d16 v141, v0 offset:1088
	ds_load_u16_d16 v150, v0 offset:1280
	ds_load_u16_d16 v133, v0 offset:1056
	ds_load_u16_d16 v142, v0 offset:1344
	ds_load_u16_d16 v151, v0 offset:1536
	ds_load_u16_d16 v134, v0 offset:1312
	ds_load_u16_d16 v143, v0 offset:1600
	ds_load_u16_d16 v152, v0 offset:1792
	ds_load_u16_d16 v135, v0 offset:1568
	ds_load_u16_d16 v144, v0 offset:1856
	ds_load_u16_d16 v145, v0
	ds_load_u16_d16 v129, v0 offset:32
	ds_load_u16_d16 v146, v0 offset:256
	ds_load_u16_d16 v137, v0 offset:64
	ds_load_u16_d16 v138, v0 offset:320
	ds_load_u16_d16 v131, v0 offset:544
	ds_load_u16_d16 v153, v0 offset:96
	ds_load_u16_d16 v156, v0 offset:864
	ds_load_u16_d16 v157, v0 offset:1120
	ds_load_u16_d16 v158, v0 offset:1376
	ds_load_u16_d16 v159, v0 offset:1632
	ds_load_u16_d16 v160, v0 offset:1888
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v154, v0 offset:480
	ds_load_u16_d16_hi v139, v0 offset:704
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v148, v0 offset:896
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v140, v0 offset:960
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v149, v0 offset:1152
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v141, v0 offset:1216
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v150, v0 offset:1408
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v142, v0 offset:1472
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v151, v0 offset:1664
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v143, v0 offset:1728
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v152, v0 offset:1920
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v144, v0 offset:1984
	ds_load_u16_d16_hi v147, v0 offset:640
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v146, v0 offset:384
	ds_load_u16_d16_hi v145, v0 offset:128
	ds_load_u16_d16_hi v129, v0 offset:160
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v137, v0 offset:192
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v153, v0 offset:224
	ds_load_u16_d16_hi v130, v0 offset:416
	ds_load_u16_d16_hi v138, v0 offset:448
	ds_load_u16_d16_hi v131, v0 offset:672
	ds_load_u16_d16_hi v155, v0 offset:736
	ds_load_u16_d16_hi v132, v0 offset:928
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v156, v0 offset:992
	ds_load_u16_d16_hi v133, v0 offset:1184
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v157, v0 offset:1248
	ds_load_u16_d16_hi v134, v0 offset:1440
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v158, v0 offset:1504
	ds_load_u16_d16_hi v135, v0 offset:1696
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v159, v0 offset:1760
	ds_load_u16_d16_hi v136, v0 offset:1952
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v160, v0 offset:2016
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v75, v50, v161, v85
	v_perm_b32 v76, v50, v161, v86
	v_permlanex16_b32 v50, v80, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmpk_lt_u32 s33, 0x7f0
	s_mov_b32 s33, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v79, v50, v80, v85
	v_perm_b32 v80, v50, v80, v86
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[145:152], v[73:80], v[65:72]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[137:144], v[73:80], v[41:48]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[129:136], v[73:80], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[153:160], v[73:80], v[33:40]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_scc1 .LBB0_3
; %bb.4:
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s28, v98
	s_mul_i32 s4, s28, s26
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s28, v101
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 16, v101
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s0
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, s4, v0
	v_add_nc_u32_e32 v0, v0, v101
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 32, v101
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s28, v4
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v2, 48, v101
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v5, v101, 2
	v_add_lshl_u32 v7, v5, v104, 2
	v_add_lshl_u32 v8, v5, v103, 2
	v_add_lshl_u32 v9, v5, v108, 2
	v_add_lshl_u32 v10, v5, v107, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	s_clause 0x2
	buffer_store_b32 v65, v6, s[24:27], 0 offen
	buffer_store_b32 v66, v7, s[24:27], 0 offen
	buffer_store_b32 v67, v8, s[24:27], 0 offen
	v_add_lshl_u32 v6, v5, v102, 2
	v_add_lshl_u32 v7, v5, v110, 2
	v_add_lshl_u32 v8, v5, v109, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_add_lshl_u32 v4, v5, v4, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_clause 0x4
	buffer_store_b32 v68, v6, s[24:27], 0 offen
	buffer_store_b32 v69, v7, s[24:27], 0 offen
	buffer_store_b32 v70, v8, s[24:27], 0 offen
	buffer_store_b32 v71, v9, s[24:27], 0 offen
	buffer_store_b32 v72, v10, s[24:27], 0 offen
	v_add_nc_u32_e32 v6, 0x48, v0
	v_add_nc_u32_e32 v7, 0x50, v0
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
	buffer_store_b32 v41, v3, s[24:27], 0 offen
	v_add_nc_u32_e32 v3, 0x90, v0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_nc_u32_e32 v6, 0x98, v0
	v_add_nc_u32_e32 v7, 0xa0, v0
	v_add_nc_u32_e32 v8, 0xa8, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	buffer_store_b32 v42, v4, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s0
	v_cndmask_b32_e64 v6, 0x80000000, v7, s0
	v_cndmask_b32_e64 v7, 0x80000000, v8, s0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v1, 62, v105
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s28, v2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v43, v3, s[24:27], 0 offen
	v_add_nc_u32_e32 v3, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v44, v4, s[24:27], 0 offen
	buffer_store_b32 v45, v6, s[24:27], 0 offen
	buffer_store_b32 v46, v7, s[24:27], 0 offen
	v_add_nc_u32_e32 v4, 0xb8, v0
	v_add_lshl_u32 v2, v5, v2, 2
	v_add_nc_u32_e32 v6, 0xc8, v0
	v_add_nc_u32_e32 v7, 0xd0, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v1, v5, v1, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b32 v47, v3, s[24:27], 0 offen
	buffer_store_b32 v48, v4, s[24:27], 0 offen
	buffer_store_b32 v33, v2, s[24:27], 0 offen
	buffer_store_b32 v34, v6, s[24:27], 0 offen
	buffer_store_b32 v35, v7, s[24:27], 0 offen
	v_add_nc_u32_e32 v2, 0xd8, v0
	v_add_nc_u32_e32 v3, 0xe0, v0
	v_add_nc_u32_e32 v4, 0xe8, v0
	v_add_nc_u32_e32 v0, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
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
.Ltmp77:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 165
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 165
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8504
; TotalNumSgprs: 46
; NumVgprs: 165
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 165
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     165
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
