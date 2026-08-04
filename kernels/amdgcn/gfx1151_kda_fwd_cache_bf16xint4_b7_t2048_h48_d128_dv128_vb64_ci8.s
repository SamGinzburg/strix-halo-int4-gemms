	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8                          ; -- Begin function amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8
	.p2align	8
	.type	amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8,@function
amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8:                                 ; @amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "kda_gluon.py"
	.loc	1 77 0                          ; kda_gluon.py:77:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s47, s[0:1], 0x70
	s_load_b32 s46, s[0:1], 0x68
	s_load_b32 s21, s[0:1], 0x80
	s_load_b32 s50, s[0:1], 0x78
.Ltmp0:
	.loc	1 130 27 prologue_end           ; kda_gluon.py:130:27
	v_lshrrev_b32_e32 v2, 4, v0
	s_add_u32 s4, s0, 0x58
	s_addc_u32 s6, s1, 0
	s_add_u32 s8, s0, 0x60
	s_addc_u32 s10, s1, 0
	.loc	1 123 21                        ; kda_gluon.py:123:21
	s_lshl_b32 s51, s3, 6
	.loc	1 130 27                        ; kda_gluon.py:130:27
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	v_or_b32_e32 v6, 64, v2
	v_or_b32_e32 v7, 0x50, v2
	v_or_b32_e32 v8, 0x60, v2
	v_or_b32_e32 v9, 0x70, v2
	s_mov_b32 s22, 0
	.loc	1 154 17                        ; kda_gluon.py:154:17
	s_add_i32 s12, s2, 0xffffff01
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_mov_b32 s23, s22
	.loc	1 136 24                        ; kda_gluon.py:136:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s3, s47, v2
	v_cmp_gt_i32_e64 s5, s47, v3
	v_cmp_gt_i32_e64 s7, s47, v4
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mul_lo_u32 v2, s50, v2
	.loc	1 136 24                        ; kda_gluon.py:136:24
	v_cmp_gt_i32_e64 s9, s47, v5
	v_cmp_gt_i32_e64 s11, s47, v6
	v_cmp_gt_i32_e64 s13, s47, v7
	v_cmp_gt_i32_e64 s15, s47, v8
	v_cmp_gt_i32_e32 vcc_lo, s47, v9
	.loc	1 131 51                        ; kda_gluon.py:131:51
	v_and_b32_e32 v1, 15, v0
	.loc	1 147 17                        ; kda_gluon.py:147:17
	s_cmpk_lt_i32 s2, 0xff
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mad_u64_u32 v[3:4], null, s50, 12, v[2:3]
	.loc	1 146 26                        ; kda_gluon.py:146:26
	s_cselect_b32 s19, s6, s10
	.loc	1 131 27                        ; kda_gluon.py:131:27
	v_lshl_or_b32 v30, v1, 1, s51
	.loc	1 146 26                        ; kda_gluon.py:146:26
	s_cselect_b32 s18, s4, s8
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_lshl_add_u32 v32, s50, 2, v2
	.loc	1 146 26                        ; kda_gluon.py:146:26
	s_load_b64 s[36:37], s[18:19], 0x0
	.loc	1 151 32                        ; kda_gluon.py:151:32
	s_cselect_b32 s4, s2, s12
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mad_u64_u32 v[4:5], null, s50, 20, v[2:3]
	v_mad_u64_u32 v[5:6], null, s50, 24, v[2:3]
	v_mad_u64_u32 v[6:7], null, s50, 28, v[2:3]
	v_mad_u64_u32 v[7:8], null, s50, 36, v[2:3]
	v_mad_u64_u32 v[8:9], null, s50, 40, v[2:3]
	v_mad_u64_u32 v[9:10], null, s50, 44, v[2:3]
	v_mad_u64_u32 v[10:11], null, s50, 48, v[2:3]
	v_mad_u64_u32 v[11:12], null, s50, 52, v[2:3]
	v_mad_u64_u32 v[12:13], null, s50, 56, v[2:3]
	v_mad_u64_u32 v[13:14], null, s50, 60, v[2:3]
	v_mad_u64_u32 v[14:15], null, 0x44, s50, v[2:3]
	v_mad_u64_u32 v[15:16], null, 0x48, s50, v[2:3]
	v_mad_u64_u32 v[16:17], null, 0x4c, s50, v[2:3]
	v_mad_u64_u32 v[17:18], null, 0x50, s50, v[2:3]
	v_mad_u64_u32 v[18:19], null, 0x54, s50, v[2:3]
	.loc	1 131 27                        ; kda_gluon.py:131:27
	v_or_b32_e32 v31, 32, v30
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mad_u64_u32 v[19:20], null, 0x58, s50, v[2:3]
	v_mad_u64_u32 v[20:21], null, 0x5c, s50, v[2:3]
	v_mad_u64_u32 v[21:22], null, 0x60, s50, v[2:3]
	v_mad_u64_u32 v[22:23], null, 0x64, s50, v[2:3]
	v_mad_u64_u32 v[23:24], null, 0x68, s50, v[2:3]
	v_add_nc_u32_e32 v230, v2, v30
	v_mad_u64_u32 v[24:25], null, 0x6c, s50, v[2:3]
	v_add_nc_u32_e32 v161, v2, v31
	.loc	1 160 13                        ; kda_gluon.py:160:13
	s_mul_i32 s21, s21, s4
	s_mul_i32 s33, s50, s47
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mad_u64_u32 v[25:26], null, 0x70, s50, v[2:3]
	v_add_nc_u32_e32 v162, v32, v30
	.loc	1 137 24                        ; kda_gluon.py:137:24
	v_cmp_gt_i32_e64 s16, s50, v30
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mad_u64_u32 v[26:27], null, 0x74, s50, v[2:3]
	.loc	1 160 13                        ; kda_gluon.py:160:13
	s_mul_i32 s18, s33, s21
	.loc	1 137 24                        ; kda_gluon.py:137:24
	v_cmp_gt_i32_e64 s17, s50, v31
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mad_u64_u32 v[27:28], null, 0x78, s50, v[2:3]
	v_lshl_add_u32 v33, s50, 3, v2
	v_lshl_add_u32 v34, s50, 4, v2
	v_lshl_add_u32 v35, s50, 5, v2
	v_lshl_add_u32 v36, s50, 6, v2
	v_mad_u64_u32 v[28:29], null, 0x7c, s50, v[2:3]
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v2, s18, v230, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v170, v4, v30
	v_add_nc_u32_e32 v171, v4, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v4, s18, v161, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v172, v5, v30
	v_add_nc_u32_e32 v173, v5, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v5, s18, v162, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s20, s3, s16
	s_and_b32 s3, s3, s17
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v166, v3, v30
	v_add_nc_u32_e32 v167, v3, v31
	v_add_nc_u32_e32 v174, v6, v30
	v_add_nc_u32_e32 v175, v6, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v2, s20
	v_dual_mov_b32 v2, s22 :: v_dual_add_nc_u32 v163, v32, v31
	v_dual_mov_b32 v3, s23 :: v_dual_add_nc_u32 v164, v33, v30
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v165, v33, v31
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s43, 0x31027000
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s20
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s38, s42
	s_mov_b32 s39, s43
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v168, v34, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	v_add_lshl_u32 v6, s18, v163, 2
	s_clause 0x1
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v164, 2
	v_add_lshl_u32 v5, s18, v165, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v235, v7, v30
	v_add_nc_u32_e32 v225, v7, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_add_lshl_u32 v7, s18, v166, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s20
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v169, v34, v31
	v_add_nc_u32_e32 v180, v8, v30
	v_add_nc_u32_e32 v181, v8, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v8, s18, v167, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v7, s20
	s_clause 0x1
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v168, 2
	v_cndmask_b32_e64 v7, 0x80000000, v8, s3
	v_add_lshl_u32 v5, s18, v169, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s4, s5, s16
	s_and_b32 s5, s5, s17
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x1
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	v_add_lshl_u32 v6, s18, v170, 2
	v_add_lshl_u32 v7, s18, v171, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v176, v35, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s4
	v_add_lshl_u32 v6, s18, v172, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v173, 2
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s4
	v_add_lshl_u32 v6, s18, v174, 2
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	v_add_lshl_u32 v7, s18, v175, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v208, v35, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v176, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v7, s5
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s6, s7, s16
	s_and_b32 s7, s7, s17
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	v_add_lshl_u32 v6, s18, v208, 2
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v235, 2
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_add_lshl_u32 v7, s18, v180, 2
	v_cndmask_b32_e64 v4, 0x80000000, v6, s7
	v_add_lshl_u32 v6, s18, v225, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v182, v9, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v8, s18, v181, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v183, v9, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s7
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v184, v10, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v7, s6
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v185, v10, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v8, s7
	v_add_lshl_u32 v7, s18, v182, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v186, v11, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v183, 2
	s_clause 0x1
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	v_add_lshl_u32 v6, s18, v184, 2
	v_cndmask_b32_e64 v5, 0x80000000, v7, s6
	v_add_lshl_u32 v7, s18, v185, 2
	v_add_lshl_u32 v8, s18, v186, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s8, s9, s16
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v187, v11, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s7
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s9, s9, s17
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s8
	v_cndmask_b32_e64 v7, 0x80000000, v7, s9
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v188, v12, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v8, s8
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v189, v12, v31
	v_add_nc_u32_e32 v191, v13, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x2
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v187, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v190, v13, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v188, 2
	v_add_lshl_u32 v6, s18, v189, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s9
	v_add_lshl_u32 v8, s18, v191, 2
	v_add_lshl_u32 v7, s18, v190, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v209, v36, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s8
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v210, v36, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s9
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v8, s9
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v194, v14, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s8
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v14, v14, v31
	v_add_nc_u32_e32 v213, v15, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x2
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v209, 2
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v210, 2
	v_add_lshl_u32 v6, s18, v194, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s10, s11, s16
	s_and_b32 s11, s11, s17
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s10
	v_add_lshl_u32 v7, s18, v14, 2
	v_add_lshl_u32 v8, s18, v213, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s11
	v_cndmask_b32_e64 v6, 0x80000000, v6, s10
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v15, v15, v31
	v_add_nc_u32_e32 v215, v16, v30
	v_add_nc_u32_e32 v217, v17, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s11
	s_clause 0x2
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v8, s10
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v216, v16, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v5, s18, v15, 2
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_add_lshl_u32 v6, s18, v215, 2
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v217, 2
	v_add_lshl_u32 v7, s18, v216, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s12, s13, s16
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v218, v17, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s11
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v219, v18, v30
	v_add_nc_u32_e32 v18, v18, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s10
	v_cndmask_b32_e64 v4, 0x80000000, v4, s12
	v_cndmask_b32_e64 v7, 0x80000000, v7, s11
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v212, v19, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x2
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v218, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v222, v19, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v219, 2
	v_add_lshl_u32 v6, s18, v18, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s13, s13, s17
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v7, s18, v212, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s13
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v223, v20, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s12
	v_add_lshl_u32 v8, s18, v222, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s13
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v224, v20, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v7, s12
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v201, v21, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v8, s13
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	v_add_lshl_u32 v6, s18, v223, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v228, v21, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v224, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v229, v22, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v201, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s12
	v_add_lshl_u32 v7, s18, v228, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s14, s15, s16
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v22, v22, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s13
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s15, s15, s17
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v233, v23, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s14
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	v_add_lshl_u32 v6, s18, v229, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v23, v23, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s15
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v231, v24, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x2
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v22, 2
	v_cndmask_b32_e64 v5, 0x80000000, v6, s14
	v_add_lshl_u32 v6, s18, v233, 2
	v_add_lshl_u32 v7, s18, v23, 2
	v_add_lshl_u32 v8, s18, v231, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v24, v24, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s15
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v205, v25, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v6, s14
	v_cndmask_b32_e64 v6, 0x80000000, v7, s15
	v_cndmask_b32_e64 v7, 0x80000000, v8, s14
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v25, v25, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v24, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v234, v26, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x2
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v205, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s16, vcc_lo, s16
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v26, v26, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s15
	v_add_lshl_u32 v6, s18, v25, 2
	v_add_lshl_u32 v7, s18, v234, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s16
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s17, vcc_lo, s17
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v211, v27, v30
	v_add_nc_u32_e32 v30, v28, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	s_clause 0x1
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v26, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v27, v27, v31
	v_add_nc_u32_e32 v214, v28, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s16
	s_clause 0x1
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v211, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s17
	v_add_lshl_u32 v7, s18, v30, 2
	v_add_lshl_u32 v6, s18, v27, 2
	v_add_lshl_u32 v8, s18, v214, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s16
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v7, s16
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	v_cndmask_b32_e64 v7, 0x80000000, v8, s17
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_cmp_lt_i32 s46, 1
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x3
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; kda_gluon.py:0:9
	s_clause 0x6
	s_load_b32 s54, s[0:1], 0x6c
	s_load_b32 s55, s[0:1], 0x84
	s_load_b32 s38, s[0:1], 0x7c
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b64 s[44:45], s[0:1], 0x48
	s_load_b64 s[22:23], s[0:1], 0x20
	s_load_b64 s[34:35], s[0:1], 0x38
	.loc	1 118 23 is_stmt 1              ; kda_gluon.py:118:23
	s_abs_i32 s39, s2
	v_dual_mov_b32 v35, 0 :: v_dual_lshlrev_b32 v8, 5, v0
	v_dual_mov_b32 v37, 0 :: v_dual_lshlrev_b32 v10, 4, v1
	v_lshlrev_b32_e32 v13, 3, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v1, 0x60, v8
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v2, 48, v0
	.loc	1 123 21                        ; kda_gluon.py:123:21
	v_or_b32_e32 v4, s51, v0
	.loc	1 122 21                        ; kda_gluon.py:122:21
	v_or_b32_e32 v3, 64, v0
	v_add_nc_u32_e32 v1, 0, v1
	.loc	1 128 18                        ; kda_gluon.py:128:18
	v_cmp_gt_i32_e64 s0, s47, v0
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s41, s54
	s_xor_b32 s49, s2, s54
	s_cvt_f32_u32 s1, s41
	s_ashr_i32 s57, s49, 31
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_mul_i32 s52, s54, s46
	v_and_b32_e32 v5, 32, v0
	.loc	1 118 23                        ; kda_gluon.py:118:23
	v_rcp_iflag_f32_e32 v11, s1
	v_bfe_i32 v6, v0, 5, 1
	v_lshlrev_b32_e32 v31, 2, v0
	v_and_b32_e32 v7, 1, v0
	v_lshlrev_b32_e32 v9, 1, v0
	v_bfe_i32 v12, v0, 4, 1
	.loc	1 128 18                        ; kda_gluon.py:128:18
	v_cmp_gt_i32_e64 s1, s47, v3
	v_dual_mov_b32 v39, 0 :: v_dual_and_b32 v6, 0x140, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v8, 0x140, v12
	.loc	1 118 23                        ; kda_gluon.py:118:23
	v_readfirstlane_b32 s40, v11
	v_lshlrev_b32_e32 v11, 1, v2
	v_lshl_add_u32 v2, v2, 3, v1
	v_xor_b32_e32 v6, v6, v10
	v_xor_b32_e32 v8, v8, v10
	s_mul_f32 s40, s40, 0x4f7ffffe
	.loc	1 129 18                        ; kda_gluon.py:129:18
	v_cmp_gt_i32_e64 s18, s50, v4
	v_mov_b32_e32 v141, 0
	v_mov_b32_e32 v143, 0
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_cvt_u32_f32 s48, s40
	s_sub_i32 s40, 0, s41
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v147, 0
	s_mul_i32 s53, s40, s48
	s_mov_b32 s40, s24
	s_mul_hi_u32 s53, s48, s53
	s_mov_b32 s24, s26
	s_add_i32 s26, s48, s53
	v_mov_b32_e32 v149, 0
	s_mul_hi_u32 s26, s39, s26
	v_mov_b32_e32 v151, 0
	s_mul_i32 s53, s26, s41
	s_add_i32 s49, s26, 1
	s_sub_i32 s39, s39, s53
	v_mov_b32_e32 v153, 0
	s_sub_i32 s53, s39, s41
	s_cmp_ge_u32 s39, s41
	v_mov_b32_e32 v155, 0
	s_cselect_b32 s26, s49, s26
	s_cselect_b32 s39, s53, s39
	s_add_i32 s49, s26, 1
	s_cmp_ge_u32 s39, s41
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_mul_i32 s39, s47, s54
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_cselect_b32 s26, s49, s26
	s_and_b32 s41, s25, 0xffff
	s_xor_b32 s26, s26, s57
	s_and_b32 s25, s27, 0xffff
	s_lshr_b32 s27, s51, 31
	s_sub_i32 s26, s26, s57
	v_add_nc_u32_e32 v1, s27, v4
	.loc	1 119 22                        ; kda_gluon.py:119:22
	s_mul_i32 s27, s26, s54
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_mul_i32 s26, s52, s26
	.loc	1 119 22                        ; kda_gluon.py:119:22
	s_sub_i32 s2, s2, s27
	v_mov_b32_e32 v157, 0
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_add_i32 s52, s26, s2
	v_mov_b32_e32 v159, 0
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_mul_i32 s2, s50, s52
	s_mul_i32 s47, s47, s52
	s_add_i32 s2, s2, s51
	s_mov_b32 s48, s30
	v_add_lshl_u32 v226, s2, v0, 1
	v_mov_b32_e32 v0, 0
	v_lshrrev_b32_e32 v3, 3, v5
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v45, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v68, v0
	v_mov_b32_e32 v52, v0
	v_ashrrev_i32_e32 v1, 1, v1
	v_dual_mov_b32 v34, v0 :: v_dual_and_b32 v5, 4, v31
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[220:221], null, s38, s52, v[1:2]
	v_dual_mov_b32 v54, v0 :: v_dual_add_nc_u32 v1, 0, v3
	v_cmp_eq_u32_e64 s19, 0, v7
	v_dual_mov_b32 v38, v0 :: v_dual_and_b32 v7, 24, v9
	v_mov_b32_e32 v46, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:36
	scratch_store_b32 off, v31, off offset:32
	v_dual_mov_b32 v56, v0 :: v_dual_add_nc_u32 v1, 0, v5
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v40, v0
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_dual_mov_b32 v62, v0 :: v_dual_add_nc_u32 v1, v2, v7
	v_lshl_add_u32 v227, s47, 1, v9
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v64, v0
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v48, v0 :: v_dual_add_nc_u32 v1, 0, v6
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v70, v0
	v_mov_b32_e32 v50, v0
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v8
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v232, 0, v11
	v_dual_mov_b32 v72, v0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v74, v0
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v13
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v76, v0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v78, v0
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v177, off, off offset:48
	scratch_load_b32 v178, off, off offset:56
	scratch_load_b32 v179, off, off offset:64
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v80, v0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v82, v0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v84, v0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v86, v0
	v_dual_mov_b32 v66, v0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v88, v0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v90, v0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v92, v0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v94, v0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v96, v0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v98, v0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v100, v0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v102, v0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v104, v0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v106, v0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v108, v0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v110, v0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v112, v0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v114, v0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v116, v0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v118, v0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v120, v0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v122, v0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v124, v0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v126, v0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v128, v0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v130, v0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v132, v0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v134, v0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v136, v0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v138, v0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v140, v0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v142, v0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v144, v0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v146, v0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v148, v0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v150, v0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v152, v0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v154, v0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v156, v0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v158, v0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v160, v0
	v_lshl_add_u32 v236, s47, 2, v31
	s_mul_i32 s30, s50, s54
	s_mul_i32 s56, s38, s54
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s49, s31, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_lshl_b32 s57, s30, 1
	s_lshl_b32 s58, s39, 1
	s_lshl_b32 s59, s39, 2
	s_sub_i32 s60, 0, s46
	s_mov_b32 s61, 8
	s_mov_b32 s62, 0x76543210
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v15, off
	scratch_store_b32 off, v14, off offset:4
	scratch_store_b32 off, v25, off offset:8
	scratch_store_b32 off, v26, off offset:12
	scratch_store_b32 off, v24, off offset:16
	scratch_store_b32 off, v27, off offset:20
	scratch_store_b32 off, v30, off offset:24
	scratch_store_b32 off, v23, off offset:28
	scratch_store_b32 off, v22, off offset:52
	scratch_store_b32 off, v194, off offset:60
	scratch_store_b32 off, v208, off offset:68
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 229 21                        ; kda_gluon.py:229:21
	v_add_nc_u32_e32 v0, 0x80, v227
	v_cndmask_b32_e64 v1, 0x80000000, v227, s0
	.loc	1 235 21                        ; kda_gluon.py:235:21
	s_mov_b32 s26, s42
	s_mov_b32 s27, s43
	.loc	1 274 28                        ; kda_gluon.py:274:28
	s_mov_b32 s50, s42
	.loc	1 229 21                        ; kda_gluon.py:229:21
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 274 28                        ; kda_gluon.py:274:28
	s_mov_b32 s51, s43
	.loc	1 264 58                        ; kda_gluon.py:264:58
	s_ashr_i32 s53, s52, 31
	.loc	1 248 31                        ; kda_gluon.py:248:31
	s_mov_b32 s30, s42
	.loc	1 229 21                        ; kda_gluon.py:229:21
	s_clause 0x1
	buffer_load_u16 v2, v1, s[40:43], 0 offen
	buffer_load_u16 v3, v0, s[40:43], 0 offen
	.loc	1 235 21                        ; kda_gluon.py:235:21
	s_clause 0x1
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	buffer_load_u16 v0, v0, s[24:27], 0 offen
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp2:
	.loc	1 248 31                        ; kda_gluon.py:248:31
	s_mov_b32 s31, s43
	v_dual_mov_b32 v196, v225 :: v_dual_mov_b32 v197, v180
	v_mov_b32_e32 v199, v182
	v_dual_mov_b32 v203, v186 :: v_dual_mov_b32 v192, v175
	.loc	1 303 17                        ; kda_gluon.py:303:17
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	.loc	1 311 21                        ; kda_gluon.py:311:21
	v_add_nc_u32_e32 v227, s58, v227
	v_mov_b32_e32 v221, v18
	v_dual_mov_b32 v195, v235 :: v_dual_mov_b32 v194, v162
	v_mov_b32_e32 v180, v163
	v_mov_b32_e32 v198, v181
	v_mov_b32_e32 v182, v165
	v_mov_b32_e32 v200, v183
	v_mov_b32_e32 v186, v169
	v_mov_b32_e32 v32, v205
	v_mov_b32_e32 v206, v189
	v_mov_b32_e32 v202, v185
	v_mov_b32_e32 v204, v187
	v_dual_mov_b32 v208, v191 :: v_dual_mov_b32 v191, v174
	.loc	1 229 21                        ; kda_gluon.py:229:21
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v2
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 235 21                        ; kda_gluon.py:235:21
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 229 21                        ; kda_gluon.py:229:21
	v_cndmask_b32_e64 v237, 0, v2, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v238, 0, v3, s1
	.loc	1 242 41                        ; kda_gluon.py:242:41
	v_mul_f32_e32 v2, v238, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_fmac_f32_e32 v2, v237, v237
	v_add_f32_dpp v2, v2, v2 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v2, v2, v2 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v2, v2, v2 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v2, v2, v2 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_permlanex16_b32 v3, v2, -1, -1 op_sel:[1,0]
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v2, v2, v3 :: v_dual_lshlrev_b32 v3, 16, v0
.Ltmp6:
	.loc	1 235 21                        ; kda_gluon.py:235:21
	v_cndmask_b32_e64 v0, 0, v1, s0
.Ltmp7:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_readlane_b32 s2, v2, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	1 235 21                        ; kda_gluon.py:235:21
	v_cndmask_b32_e64 v1, 0, v3, s1
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_dual_mov_b32 v2, s2 :: v_dual_mul_f32 v3, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_fmac_f32_e32 v3, v0, v0
	v_add_f32_dpp v3, v3, v3 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v3, v3, v3 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v3, v3, v3 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v3, v3, v3 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_permlanex16_b32 v4, v3, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp13:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_readlane_b32 s26, v3, 31
	scratch_load_b32 v3, off, off offset:36 ; 4-byte Folded Reload
.Ltmp14:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	s_waitcnt vmcnt(0)
	ds_store_b32 v3, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v5, off, off offset:40 ; 4-byte Folded Reload
.Ltmp15:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_mov_b32_e32 v2, s26
.Ltmp16:
	.loc	1 264 58 is_stmt 1              ; kda_gluon.py:264:58
	s_lshl_b64 s[26:27], s[52:53], 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_u32 s26, s34, s26
	s_addc_u32 s27, s35, s27
	.loc	1 281 34                        ; kda_gluon.py:281:34
	s_lshl_b64 s[38:39], s[52:53], 2
	s_add_u32 s38, s22, s38
	s_addc_u32 s39, s23, s39
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	s_waitcnt vmcnt(0)
	ds_load_b32 v10, v5
.Ltmp18:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v3, v2
.Ltmp19:
	.loc	1 274 28 is_stmt 1              ; kda_gluon.py:274:28
	v_add_nc_u32_e32 v2, 0x100, v236
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v5
.Ltmp21:
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	buffer_load_b32 v2, v2, s[48:51], 0 offen
	.loc	1 280 21                        ; kda_gluon.py:280:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, 0x3fb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v3, 0x80000000, v236, s0
	.loc	1 311 21                        ; kda_gluon.py:311:21
	v_add_nc_u32_e32 v236, s59, v236
	.loc	1 274 28                        ; kda_gluon.py:274:28
	buffer_load_b32 v3, v3, s[48:51], 0 offen
	.loc	1 280 21                        ; kda_gluon.py:280:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v4, 0x3fb8aa3b, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v4
	v_cndmask_b32_e64 v4, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, 0x3fb8aa3b, v3
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v3, 0x3fb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v2, v4
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, s2
	.loc	1 310 32                        ; kda_gluon.py:310:32
	s_add_i32 s2, s61, -7
	.loc	1 280 21                        ; kda_gluon.py:280:21
	v_exp_f32_e32 v3, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v4
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v2, 1.0, v2, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 280 21                        ; kda_gluon.py:280:21
	v_ldexp_f32 v3, v3, v4
	.loc	1 248 31                        ; kda_gluon.py:248:31
	v_cndmask_b32_e64 v4, 0x80000000, v220, s18
	.loc	1 311 21                        ; kda_gluon.py:311:21
	v_add_nc_u32_e32 v220, s56, v220
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v3, 1.0, v3, s1
	.loc	1 248 31                        ; kda_gluon.py:248:31
	buffer_load_u8 v244, v4, s[28:31], 0 offen
	v_mov_b32_e32 v4, 0
	.loc	1 264 21                        ; kda_gluon.py:264:21
	s_clause 0x1
	global_load_u16 v239, v4, s[26:27]
	global_load_b32 v243, v4, s[38:39]
	.loc	1 282 27                        ; kda_gluon.py:282:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v207, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 310 32                        ; kda_gluon.py:310:32
	s_add_i32 s26, s60, s61
	s_and_b32 s2, s2, 7
	s_cselect_b32 s2, 0, -1
	.loc	1 311 21                        ; kda_gluon.py:311:21
	s_cmp_eq_u32 s26, 7
	.loc	1 327 21                        ; kda_gluon.py:327:21
	s_mov_b32 s38, s42
	.loc	1 311 21                        ; kda_gluon.py:311:21
	s_cselect_b32 s26, -1, 0
	.loc	1 313 30                        ; kda_gluon.py:313:30
	s_ashr_i32 s27, s61, 31
	.loc	1 327 21                        ; kda_gluon.py:327:21
	s_mov_b32 s39, s43
	.loc	1 313 30                        ; kda_gluon.py:313:30
	s_lshr_b32 s30, s27, 29
	.loc	1 310 31                        ; kda_gluon.py:310:31
	s_or_b32 s27, s26, s2
	.loc	1 313 30                        ; kda_gluon.py:313:30
	s_add_i32 s2, s61, s30
	.loc	1 311 21                        ; kda_gluon.py:311:21
	s_add_i32 s61, s61, 1
	.loc	1 313 30                        ; kda_gluon.py:313:30
	s_ashr_i32 s2, s2, 3
	.loc	1 333 13                        ; kda_gluon.py:333:13
	s_add_i32 s52, s52, s54
	.loc	1 315 21                        ; kda_gluon.py:315:21
	s_add_i32 s2, s2, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	s_mul_i32 s26, s33, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s3, s27
	.loc	1 248 31                        ; kda_gluon.py:248:31
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v244.l, 0, v244.l, s18
	.loc	1 256 21                        ; kda_gluon.py:256:21
	v_and_b16 v244.h, v244.l, 15
	.loc	1 257 22                        ; kda_gluon.py:257:22
	v_lshrrev_b16 v244.l, 4, v244.l
	.loc	1 282 27                        ; kda_gluon.py:282:27
	s_waitcnt vmcnt(0)
	ds_store_b64 v207, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v232
	ds_load_b128 v[6:9], v232 offset:16
	.loc	1 284 21                        ; kda_gluon.py:284:21
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v33, v33, v2
	v_dual_mul_f32 v34, v34, v2 :: v_dual_mul_f32 v39, v39, v4
	v_dual_mul_f32 v35, v35, v2 :: v_dual_mul_f32 v38, v38, v4
	v_dual_mul_f32 v36, v36, v2 :: v_dual_mul_f32 v99, v99, v3
	v_mul_f32_e32 v37, v37, v4
	v_dual_mul_f32 v40, v40, v4 :: v_dual_mul_f32 v101, v101, v5
	v_mul_f32_e32 v97, v97, v3
	v_dual_mul_f32 v98, v98, v3 :: v_dual_mul_f32 v103, v103, v5
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v100, v100, v3 :: v_dual_mul_f32 v41, v41, v6
	v_dual_mul_f32 v102, v102, v5 :: v_dual_mul_f32 v43, v43, v6
	v_dual_mul_f32 v104, v104, v5 :: v_dual_mul_f32 v45, v45, v8
	v_dual_mul_f32 v42, v42, v6 :: v_dual_mul_f32 v47, v47, v8
	v_dual_mul_f32 v44, v44, v6 :: v_dual_mul_f32 v105, v105, v7
	v_dual_mul_f32 v46, v46, v8 :: v_dual_mul_f32 v107, v107, v7
	v_dual_mul_f32 v48, v48, v8 :: v_dual_mul_f32 v109, v109, v9
	v_dual_mul_f32 v106, v106, v7 :: v_dual_mul_f32 v111, v111, v9
	v_mul_f32_e32 v108, v108, v7
	v_mul_f32_e32 v110, v110, v9
	v_mul_f32_e32 v112, v112, v9
	.loc	1 282 27                        ; kda_gluon.py:282:27
	ds_load_b128 v[2:5], v232 offset:128
	ds_load_b128 v[6:9], v232 offset:144
	.loc	1 284 21                        ; kda_gluon.py:284:21
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v49, v49, v2
	v_dual_mul_f32 v50, v50, v2 :: v_dual_mul_f32 v55, v55, v4
	v_mul_f32_e32 v51, v51, v2
	v_dual_mul_f32 v52, v52, v2 :: v_dual_mul_f32 v113, v113, v3
	v_mul_f32_e32 v53, v53, v4
	v_dual_mul_f32 v54, v54, v4 :: v_dual_mul_f32 v115, v115, v3
	v_dual_mul_f32 v56, v56, v4 :: v_dual_mul_f32 v117, v117, v5
	v_dual_mul_f32 v114, v114, v3 :: v_dual_mul_f32 v119, v119, v5
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v116, v116, v3 :: v_dual_mul_f32 v57, v57, v6
	v_dual_mul_f32 v118, v118, v5 :: v_dual_mul_f32 v59, v59, v6
	v_dual_mul_f32 v120, v120, v5 :: v_dual_mul_f32 v61, v61, v8
	v_dual_mul_f32 v58, v58, v6 :: v_dual_mul_f32 v63, v63, v8
	v_dual_mul_f32 v60, v60, v6 :: v_dual_mul_f32 v121, v121, v7
	v_dual_mul_f32 v62, v62, v8 :: v_dual_mul_f32 v123, v123, v7
	v_dual_mul_f32 v64, v64, v8 :: v_dual_mul_f32 v125, v125, v9
	v_dual_mul_f32 v122, v122, v7 :: v_dual_mul_f32 v127, v127, v9
	v_mul_f32_e32 v124, v124, v7
	v_mul_f32_e32 v126, v126, v9
	v_mul_f32_e32 v128, v128, v9
	.loc	1 282 27                        ; kda_gluon.py:282:27
	ds_load_b128 v[2:5], v232 offset:256
	ds_load_b128 v[6:9], v232 offset:272
	.loc	1 284 21                        ; kda_gluon.py:284:21
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v65, v65, v2
	v_dual_mul_f32 v66, v66, v2 :: v_dual_mul_f32 v71, v71, v4
	v_mul_f32_e32 v67, v67, v2
	v_dual_mul_f32 v68, v68, v2 :: v_dual_mul_f32 v129, v129, v3
	v_mul_f32_e32 v69, v69, v4
	v_dual_mul_f32 v70, v70, v4 :: v_dual_mul_f32 v131, v131, v3
	v_dual_mul_f32 v72, v72, v4 :: v_dual_mul_f32 v133, v133, v5
	v_dual_mul_f32 v130, v130, v3 :: v_dual_mul_f32 v135, v135, v5
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v132, v132, v3 :: v_dual_mul_f32 v73, v73, v6
	v_dual_mul_f32 v134, v134, v5 :: v_dual_mul_f32 v75, v75, v6
	v_dual_mul_f32 v136, v136, v5 :: v_dual_mul_f32 v77, v77, v8
	v_dual_mul_f32 v74, v74, v6 :: v_dual_mul_f32 v79, v79, v8
	v_dual_mul_f32 v76, v76, v6 :: v_dual_mul_f32 v137, v137, v7
	v_dual_mul_f32 v78, v78, v8 :: v_dual_mul_f32 v139, v139, v7
	v_dual_mul_f32 v80, v80, v8 :: v_dual_mul_f32 v141, v141, v9
	v_dual_mul_f32 v138, v138, v7 :: v_dual_mul_f32 v143, v143, v9
	v_mul_f32_e32 v140, v140, v7
	v_mul_f32_e32 v142, v142, v9
	v_mul_f32_e32 v144, v144, v9
	.loc	1 282 27                        ; kda_gluon.py:282:27
	ds_load_b128 v[2:5], v232 offset:384
	ds_load_b128 v[6:9], v232 offset:400
	.loc	1 283 23                        ; kda_gluon.py:283:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_mul_f32_e32 v81, v81, v2
	v_dual_mul_f32 v82, v82, v2 :: v_dual_mul_f32 v87, v87, v4
	v_mul_f32_e32 v83, v83, v2
	v_dual_mul_f32 v84, v84, v2 :: v_dual_mul_f32 v145, v145, v3
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_mov_b32_e32 v2, v10
.Ltmp23:
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v86, v86, v4 :: v_dual_mul_f32 v147, v147, v3
	v_dual_mul_f32 v146, v146, v3 :: v_dual_mul_f32 v151, v151, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v148, v148, v3 :: v_dual_mul_f32 v89, v89, v6
	v_mul_f32_e32 v85, v85, v4
	v_dual_mul_f32 v88, v88, v4 :: v_dual_mul_f32 v149, v149, v5
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_e32 v2, v10, v2
.Ltmp27:
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v150, v150, v5 :: v_dual_mul_f32 v91, v91, v6
	v_dual_mul_f32 v152, v152, v5 :: v_dual_mul_f32 v93, v93, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 242 26                        ; kda_gluon.py:242:26
	v_sqrt_f32_e32 v2, v2
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v90, v90, v6 :: v_dual_mul_f32 v95, v95, v8
	v_dual_mul_f32 v92, v92, v6 :: v_dual_mul_f32 v153, v153, v7
	v_dual_mul_f32 v94, v94, v8 :: v_dual_mul_f32 v155, v155, v7
	v_dual_mul_f32 v154, v154, v7 :: v_dual_mul_f32 v159, v159, v9
	v_mul_f32_e32 v156, v156, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 244 25                        ; kda_gluon.py:244:25
	v_max_f32_e32 v240, 0x2b8cbccc, v2
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v96, v96, v8 :: v_dual_mul_f32 v157, v157, v9
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_scale_f32 v2, null, v240, v240, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v3, v2
	v_fma_f32 v4, -v2, v3, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v158, v158, v9 :: v_dual_fmac_f32 v3, v4, v3
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_scale_f32 v4, vcc_lo, v237, v240, v237
	v_mul_f32_e32 v5, v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v2, v5, v4
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v160, v160, v9 :: v_dual_fmac_f32 v5, v6, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_fma_f32 v2, -v2, v5, v4
	v_div_fmas_f32 v241, v2, v3, v5
	v_div_scale_f32 v2, null, v240, v240, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v3, v2
	v_fma_f32 v4, -v2, v3, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, v4, v3
	v_div_scale_f32 v4, vcc_lo, v238, v240, v238
	v_mul_f32_e32 v5, v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v2, v5, v4
	v_fmac_f32_e32 v5, v6, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v5, v4
	v_div_fmas_f32 v242, v2, v3, v5
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_mov_b32_e32 v2, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_e32 v2, v11, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp30:
	.loc	1 243 26                        ; kda_gluon.py:243:26
	v_sqrt_f32_e32 v2, v2
	.loc	1 245 25                        ; kda_gluon.py:245:25
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 245 21 is_stmt 0              ; kda_gluon.py:245:21
	v_div_scale_f32 v3, null, v2, v2, v0
	v_rcp_f32_e32 v4, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v3, v4, 1.0
	v_fmac_f32_e32 v4, v5, v4
	v_div_scale_f32 v5, vcc_lo, v0, v2, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v6, v5, v4
	v_fma_f32 v7, -v3, v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v6, v7, v4
	v_fma_f32 v3, -v3, v6, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v3, v3, v4, v6
	v_div_scale_f32 v4, null, v2, v2, v1
	v_rcp_f32_e32 v5, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v4, v5, 1.0
	v_fmac_f32_e32 v5, v6, v5
	v_div_scale_f32 v6, vcc_lo, v1, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v7, v6, v5
	v_fma_f32 v8, -v4, v7, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v7, v8, v5
	v_div_fixup_f32 v0, v3, v2, v0
	v_fma_f32 v4, -v4, v7, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v4, v4, v5, v7
	v_div_fixup_f32 v1, v4, v2, v1
	.loc	1 283 23 is_stmt 1              ; kda_gluon.py:283:23
	ds_store_b64 v207, v[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v232 offset:256
	ds_load_b128 v[8:11], v232 offset:272
	ds_load_b128 v[12:15], v232
	ds_load_b128 v[24:27], v232 offset:16
	ds_load_b128 v[28:31], v232 offset:128
	ds_load_b128 v[20:23], v232 offset:144
	v_mov_b32_e32 v235, v161
	s_waitcnt lgkmcnt(4)
	v_dual_mov_b32 v183, v166 :: v_dual_mul_f32 v252, v141, v11
	.loc	1 285 33                        ; kda_gluon.py:285:33
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v1, v45, v26
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v251, v125, v23
	v_mul_f32_e32 v255, v62, v22
	v_mul_f32_e32 v254, v46, v26
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v252, v137, v9
.Ltmp32:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v0, v37, v14
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v1, v41, v24
	v_fmac_f32_e32 v251, v121, v21
	v_fmac_f32_e32 v255, v58, v20
	v_fmac_f32_e32 v254, v42, v24
	v_fmac_f32_e32 v0, v33, v12
.Ltmp34:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v250, v109, v27 :: v_dual_mul_f32 v161, v78, v10
	v_mul_f32_e32 v163, v110, v27
	v_mul_f32_e32 v165, v142, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v245, v0, v1 :: v_dual_mul_f32 v0, v53, v30
.Ltmp36:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v1, v61, v22
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_fmac_f32 v250, v105, v25 :: v_dual_fmac_f32 v161, v74, v8
	v_dual_fmac_f32 v163, v106, v25 :: v_dual_fmac_f32 v0, v49, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v1, v57, v20
	v_fmac_f32_e32 v165, v138, v9
	v_dual_add_f32 v246, v0, v1 :: v_dual_mul_f32 v1, v77, v10
.Ltmp38:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v0, v69, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v245, v245, v246
	v_fmac_f32_e32 v1, v73, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, v65, v16
	v_add_f32_e32 v247, v0, v1
.Ltmp40:
	.loc	1 283 23                        ; kda_gluon.py:283:23
	ds_load_b128 v[4:7], v232 offset:384
	ds_load_b128 v[0:3], v232 offset:400
	v_dual_mov_b32 v181, v164 :: v_dual_mul_f32 v164, v126, v23
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v164, v122, v21
.Ltmp43:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v248, v85, v6
	v_mul_f32_e32 v249, v93, v2
	v_dual_mul_f32 v162, v94, v2 :: v_dual_mul_f32 v253, v157, v3
	v_mul_f32_e32 v166, v158, v3
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v248, v81, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v249, v89, v0
	v_dual_fmac_f32 v162, v90, v0 :: v_dual_fmac_f32 v253, v153, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v166, v154, v1
	v_dual_add_f32 v248, v248, v249 :: v_dual_mul_f32 v249, v101, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v246, v247, v248 :: v_dual_fmac_f32 v249, v97, v13
	v_add_f32_e32 v249, v249, v250
.Ltmp45:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v250, v117, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v250, v113, v29
	v_add_f32_e32 v250, v250, v251
.Ltmp47:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v251, v133, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v247, v249, v250
	v_dual_fmac_f32 v251, v129, v17 :: v_dual_mul_f32 v250, v160, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v251, v251, v252 :: v_dual_mul_f32 v252, v149, v7
	v_fmac_f32_e32 v252, v145, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v252, v252, v253 :: v_dual_mul_f32 v253, v38, v14
	v_add_f32_e32 v248, v251, v252
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v253, v34, v12
	v_add_f32_e32 v253, v253, v254
.Ltmp49:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v254, v54, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v254, v50, v28
	v_add_f32_e32 v254, v254, v255
.Ltmp51:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v255, v70, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v249, v253, v254
	v_fmac_f32_e32 v255, v66, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v161, v255, v161
.Ltmp53:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v255, v86, v6
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v255, v82, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v162, v255, v162 :: v_dual_mul_f32 v255, v102, v15
	v_add_f32_e32 v161, v161, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v255, v98, v13
	v_add_f32_e32 v161, v249, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_f32_e32 v163, v255, v163
.Ltmp55:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v255, v118, v31
	v_mul_f32_e32 v249, v159, v3
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v255, v114, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v249, v155, v1
	v_dual_add_f32 v164, v255, v164 :: v_dual_mul_f32 v255, v134, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v162, v163, v164 :: v_dual_fmac_f32 v255, v130, v17
	v_dual_add_f32 v164, v245, v246 :: v_dual_add_f32 v165, v255, v165
.Ltmp57:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v255, v150, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v255, v146, v5
	v_add_f32_e32 v166, v255, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_add_f32 v163, v165, v166 :: v_dual_mul_f32 v166, v111, v27
	v_add_f32_e32 v165, v247, v248
.Ltmp59:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v247, v127, v23
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v162, v162, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v166, v107, v25
	v_add_f32_e32 v163, v164, v165
.Ltmp61:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v165, v95, v2
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v247, v123, v21
	v_add_f32_e32 v161, v161, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v162, v163, s62, 0xfedcba98 op_sel:[1,0]
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v165, v91, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v164, v161, s62, 0xfedcba98 op_sel:[1,0]
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v245, v163, v162
.Ltmp67:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v162, v47, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v163, v63, v22 :: v_dual_add_f32 v246, v161, v164
	v_mul_f32_e32 v161, v39, v14
	v_mul_f32_e32 v164, v79, v10
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v162, v43, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v163, v59, v20
	v_fmac_f32_e32 v161, v35, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v164, v75, v8 :: v_dual_add_f32 v161, v161, v162
.Ltmp69:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v162, v55, v30
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v162, v51, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v162, v162, v163 :: v_dual_mul_f32 v163, v71, v18
	v_fmac_f32_e32 v163, v67, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v163, v163, v164
.Ltmp71:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v164, v87, v6
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v164, v83, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v164, v164, v165 :: v_dual_mul_f32 v165, v103, v15
	v_fmac_f32_e32 v165, v99, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v165, v165, v166 :: v_dual_mul_f32 v166, v119, v31
.Ltmp73:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v248, v143, v11 :: v_dual_add_f32 v161, v161, v162
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v162, v163, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v166, v115, v29 :: v_dual_add_f32 v161, v161, v162
	v_add_f32_e32 v166, v166, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v248, v139, v9 :: v_dual_add_f32 v163, v165, v166
.Ltmp75:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v166, v112, v27
	v_dual_mul_f32 v247, v135, v19 :: v_dual_fmac_f32 v166, v108, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v247, v131, v17
	v_add_f32_e32 v247, v247, v248
.Ltmp77:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v248, v151, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v248, v147, v5
	v_add_f32_e32 v248, v248, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v249, v144, v11 :: v_dual_add_f32 v164, v247, v248
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v249, v140, v9
.Ltmp81:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v248, v128, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v162, v163, v164 :: v_dual_mul_f32 v163, v64, v22
.Ltmp83:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v164, v80, v10
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_fmac_f32 v248, v124, v21 :: v_dual_add_f32 v161, v161, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v163, v60, v20
	v_fmac_f32_e32 v164, v76, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v162, v161, s62, 0xfedcba98 op_sel:[1,0]
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v247, v161, v162
.Ltmp87:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v161, v40, v14
	v_mul_f32_e32 v162, v48, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v161, v36, v12
	v_fmac_f32_e32 v162, v44, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v161, v161, v162
.Ltmp89:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v162, v56, v30
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v162, v52, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v162, v162, v163 :: v_dual_mul_f32 v163, v72, v18
	v_fmac_f32_e32 v163, v68, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v163, v163, v164 :: v_dual_mul_f32 v164, v88, v6
.Ltmp91:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v165, v96, v2
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v164, v84, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v165, v92, v0
	v_add_f32_e32 v164, v164, v165
.Ltmp93:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v165, v104, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v165, v100, v13
	v_dual_add_f32 v165, v165, v166 :: v_dual_mul_f32 v166, v120, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v166, v116, v29
	v_add_f32_e32 v166, v166, v248
.Ltmp95:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v248, v136, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v248, v132, v17
	v_dual_fmac_f32 v250, v156, v1 :: v_dual_add_f32 v161, v161, v162
	v_add_f32_e32 v248, v248, v249
.Ltmp97:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v249, v152, v7 :: v_dual_add_f32 v162, v163, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v249, v148, v5
	v_add_f32_e32 v161, v161, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v249, v249, v250
	v_dual_add_f32 v163, v165, v166 :: v_dual_add_f32 v164, v248, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v162, v163, v164
	v_add_f32_e32 v161, v161, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v162, v161, s62, 0xfedcba98 op_sel:[1,0]
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v248, v161, v162
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	ds_store_b128 v177, v[245:248]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[245:248], v178
.Ltmp102:
	.loc	1 286 26                        ; kda_gluon.py:286:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v161, v245, s62, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v162, v246, s62, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v246, v246, v162
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v162, v248, s62, 0xfedcba98 op_sel:[1,0]
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v245, v245, v161
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v161, v247, s62, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v248, v248, v162 :: v_dual_add_f32 v247, v247, v161
.Ltmp109:
	.loc	1 254 33                        ; kda_gluon.py:254:33
	v_cndmask_b16 v161.l, v244.l, v244.h, s19
	v_mov_b16_e64 v161.h, 0
	.loc	1 286 26                        ; kda_gluon.py:286:26
	ds_store_2addr_b64 v179, v[245:246], v[247:248] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v163, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 261 21                        ; kda_gluon.py:261:21
	v_or_b32_e32 v162, -16, v161
	.loc	1 260 21                        ; kda_gluon.py:260:21
	v_cmp_lt_u16_e64 vcc_lo, 7, v161.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 259 31                        ; kda_gluon.py:259:31
	v_dual_cndmask_b32 v161, v161, v162 :: v_dual_lshlrev_b32 v162, 16, v239
	.loc	1 264 21                        ; kda_gluon.py:264:21
	v_cvt_f32_i32_e32 v161, v161
	.loc	1 286 26                        ; kda_gluon.py:286:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v239, 0, v163
	ds_load_b32 v163, v239
	.loc	1 288 30                        ; kda_gluon.py:288:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 287 24                        ; kda_gluon.py:287:24
	v_fma_f32 v161, v162, v161, -v163
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 289 17                        ; kda_gluon.py:289:17
	v_mul_f32_e32 v161, v243, v161
	.loc	1 288 30                        ; kda_gluon.py:288:30
	ds_store_b32 v239, v161
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[243:246], v179 offset1:16
	.loc	1 294 27                        ; kda_gluon.py:294:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v35, v12, v245 :: v_dual_fmac_f32 v108, v25, v246
	v_dual_fmac_f32 v39, v14, v245 :: v_dual_fmac_f32 v52, v28, v246
	v_fmac_f32_e32 v42, v24, v244
	v_fmac_f32_e32 v46, v26, v244
	v_dual_fmac_f32 v77, v10, v243 :: v_dual_fmac_f32 v90, v0, v244
	v_dual_fmac_f32 v79, v10, v245 :: v_dual_fmac_f32 v92, v0, v246
	v_dual_fmac_f32 v141, v11, v243 :: v_dual_fmac_f32 v154, v1, v244
	v_dual_fmac_f32 v143, v11, v245 :: v_dual_fmac_f32 v156, v1, v246
	v_fmac_f32_e32 v89, v0, v243
	v_fmac_f32_e32 v91, v0, v245
	v_fmac_f32_e32 v153, v1, v243
	v_fmac_f32_e32 v155, v1, v245
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_fixup_f32 v0, v241, v240, v237
	v_div_fixup_f32 v1, v242, v240, v238
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v47, v26, v245 :: v_dual_fmac_f32 v60, v20, v246
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v6, v243 :: v_dual_mul_f32 v0, s55, v0
	.loc	1 295 21                        ; kda_gluon.py:295:21
	v_mul_f32_e32 v1, s55, v1
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v33, v12, v243 :: v_dual_fmac_f32 v106, v25, v244
	v_fmac_f32_e32 v34, v12, v244
	v_dual_fmac_f32 v36, v12, v246 :: v_dual_fmac_f32 v37, v14, v243
	v_fmac_f32_e32 v112, v27, v246
	v_fmac_f32_e32 v38, v14, v244
	v_dual_fmac_f32 v40, v14, v246 :: v_dual_fmac_f32 v41, v24, v243
	v_dual_fmac_f32 v118, v31, v244 :: v_dual_fmac_f32 v45, v26, v243
	v_fmac_f32_e32 v58, v20, v244
	v_fmac_f32_e32 v48, v26, v246
	v_dual_fmac_f32 v69, v18, v243 :: v_dual_fmac_f32 v82, v4, v244
	v_dual_fmac_f32 v71, v18, v245 :: v_dual_fmac_f32 v84, v4, v246
	v_dual_fmac_f32 v129, v17, v243 :: v_dual_fmac_f32 v86, v6, v244
	v_dual_fmac_f32 v131, v17, v245 :: v_dual_fmac_f32 v88, v6, v246
	v_dual_fmac_f32 v133, v19, v243 :: v_dual_fmac_f32 v146, v5, v244
	v_dual_fmac_f32 v135, v19, v245 :: v_dual_fmac_f32 v148, v5, v246
	v_dual_fmac_f32 v73, v8, v243 :: v_dual_fmac_f32 v150, v7, v244
	v_dual_fmac_f32 v75, v8, v245 :: v_dual_fmac_f32 v152, v7, v246
	v_dual_fmac_f32 v137, v9, v243 :: v_dual_fmac_f32 v94, v2, v244
	v_dual_fmac_f32 v139, v9, v245 :: v_dual_fmac_f32 v96, v2, v246
	v_dual_fmac_f32 v81, v4, v243 :: v_dual_fmac_f32 v158, v3, v244
	v_dual_fmac_f32 v83, v4, v245 :: v_dual_fmac_f32 v160, v3, v246
	v_fmac_f32_e32 v87, v6, v245
	v_fmac_f32_e32 v145, v5, v243
	v_fmac_f32_e32 v147, v5, v245
	v_fmac_f32_e32 v149, v7, v243
	v_fmac_f32_e32 v151, v7, v245
	v_fmac_f32_e32 v93, v2, v243
	v_fmac_f32_e32 v95, v2, v245
	v_fmac_f32_e32 v157, v3, v243
	v_fmac_f32_e32 v159, v3, v245
	.loc	1 294 27                        ; kda_gluon.py:294:27
	ds_store_b64 v207, v[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v232
	ds_load_b128 v[4:7], v232 offset:16
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v101, v15, v243 :: v_dual_fmac_f32 v114, v29, v244
	v_fmac_f32_e32 v102, v15, v244
	v_dual_fmac_f32 v103, v15, v245 :: v_dual_fmac_f32 v116, v29, v246
	v_fmac_f32_e32 v104, v15, v246
	v_dual_fmac_f32 v109, v27, v243 :: v_dual_fmac_f32 v122, v21, v244
	v_fmac_f32_e32 v110, v27, v244
	v_dual_fmac_f32 v111, v27, v245 :: v_dual_fmac_f32 v124, v21, v246
	v_dual_fmac_f32 v97, v13, v243 :: v_dual_fmac_f32 v54, v30, v244
	v_fmac_f32_e32 v98, v13, v244
	v_dual_fmac_f32 v99, v13, v245 :: v_dual_fmac_f32 v56, v30, v246
	v_dual_fmac_f32 v100, v13, v246 :: v_dual_fmac_f32 v43, v24, v245
	v_fmac_f32_e32 v120, v31, v246
	v_dual_fmac_f32 v44, v24, v246 :: v_dual_fmac_f32 v105, v25, v243
	v_dual_fmac_f32 v62, v22, v244 :: v_dual_fmac_f32 v107, v25, v245
	v_dual_fmac_f32 v64, v22, v246 :: v_dual_fmac_f32 v49, v28, v243
	v_dual_fmac_f32 v126, v23, v244 :: v_dual_fmac_f32 v51, v28, v245
	v_dual_fmac_f32 v128, v23, v246 :: v_dual_fmac_f32 v53, v30, v243
	v_dual_fmac_f32 v66, v16, v244 :: v_dual_fmac_f32 v55, v30, v245
	v_dual_fmac_f32 v68, v16, v246 :: v_dual_fmac_f32 v113, v29, v243
	v_dual_fmac_f32 v70, v18, v244 :: v_dual_fmac_f32 v115, v29, v245
	v_dual_fmac_f32 v72, v18, v246 :: v_dual_fmac_f32 v117, v31, v243
	v_dual_fmac_f32 v130, v17, v244 :: v_dual_fmac_f32 v119, v31, v245
	v_dual_fmac_f32 v132, v17, v246 :: v_dual_fmac_f32 v57, v20, v243
	v_dual_fmac_f32 v134, v19, v244 :: v_dual_fmac_f32 v59, v20, v245
	v_dual_fmac_f32 v136, v19, v246 :: v_dual_fmac_f32 v61, v22, v243
	v_dual_fmac_f32 v74, v8, v244 :: v_dual_fmac_f32 v63, v22, v245
	v_dual_fmac_f32 v76, v8, v246 :: v_dual_fmac_f32 v121, v21, v243
	v_dual_fmac_f32 v78, v10, v244 :: v_dual_fmac_f32 v123, v21, v245
	v_dual_fmac_f32 v80, v10, v246 :: v_dual_fmac_f32 v125, v23, v243
	v_dual_fmac_f32 v138, v9, v244 :: v_dual_fmac_f32 v127, v23, v245
	v_dual_fmac_f32 v140, v9, v246 :: v_dual_fmac_f32 v65, v16, v243
	v_dual_fmac_f32 v142, v11, v244 :: v_dual_fmac_f32 v67, v16, v245
	v_fmac_f32_e32 v144, v11, v246
	.loc	1 298 33                        ; kda_gluon.py:298:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v8, v37, v2
	v_mul_f32_e32 v10, v38, v2
	v_dual_mul_f32 v11, v102, v3 :: v_dual_mul_f32 v12, v39, v2
	v_dual_mul_f32 v13, v103, v3 :: v_dual_mul_f32 v14, v40, v2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v15, v104, v3 :: v_dual_mul_f32 v16, v45, v6
	v_dual_mul_f32 v17, v109, v7 :: v_dual_mul_f32 v18, v46, v6
	v_dual_mul_f32 v19, v110, v7 :: v_dual_mul_f32 v20, v47, v6
	v_mul_f32_e32 v9, v101, v3
	v_dual_mul_f32 v21, v111, v7 :: v_dual_mul_f32 v22, v48, v6
	v_mul_f32_e32 v23, v112, v7
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_fmac_f32_e32 v50, v28, v244
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v8, v33, v0
	v_fmac_f32_e32 v10, v34, v0
	v_dual_fmac_f32 v11, v98, v1 :: v_dual_fmac_f32 v12, v35, v0
	v_dual_fmac_f32 v13, v99, v1 :: v_dual_fmac_f32 v14, v36, v0
	v_dual_fmac_f32 v15, v100, v1 :: v_dual_fmac_f32 v16, v41, v4
	v_dual_fmac_f32 v17, v105, v5 :: v_dual_fmac_f32 v18, v42, v4
	v_dual_fmac_f32 v19, v106, v5 :: v_dual_fmac_f32 v20, v43, v4
	v_dual_fmac_f32 v9, v97, v1 :: v_dual_fmac_f32 v22, v44, v4
	v_fmac_f32_e32 v21, v107, v5
	v_fmac_f32_e32 v23, v108, v5
.Ltmp111:
	.loc	1 294 27                        ; kda_gluon.py:294:27
	ds_load_b128 v[0:3], v232 offset:128
	ds_load_b128 v[4:7], v232 offset:144
	v_mov_b32_e32 v225, v201
	v_dual_mov_b32 v201, v184 :: v_dual_mov_b32 v184, v167
	v_dual_mov_b32 v193, v176 :: v_dual_add_f32 v10, v10, v18
	.loc	1 298 33                        ; kda_gluon.py:298:33
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v27, v118, v3 :: v_dual_mul_f32 v24, v53, v2
	v_mul_f32_e32 v26, v54, v2
	v_mul_f32_e32 v28, v55, v2
	v_mul_f32_e32 v29, v119, v3
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v27, v114, v1 :: v_dual_mul_f32 v238, v128, v7
.Ltmp113:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v25, v117, v3 :: v_dual_mul_f32 v30, v56, v2
	v_mul_f32_e32 v31, v120, v3
	v_mul_f32_e32 v161, v61, v6
	v_dual_mul_f32 v162, v125, v7 :: v_dual_mul_f32 v163, v62, v6
	v_dual_mul_f32 v164, v126, v7 :: v_dual_mul_f32 v165, v63, v6
	v_dual_mul_f32 v166, v127, v7 :: v_dual_mul_f32 v237, v64, v6
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v24, v49, v0
	v_fmac_f32_e32 v26, v50, v0
	v_fmac_f32_e32 v28, v51, v0
	v_dual_fmac_f32 v29, v115, v1 :: v_dual_fmac_f32 v30, v52, v0
	v_fmac_f32_e32 v31, v116, v1
	v_fmac_f32_e32 v161, v57, v4
	v_dual_fmac_f32 v162, v121, v5 :: v_dual_fmac_f32 v163, v58, v4
	v_dual_fmac_f32 v164, v122, v5 :: v_dual_fmac_f32 v165, v59, v4
	v_dual_fmac_f32 v166, v123, v5 :: v_dual_fmac_f32 v237, v60, v4
	v_fmac_f32_e32 v238, v124, v5
	v_fmac_f32_e32 v25, v113, v1
.Ltmp115:
	.loc	1 294 27                        ; kda_gluon.py:294:27
	ds_load_b128 v[0:3], v232 offset:256
	ds_load_b128 v[4:7], v232 offset:272
	.loc	1 298 33                        ; kda_gluon.py:298:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v240, v69, v2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v241, v133, v3 :: v_dual_mul_f32 v254, v80, v6
	v_mul_f32_e32 v242, v70, v2
	v_dual_mul_f32 v243, v134, v3 :: v_dual_mul_f32 v244, v71, v2
	v_dual_mul_f32 v245, v135, v3 :: v_dual_mul_f32 v246, v72, v2
	v_dual_mul_f32 v247, v136, v3 :: v_dual_mul_f32 v248, v77, v6
	v_dual_mul_f32 v249, v141, v7 :: v_dual_mul_f32 v250, v78, v6
	v_dual_mul_f32 v251, v142, v7 :: v_dual_mul_f32 v252, v79, v6
	v_mul_f32_e32 v253, v143, v7
	v_dual_mul_f32 v255, v144, v7 :: v_dual_fmac_f32 v240, v65, v0
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v241, v129, v1 :: v_dual_fmac_f32 v254, v76, v4
	v_fmac_f32_e32 v242, v66, v0
	v_dual_fmac_f32 v243, v130, v1 :: v_dual_fmac_f32 v244, v67, v0
	v_dual_fmac_f32 v245, v131, v1 :: v_dual_fmac_f32 v246, v68, v0
	v_dual_fmac_f32 v247, v132, v1 :: v_dual_fmac_f32 v248, v73, v4
	v_dual_fmac_f32 v249, v137, v5 :: v_dual_fmac_f32 v250, v74, v4
	v_dual_fmac_f32 v251, v138, v5 :: v_dual_fmac_f32 v252, v75, v4
	v_fmac_f32_e32 v253, v139, v5
	v_fmac_f32_e32 v255, v140, v5
.Ltmp117:
	.loc	1 294 27                        ; kda_gluon.py:294:27
	ds_load_b128 v[0:3], v232 offset:384
	ds_load_b128 v[4:7], v232 offset:400
	v_dual_mov_b32 v205, v188 :: v_dual_mov_b32 v188, v171
	v_dual_mov_b32 v207, v190 :: v_dual_mov_b32 v190, v173
	v_mov_b32_e32 v187, v170
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	s_waitcnt lgkmcnt(1)
	v_dual_add_f32 v18, v26, v163 :: v_dual_mul_f32 v167, v85, v2
.Ltmp119:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v169, v86, v2 :: v_dual_mul_f32 v176, v159, v7
	v_mul_f32_e32 v171, v87, v2
	v_mul_f32_e32 v173, v88, v2
	v_mul_f32_e32 v2, v94, v6
	v_mul_f32_e32 v174, v158, v7
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v169, v82, v0 :: v_dual_fmac_f32 v176, v155, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v173, v84, v0
	v_fmac_f32_e32 v2, v90, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v167, v81, v0 :: v_dual_fmac_f32 v174, v154, v5
	v_dual_fmac_f32 v171, v83, v0 :: v_dual_mul_f32 v0, v93, v6
	v_dual_mov_b32 v185, v168 :: v_dual_mul_f32 v168, v149, v3
.Ltmp121:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v170, v150, v3 :: v_dual_mul_f32 v175, v95, v6
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v0, v89, v4 :: v_dual_mov_b32 v189, v172
.Ltmp123:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v172, v151, v3
	v_mul_f32_e32 v3, v152, v3
	v_mul_f32_e32 v6, v96, v6
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v168, v145, v1
	v_fmac_f32_e32 v170, v146, v1
	v_fmac_f32_e32 v172, v147, v1
	v_fmac_f32_e32 v3, v148, v1
	v_fmac_f32_e32 v175, v91, v4
	v_fmac_f32_e32 v6, v92, v4
.Ltmp125:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v4, v160, v7
	v_mul_f32_e32 v1, v157, v7
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v7, v24, v161 :: v_dual_add_f32 v0, v167, v0
	v_add_f32_e32 v24, v242, v250
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v4, v156, v5
	v_fmac_f32_e32 v1, v153, v5
	v_dual_add_f32 v5, v8, v16 :: v_dual_add_f32 v2, v169, v2
	v_dual_add_f32 v8, v240, v248 :: v_dual_add_f32 v9, v9, v17
	v_add_f32_e32 v16, v25, v162
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v17, v241, v249 :: v_dual_add_f32 v2, v24, v2
	v_add_f32_e32 v1, v168, v1
	v_dual_mov_b32 v169, v186 :: v_dual_mov_b32 v186, v203
	v_dual_add_f32 v5, v5, v7 :: v_dual_add_f32 v0, v8, v0
	v_dual_mov_b32 v163, v180 :: v_dual_mov_b32 v180, v197
	v_dual_mov_b32 v167, v184 :: v_dual_mov_b32 v184, v201
	v_mov_b32_e32 v201, v225
	v_dual_mov_b32 v225, v196 :: v_dual_add_f32 v8, v10, v18
	v_add_f32_e32 v7, v9, v16
	v_mov_b32_e32 v18, v221
	v_add_f32_e32 v1, v17, v1
	v_dual_add_f32 v0, v5, v0 :: v_dual_mov_b32 v161, v235
	v_dual_mov_b32 v235, v195 :: v_dual_add_f32 v26, v170, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_f32_e32 v1, v7, v1
	v_add_f32_e32 v11, v11, v19
	v_dual_add_f32 v25, v243, v251 :: v_dual_mov_b32 v168, v185
	v_mov_b32_e32 v170, v187
	v_dual_add_f32 v0, v0, v1 :: v_dual_add_f32 v19, v27, v164
	v_mov_b32_e32 v187, v204
	v_add_f32_e32 v2, v8, v2
	v_dual_add_f32 v8, v171, v175 :: v_dual_mov_b32 v171, v188
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v9, v11, v19 :: v_dual_mov_b32 v188, v205
	v_dual_mov_b32 v185, v202 :: v_dual_add_f32 v10, v25, v26
	v_mov_b32_e32 v162, v194
	v_dual_mov_b32 v174, v191 :: v_dual_mov_b32 v191, v208
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v208, off, off offset:68
	scratch_load_b32 v194, off, off offset:60
	v_add_f32_e32 v11, v245, v253
	v_add_f32_e32 v5, v9, v10
	v_dual_mov_b32 v164, v181 :: v_dual_mov_b32 v181, v198
	v_add_f32_e32 v9, v13, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_add_f32 v10, v29, v166 :: v_dual_add_f32 v1, v2, v5
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v2, v0, s62, 0xfedcba98 op_sel:[1,0]
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v6, v173, v6 :: v_dual_mov_b32 v205, v32
	v_add_f32_e32 v3, v3, v4
	v_mov_b32_e32 v166, v183
	v_add_f32_e32 v0, v0, v2
	v_add_f32_e32 v2, v12, v20
	v_add_f32_e32 v12, v172, v176
	v_mov_b32_e32 v172, v189
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v5, v1, s62, 0xfedcba98 op_sel:[1,0]
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v27, off, off offset:20
	scratch_load_b32 v26, off, off offset:12
	scratch_load_b32 v25, off, off offset:8
	v_mov_b32_e32 v176, v193
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v1, v1, v5
	v_add_f32_e32 v5, v28, v165
	v_dual_mov_b32 v165, v182 :: v_dual_mov_b32 v182, v199
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v2, v2, v5 :: v_dual_add_f32 v7, v244, v252
	v_add_f32_e32 v5, v7, v8
	v_dual_add_f32 v7, v9, v10 :: v_dual_add_f32 v8, v11, v12
	v_add_f32_e32 v9, v15, v23
	v_add_f32_e32 v10, v31, v238
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v2, v2, v5 :: v_dual_add_f32 v11, v247, v255
	v_add_f32_e32 v5, v7, v8
	v_mov_b32_e32 v175, v192
	v_add_f32_e32 v7, v30, v237
	v_add_f32_e32 v8, v246, v254
	v_mov_b32_e32 v189, v206
	v_dual_add_f32 v2, v2, v5 :: v_dual_add_f32 v3, v11, v3
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v30, off, off offset:24
	scratch_load_b32 v24, off, off offset:16
	scratch_load_b32 v23, off, off offset:28
	scratch_load_b32 v15, off, off
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v5, v2, s62, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v2, v2, v5
	v_add_f32_e32 v5, v14, v22
	v_mov_b32_e32 v183, v200
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:52
	scratch_load_b32 v14, off, off offset:4
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v4, v5, v7 :: v_dual_add_f32 v5, v8, v6
	v_add_f32_e32 v6, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v4, v4, v5 :: v_dual_add_f32 v3, v6, v3
	v_add_f32_e32 v3, v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v4, v3, s62, 0xfedcba98 op_sel:[1,0]
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	ds_store_b128 v177, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v178
.Ltmp138:
	.loc	1 299 26                        ; kda_gluon.py:299:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v4, v0, s62, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v1, s62, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v0, v0, v4 :: v_dual_add_f32 v1, v1, v5
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v4, v2, s62, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v3, s62, 0xfedcba98 op_sel:[1,0]
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v2, v2, v4 :: v_dual_add_f32 v3, v3, v5
.Ltmp143:
	.loc	1 299 26                        ; kda_gluon.py:299:26
	ds_store_2addr_b64 v179, v[0:1], v[2:3] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v239
	.loc	1 302 30                        ; kda_gluon.py:302:30
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v0, v0, v1, 0x7fff
	.loc	1 303 17                        ; kda_gluon.py:303:17
	v_cndmask_b32_e64 v1, 0x80000000, v226, s18
	.loc	1 311 21                        ; kda_gluon.py:311:21
	v_add_nc_u32_e32 v226, s57, v226
	.loc	1 302 30                        ; kda_gluon.py:302:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s20, s27
	.loc	1 303 17                        ; kda_gluon.py:303:17
	buffer_store_b16 v0, v1, s[44:47], 0 offen
	.loc	1 327 21                        ; kda_gluon.py:327:21
	v_add_lshl_u32 v0, s26, v230, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[33:34], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v161, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[35:36], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v162, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[37:38], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v163, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[39:40], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v164, 2
	v_dual_mov_b32 v173, v190 :: v_dual_mov_b32 v190, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[41:42], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v165, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[43:44], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v166, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s4, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[45:46], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v167, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s5, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[47:48], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v168, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[49:50], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v169, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[51:52], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v170, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[53:54], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v171, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[55:56], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v172, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[57:58], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v173, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[59:60], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v174, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s6, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[61:62], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v175, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s7, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[63:64], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v176, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[65:66], v0, s[36:39], 0 offen
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v0, s26, v208, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[67:68], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v235, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[69:70], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v225, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[71:72], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v180, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[73:74], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v181, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[75:76], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v182, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s8, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[77:78], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v183, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s9, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[79:80], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v184, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[81:82], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v185, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[83:84], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v186, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[85:86], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v187, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[87:88], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v188, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[89:90], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v189, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[91:92], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v190, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s10, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[93:94], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v191, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s11, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[95:96], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v209, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[97:98], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v210, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[99:100], v0, s[36:39], 0 offen
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v0, s26, v194, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[101:102], v0, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s26, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[103:104], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v213, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[105:106], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v15, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[107:108], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v215, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s12, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[109:110], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v216, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s13, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[111:112], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v217, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[113:114], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v218, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[115:116], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v219, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[117:118], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[119:120], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v212, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[121:122], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v222, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[123:124], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v223, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s14, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[125:126], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v224, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s15, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[127:128], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v201, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[129:130], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v228, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[131:132], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v229, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[133:134], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v22, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[135:136], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v233, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[137:138], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v23, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[139:140], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v231, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s16, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[141:142], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v24, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s17, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[143:144], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v205, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[145:146], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v25, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[147:148], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v234, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[149:150], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v26, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[151:152], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v211, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[153:154], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v27, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[155:156], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v30, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[157:158], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v214, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 311 21                        ; kda_gluon.py:311:21
	s_add_i32 s2, s60, s61
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s2, 8
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[159:160], v0, s[36:39], 0 offen
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 77 5                          ; kda_gluon.py:77:5
	s_endpgm
.Ltmp144:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 76
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_sgpr 63
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
	.size	amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8, .Lfunc_end0-amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8.num_vgpr, 256
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8.num_agpr, 0
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8.numbered_sgpr, 63
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8.private_seg_size, 76
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8.has_recursion, 0
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11260
; TotalNumSgprs: 65
; NumVgprs: 256
; ScratchSize: 76
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 65
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xa2 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x7c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	242                             ; DW_AT_call_line
	.byte	34                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	34                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x67:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	285                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	298                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
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
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp57-.Lfunc_begin0
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
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
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
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
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
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
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
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"kda_gluon.py"                  ; string offset=7 ; kda_gluon.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8"                        ; string offset=88 ; amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8
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
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
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
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8
    .private_segment_fixed_size: 76
    .sgpr_count:     65
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_kda_fwd_cache_bf16xint4_b7_t2048_h48_d128_dv128_vb64_ci8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 18
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
