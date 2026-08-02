	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4                          ; -- Begin function amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
	.p2align	8
	.type	amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4,@function
amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4:                                 ; @amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "kda_gluon.py"
	.loc	1 77 0                          ; kda_gluon.py:77:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s35, s[0:1], 0x68
	s_load_b32 s46, s[0:1], 0x70
	s_load_b32 s33, s[0:1], 0x80
	s_load_b32 s47, s[0:1], 0x78
.Ltmp0:
	.loc	1 130 27 prologue_end           ; kda_gluon.py:130:27
	v_lshrrev_b32_e32 v2, 4, v0
	s_add_u32 s4, s0, 0x58
	s_addc_u32 s6, s1, 0
	s_add_u32 s8, s0, 0x60
	s_addc_u32 s10, s1, 0
	.loc	1 123 21                        ; kda_gluon.py:123:21
	s_lshl_b32 s54, s3, 6
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
	s_add_i32 s12, s2, 0xffffff81
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_mov_b32 s23, s22
	.loc	1 131 51                        ; kda_gluon.py:131:51
	v_and_b32_e32 v1, 15, v0
	.loc	1 136 24                        ; kda_gluon.py:136:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s3, s46, v2
	v_cmp_gt_i32_e64 s5, s46, v3
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mul_lo_u32 v2, s47, v2
	.loc	1 136 24                        ; kda_gluon.py:136:24
	v_cmp_gt_i32_e64 s7, s46, v4
	v_cmp_gt_i32_e64 s9, s46, v5
	v_cmp_gt_i32_e64 s11, s46, v6
	v_cmp_gt_i32_e64 s13, s46, v7
	v_cmp_gt_i32_e64 s15, s46, v8
	v_cmp_gt_i32_e32 vcc_lo, s46, v9
	.loc	1 131 27                        ; kda_gluon.py:131:27
	v_lshl_or_b32 v30, v1, 1, s54
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mad_u64_u32 v[3:4], null, s47, 12, v[2:3]
	.loc	1 147 17                        ; kda_gluon.py:147:17
	s_cmpk_lt_i32 s2, 0x7f
	.loc	1 160 13                        ; kda_gluon.py:160:13
	s_mul_i32 s56, s47, s46
	.loc	1 146 26                        ; kda_gluon.py:146:26
	s_cselect_b32 s19, s6, s10
	s_cselect_b32 s18, s4, s8
	.loc	1 151 32                        ; kda_gluon.py:151:32
	s_cselect_b32 s4, s2, s12
	.loc	1 146 26                        ; kda_gluon.py:146:26
	s_load_b64 s[36:37], s[18:19], 0x0
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mad_u64_u32 v[4:5], null, s47, 20, v[2:3]
	v_mad_u64_u32 v[5:6], null, s47, 24, v[2:3]
	v_mad_u64_u32 v[6:7], null, s47, 28, v[2:3]
	v_mad_u64_u32 v[7:8], null, s47, 36, v[2:3]
	v_mad_u64_u32 v[8:9], null, s47, 40, v[2:3]
	v_mad_u64_u32 v[9:10], null, s47, 44, v[2:3]
	v_mad_u64_u32 v[10:11], null, s47, 48, v[2:3]
	v_mad_u64_u32 v[11:12], null, s47, 52, v[2:3]
	v_mad_u64_u32 v[12:13], null, s47, 56, v[2:3]
	v_mad_u64_u32 v[13:14], null, s47, 60, v[2:3]
	v_mad_u64_u32 v[14:15], null, 0x44, s47, v[2:3]
	v_mad_u64_u32 v[15:16], null, 0x48, s47, v[2:3]
	v_mad_u64_u32 v[16:17], null, 0x4c, s47, v[2:3]
	v_mad_u64_u32 v[17:18], null, 0x50, s47, v[2:3]
	v_mad_u64_u32 v[18:19], null, 0x54, s47, v[2:3]
	v_mad_u64_u32 v[19:20], null, 0x58, s47, v[2:3]
	v_mad_u64_u32 v[20:21], null, 0x5c, s47, v[2:3]
	v_mad_u64_u32 v[21:22], null, 0x60, s47, v[2:3]
	v_mad_u64_u32 v[22:23], null, 0x64, s47, v[2:3]
	.loc	1 131 27                        ; kda_gluon.py:131:27
	v_or_b32_e32 v31, 32, v30
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mad_u64_u32 v[23:24], null, 0x68, s47, v[2:3]
	v_add_nc_u32_e32 v231, v2, v30
	v_mad_u64_u32 v[24:25], null, 0x6c, s47, v[2:3]
	.loc	1 160 13                        ; kda_gluon.py:160:13
	s_mul_i32 s33, s33, s4
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_lshl_add_u32 v32, s47, 2, v2
	v_mad_u64_u32 v[25:26], null, 0x70, s47, v[2:3]
	.loc	1 137 24                        ; kda_gluon.py:137:24
	v_cmp_gt_i32_e64 s16, s47, v30
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mad_u64_u32 v[26:27], null, 0x74, s47, v[2:3]
	.loc	1 160 13                        ; kda_gluon.py:160:13
	s_mul_i32 s18, s56, s33
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mad_u64_u32 v[27:28], null, 0x78, s47, v[2:3]
	v_lshl_add_u32 v33, s47, 3, v2
	v_lshl_add_u32 v34, s47, 4, v2
	v_lshl_add_u32 v35, s47, 5, v2
	v_lshl_add_u32 v36, s47, 6, v2
	v_mad_u64_u32 v[28:29], null, 0x7c, s47, v[2:3]
	v_add_nc_u32_e32 v160, v2, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v2, s18, v231, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v161, v32, v30
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s20, s3, s16
	.loc	1 137 24                        ; kda_gluon.py:137:24
	v_cmp_gt_i32_e64 s17, s47, v31
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v165, v3, v30
	v_add_nc_u32_e32 v166, v3, v31
	v_add_nc_u32_e32 v173, v6, v30
	v_add_nc_u32_e32 v174, v6, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v2, s20
	v_dual_mov_b32 v2, s22 :: v_dual_add_nc_u32 v169, v4, v30
	v_dual_mov_b32 v3, s23 :: v_dual_add_nc_u32 v170, v4, v31
	v_add_lshl_u32 v4, s18, v160, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v171, v5, v30
	v_add_nc_u32_e32 v172, v5, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v5, s18, v161, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s3, s3, s17
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v162, v32, v31
	v_add_nc_u32_e32 v163, v33, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v164, v33, v31
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s43, 0x31027000
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s20
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s38, s42
	s_mov_b32 s39, s43
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v167, v34, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	v_add_lshl_u32 v6, s18, v162, 2
	s_clause 0x1
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v163, 2
	v_add_lshl_u32 v5, s18, v164, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v182, v7, v30
	v_add_nc_u32_e32 v234, v7, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_add_lshl_u32 v7, s18, v165, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s20
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v168, v34, v31
	v_add_nc_u32_e32 v235, v8, v30
	v_add_nc_u32_e32 v180, v8, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v8, s18, v166, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v7, s20
	s_clause 0x1
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v167, 2
	v_cndmask_b32_e64 v7, 0x80000000, v8, s3
	v_add_lshl_u32 v5, s18, v168, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s4, s5, s16
	s_and_b32 s5, s5, s17
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x1
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	v_add_lshl_u32 v6, s18, v169, 2
	v_add_lshl_u32 v7, s18, v170, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v175, v35, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s4
	v_add_lshl_u32 v6, s18, v171, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v172, 2
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s4
	v_add_lshl_u32 v6, s18, v173, 2
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	v_add_lshl_u32 v7, s18, v174, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v176, v35, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v175, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v7, s5
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s6, s7, s16
	s_and_b32 s7, s7, s17
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	v_add_lshl_u32 v6, s18, v176, 2
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v182, 2
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_add_lshl_u32 v7, s18, v235, 2
	v_cndmask_b32_e64 v4, 0x80000000, v6, s7
	v_add_lshl_u32 v6, s18, v234, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v181, v9, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v8, s18, v180, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v210, v9, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s7
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v183, v10, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v7, s6
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v184, v10, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v8, s7
	v_add_lshl_u32 v7, s18, v181, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v185, v11, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v210, 2
	s_clause 0x1
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	v_add_lshl_u32 v6, s18, v183, 2
	v_cndmask_b32_e64 v5, 0x80000000, v7, s6
	v_add_lshl_u32 v7, s18, v184, 2
	v_add_lshl_u32 v8, s18, v185, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s8, s9, s16
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v186, v11, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s7
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s9, s9, s17
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s8
	v_cndmask_b32_e64 v7, 0x80000000, v7, s9
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v187, v12, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v8, s8
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v188, v12, v31
	v_add_nc_u32_e32 v208, v13, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x2
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v186, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v189, v13, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v187, 2
	v_add_lshl_u32 v6, s18, v188, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s9
	v_add_lshl_u32 v8, s18, v208, 2
	v_add_lshl_u32 v7, s18, v189, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v209, v36, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s8
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v192, v36, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s9
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v8, s9
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v211, v14, v30
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
	v_add_lshl_u32 v4, s18, v192, 2
	v_add_lshl_u32 v6, s18, v211, 2
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
	v_add_nc_u32_e32 v195, v16, v30
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
	v_add_lshl_u32 v6, s18, v195, 2
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
	v_add_nc_u32_e32 v220, v18, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s10
	v_cndmask_b32_e64 v4, 0x80000000, v4, s12
	v_cndmask_b32_e64 v7, 0x80000000, v7, s11
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v221, v19, v30
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
	v_add_lshl_u32 v6, s18, v220, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s13, s13, s17
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v7, s18, v221, 2
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
	v_add_nc_u32_e32 v229, v21, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v8, s13
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	v_add_lshl_u32 v6, s18, v223, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v230, v21, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v224, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v233, v22, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v229, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s12
	v_add_lshl_u32 v7, s18, v230, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s14, s15, s16
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v22, v22, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s13
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s15, s15, s17
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v228, v23, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s14
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	v_add_lshl_u32 v6, s18, v233, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v23, v23, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s15
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v203, v24, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x2
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v22, 2
	v_cndmask_b32_e64 v5, 0x80000000, v6, s14
	v_add_lshl_u32 v6, s18, v228, 2
	v_add_lshl_u32 v7, s18, v23, 2
	v_add_lshl_u32 v8, s18, v203, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v24, v24, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s15
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v225, v25, v30
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
	v_add_nc_u32_e32 v237, v26, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x2
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v225, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s16, vcc_lo, s16
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v26, v26, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s15
	v_add_lshl_u32 v6, s18, v25, 2
	v_add_lshl_u32 v7, s18, v237, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s16
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s17, vcc_lo, s17
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v214, v27, v30
	v_add_nc_u32_e32 v30, v28, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	s_clause 0x1
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v5, s[36:39], 0 offen
	v_add_lshl_u32 v4, s18, v26, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v27, v27, v31
	v_add_nc_u32_e32 v215, v28, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s16
	s_clause 0x1
	buffer_store_b64 v[2:3], v6, s[36:39], 0 offen
	buffer_store_b64 v[2:3], v7, s[36:39], 0 offen
	v_add_lshl_u32 v5, s18, v214, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s17
	v_add_lshl_u32 v7, s18, v30, 2
	v_add_lshl_u32 v6, s18, v27, 2
	v_add_lshl_u32 v8, s18, v215, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s16
	buffer_store_b64 v[2:3], v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v7, s16
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	v_cndmask_b32_e64 v7, 0x80000000, v8, s17
	s_mov_b32 s21, 4
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_cmp_lt_i32 s35, 1
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
	s_load_b32 s57, s[0:1], 0x6c
	s_load_b32 s58, s[0:1], 0x84
	s_load_b32 s38, s[0:1], 0x74
	s_load_b64 s[44:45], s[0:1], 0x48
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b128 s[48:51], s[0:1], 0x20
	s_load_b64 s[22:23], s[0:1], 0x30
	.loc	1 118 23 is_stmt 1              ; kda_gluon.py:118:23
	s_abs_i32 s34, s2
	.loc	1 123 21                        ; kda_gluon.py:123:21
	v_or_b32_e32 v4, s54, v0
	v_and_b32_e32 v7, 32, v0
	v_dual_mov_b32 v34, 0 :: v_dual_lshlrev_b32 v9, 5, v0
	.loc	1 0 0 is_stmt 0                 ; kda_gluon.py:0
	v_and_b32_e32 v2, 48, v0
	.loc	1 122 21 is_stmt 1              ; kda_gluon.py:122:21
	v_or_b32_e32 v3, 64, v0
	.loc	1 128 18                        ; kda_gluon.py:128:18
	v_cmp_gt_i32_e64 s0, s46, v0
	v_lshrrev_b32_e32 v5, 1, v0
	v_and_b32_e32 v6, 1, v0
	v_bfe_i32 v8, v0, 5, 1
	v_dual_mov_b32 v32, 0 :: v_dual_lshlrev_b32 v31, 2, v0
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s39, s57
	s_xor_b32 s53, s2, s57
	s_cvt_f32_u32 s1, s39
	s_ashr_i32 s53, s53, 31
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_mul_i32 s55, s57, s35
	v_lshlrev_b32_e32 v10, 1, v0
	.loc	1 118 23                        ; kda_gluon.py:118:23
	v_rcp_iflag_f32_e32 v13, s1
	v_bfe_i32 v12, v0, 4, 1
	.loc	1 129 18                        ; kda_gluon.py:129:18
	v_cmp_gt_i32_e64 s18, s47, v4
	v_dual_mov_b32 v36, 0 :: v_dual_lshlrev_b32 v11, 4, v1
	.loc	1 128 18                        ; kda_gluon.py:128:18
	v_cmp_gt_i32_e64 s1, s46, v3
	.loc	1 190 9                         ; kda_gluon.py:190:9
	v_lshrrev_b32_e32 v3, 1, v3
	v_dual_mov_b32 v38, 0 :: v_dual_lshlrev_b32 v1, 3, v1
	v_mov_b32_e32 v50, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 118 23                        ; kda_gluon.py:118:23
	v_readfirstlane_b32 s40, v13
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v1, 0, v1
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v158, 0
	s_mul_f32 s40, s40, 0x4f7ffffe
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_mul_i32 s61, s47, s57
	s_mov_b32 s63, 0x76543210
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v15, off offset:4
	scratch_store_b32 off, v14, off offset:8
	scratch_store_b32 off, v25, off offset:12
	scratch_store_b32 off, v26, off offset:16
	scratch_store_b32 off, v24, off offset:20
	scratch_store_b32 off, v27, off offset:24
	scratch_store_b32 off, v23, off offset:28
	scratch_store_b32 off, v30, off offset:32
	scratch_store_b32 off, v22, off offset:56
	scratch_store_b32 off, v195, off offset:64
	scratch_store_b32 off, v182, off offset:72
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_cvt_u32_f32 s41, s40
	s_sub_i32 s40, 0, s39
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v44, 0
	s_mul_i32 s52, s40, s41
	s_mov_b32 s40, s24
	s_mul_hi_u32 s52, s41, s52
	s_mov_b32 s24, s26
	s_add_i32 s41, s41, s52
	v_mov_b32_e32 v42, 0
	s_mul_hi_u32 s26, s34, s41
	v_mov_b32_e32 v46, 0
	s_mul_i32 s41, s26, s39
	s_mov_b32 s52, s30
	s_sub_i32 s34, s34, s41
	s_add_i32 s41, s26, 1
	s_sub_i32 s59, s34, s39
	s_cmp_ge_u32 s34, s39
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_mul_i32 s30, s46, s57
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_cselect_b32 s26, s41, s26
	s_cselect_b32 s34, s59, s34
	s_add_i32 s41, s26, 1
	s_cmp_ge_u32 s34, s39
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_mul_i32 s59, s38, s57
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_cselect_b32 s26, s41, s26
	s_and_b32 s41, s25, 0xffff
	s_xor_b32 s26, s26, s53
	s_and_b32 s25, s27, 0xffff
	s_sub_i32 s26, s26, s53
	s_and_b32 s29, s29, 0xffff
	.loc	1 119 22                        ; kda_gluon.py:119:22
	s_mul_i32 s27, s26, s57
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_mul_i32 s26, s55, s26
	.loc	1 119 22                        ; kda_gluon.py:119:22
	s_sub_i32 s2, s2, s27
	s_and_b32 s53, s31, 0xffff
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_add_i32 s34, s26, s2
	s_and_b32 s45, s45, 0xffff
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_mul_i32 s2, s47, s34
	s_mul_i32 s38, s38, s34
	s_add_i32 s2, s2, s54
	s_mul_i32 s46, s46, s34
	v_add_lshl_u32 v227, s2, v0, 1
	v_mov_b32_e32 v0, 0
	v_lshrrev_b32_e32 v4, 3, v7
	v_and_b32_e32 v7, 0x60, v9
	v_and_b32_e32 v8, 0x140, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v45, v0 :: v_dual_and_b32 v12, 0x140, v12
	v_mov_b32_e32 v33, v0
	v_add_nc_u32_e32 v7, 0, v7
	v_mov_b32_e32 v37, v0
	v_and_b32_e32 v9, 24, v10
	v_dual_mov_b32 v41, v0 :: v_dual_lshlrev_b32 v10, 1, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v2, v2, 3, v7
	v_dual_mov_b32 v47, v0 :: v_dual_add_nc_u32 v212, s38, v3
	v_add_nc_u32_e32 v3, 0, v4
	v_mov_b32_e32 v35, v0
	v_cmp_eq_u32_e64 s19, 0, v6
	v_dual_mov_b32 v39, v0 :: v_dual_and_b32 v6, 4, v31
	v_dual_mov_b32 v51, v0 :: v_dual_add_nc_u32 v2, v2, v9
	v_mov_b32_e32 v43, v0
	v_xor_b32_e32 v8, v8, v11
	v_xor_b32_e32 v11, v12, v11
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v3, off offset:40
	scratch_store_b32 off, v2, off offset:48
	scratch_store_b32 off, v1, off offset:68
	scratch_store_b32 off, v31, off offset:36
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v3, 0, v6
	v_dual_mov_b32 v55, v0 :: v_dual_add_nc_u32 v2, 0, v8
	v_mov_b32_e32 v57, v0
	scratch_store_b32 off, v3, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v49, v0 :: v_dual_add_nc_u32 v226, s38, v5
	scratch_store_b32 off, v2, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v11
	v_dual_mov_b32 v53, v0 :: v_dual_add_nc_u32 v232, 0, v10
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v59, v0
	scratch_store_b32 off, v2, off offset:60 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v177, off, off offset:52
	scratch_load_b32 v178, off, off offset:60
	scratch_load_b32 v179, off, off offset:68
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v61, v0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v63, v0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v65, v0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v67, v0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, v0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v71, v0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, v0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v75, v0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v77, v0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v79, v0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v81, v0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v83, v0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v85, v0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v87, v0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v89, v0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v91, v0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v93, v0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v95, v0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v97, v0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v99, v0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v101, v0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v103, v0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v105, v0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v107, v0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v109, v0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v111, v0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v113, v0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v115, v0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v117, v0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v119, v0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v121, v0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v123, v0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v125, v0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v127, v0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v129, v0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v131, v0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v133, v0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v135, v0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v137, v0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v139, v0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v141, v0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v143, v0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v145, v0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v147, v0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v149, v0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v151, v0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v153, v0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v155, v0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v157, v0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v159, v0
	v_lshl_add_u32 v236, s46, 2, v31
	s_lshl_b32 s60, s30, 2
	s_lshl_b32 s61, s61, 1
	s_sub_i32 s62, 0, s35
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 193 31                        ; kda_gluon.py:193:31
	v_cndmask_b32_e64 v1, 0x80000000, v212, s1
	v_cndmask_b32_e64 v2, 0x80000000, v226, s0
	.loc	1 199 29                        ; kda_gluon.py:199:29
	s_mov_b32 s26, s42
	s_mov_b32 s27, s43
	.loc	1 205 33                        ; kda_gluon.py:205:33
	v_mov_b16_e32 v4.h, 0
	.loc	1 193 31                        ; kda_gluon.py:193:31
	s_clause 0x1
	buffer_load_u8 v0, v1, s[40:43], 0 offen
	buffer_load_u8 v3, v2, s[40:43], 0 offen
	.loc	1 225 58                        ; kda_gluon.py:225:58
	s_ashr_i32 s35, s34, 31
	v_mov_b32_e32 v6, 0
	.loc	1 274 28                        ; kda_gluon.py:274:28
	s_mov_b32 s54, s42
	.loc	1 205 33                        ; kda_gluon.py:205:33
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v3.h, v4.h
	.loc	1 274 28                        ; kda_gluon.py:274:28
	s_mov_b32 s55, s43
	v_dual_mov_b32 v198, v180 :: v_dual_mov_b32 v191, v173
	.loc	1 303 17                        ; kda_gluon.py:303:17
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	.loc	1 327 21                        ; kda_gluon.py:327:21
	s_mov_b32 s38, s42
	s_mov_b32 s39, s43
	v_dual_mov_b32 v197, v235 :: v_dual_add_nc_u32 v212, s59, v212
	v_dual_mov_b32 v201, v183 :: v_dual_mov_b32 v196, v234
	v_mov_b32_e32 v182, v161
	v_dual_mov_b32 v180, v162 :: v_dual_mov_b32 v199, v181
	v_dual_mov_b32 v181, v163 :: v_dual_mov_b32 v200, v210
	v_mov_b32_e32 v202, v184
	v_mov_b32_e32 v204, v186
	v_mov_b32_e32 v184, v166
	v_mov_b32_e32 v186, v168
	v_mov_b32_e32 v206, v188
	v_mov_b32_e32 v188, v170
	v_mov_b32_e32 v190, v172
	v_mov_b32_e32 v194, v176
	v_mov_b32_e32 v210, v192
	v_mov_b32_e32 v192, v174
	.loc	1 311 21                        ; kda_gluon.py:311:21
	v_add_nc_u32_e32 v226, s59, v226
	.loc	1 193 31                        ; kda_gluon.py:193:31
	v_cndmask_b16 v0.l, 0, v0.l, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 207 21                        ; kda_gluon.py:207:21
	v_and_b16 v0.h, v0.l, 15
	.loc	1 208 22                        ; kda_gluon.py:208:22
	v_lshrrev_b16 v0.l, 4, v0.l
	.loc	1 205 33                        ; kda_gluon.py:205:33
	v_cndmask_b16 v4.l, v0.l, v0.h, s19
	.loc	1 199 29                        ; kda_gluon.py:199:29
	s_clause 0x1
	buffer_load_u8 v0, v1, s[24:27], 0 offen
	buffer_load_u8 v1, v2, s[24:27], 0 offen
	.loc	1 225 58                        ; kda_gluon.py:225:58
	s_lshl_b64 s[26:27], s[34:35], 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_u32 s30, s50, s26
	.loc	1 217 21                        ; kda_gluon.py:217:21
	v_or_b32_e32 v2, -16, v4
	.loc	1 216 21                        ; kda_gluon.py:216:21
	v_cmp_lt_u16_e32 vcc_lo, 7, v4.l
	.loc	1 225 58                        ; kda_gluon.py:225:58
	s_addc_u32 s31, s51, s27
	.loc	1 226 56                        ; kda_gluon.py:226:56
	s_add_u32 s26, s22, s26
	s_addc_u32 s27, s23, s27
	.loc	1 215 31                        ; kda_gluon.py:215:31
	v_cndmask_b32_e32 v2, v4, v2, vcc_lo
	.loc	1 199 29                        ; kda_gluon.py:199:29
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v0.l, 0, v0.l, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 212 21                        ; kda_gluon.py:212:21
	v_and_b16 v0.h, v0.l, 15
	.loc	1 213 22                        ; kda_gluon.py:213:22
	v_lshrrev_b16 v0.l, 4, v0.l
	.loc	1 210 31                        ; kda_gluon.py:210:31
	v_cndmask_b16 v4.l, v0.l, v0.h, s19
	.loc	1 193 31                        ; kda_gluon.py:193:31
	v_cndmask_b16 v0.l, 0, v3.l, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 207 21                        ; kda_gluon.py:207:21
	v_and_b16 v0.h, v0.l, 15
	.loc	1 208 22                        ; kda_gluon.py:208:22
	v_lshrrev_b16 v0.l, 4, v0.l
	.loc	1 205 33                        ; kda_gluon.py:205:33
	v_cndmask_b16 v3.l, v0.l, v0.h, s19
	.loc	1 199 29                        ; kda_gluon.py:199:29
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v0.l, 0, v1.l, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 217 21                        ; kda_gluon.py:217:21
	v_or_b32_e32 v1, -16, v3
	.loc	1 212 21                        ; kda_gluon.py:212:21
	v_and_b16 v0.h, v0.l, 15
	.loc	1 213 22                        ; kda_gluon.py:213:22
	v_lshrrev_b16 v0.l, 4, v0.l
	.loc	1 216 21                        ; kda_gluon.py:216:21
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 210 31                        ; kda_gluon.py:210:31
	v_cndmask_b16 v0.l, v0.l, v0.h, s19
	v_mov_b16_e32 v0.h, v4.h
	.loc	1 215 31                        ; kda_gluon.py:215:31
	v_cndmask_b32_e32 v1, v3, v1, vcc_lo
	.loc	1 225 21                        ; kda_gluon.py:225:21
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 221 21                        ; kda_gluon.py:221:21
	v_cmp_lt_u16_e32 vcc_lo, 7, v0.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 222 21                        ; kda_gluon.py:222:21
	v_or_b32_e32 v3, -16, v0
	.loc	1 225 21                        ; kda_gluon.py:225:21
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 220 29                        ; kda_gluon.py:220:29
	v_cndmask_b32_e32 v0, v0, v3, vcc_lo
	.loc	1 225 21                        ; kda_gluon.py:225:21
	s_clause 0x1
	global_load_u16 v3, v6, s[30:31]
	global_load_u16 v5, v6, s[26:27]
	.loc	1 221 21                        ; kda_gluon.py:221:21
	v_cmp_lt_u16_e32 vcc_lo, 7, v4.l
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp2:
	.loc	1 281 34                        ; kda_gluon.py:281:34
	s_lshl_b64 s[26:27], s[34:35], 2
	.loc	1 267 21                        ; kda_gluon.py:267:21
	s_mov_b32 s30, s42
	.loc	1 281 34                        ; kda_gluon.py:281:34
	s_add_u32 s26, s48, s26
	.loc	1 267 21                        ; kda_gluon.py:267:21
	s_mov_b32 s31, s43
	.loc	1 281 34                        ; kda_gluon.py:281:34
	s_addc_u32 s27, s49, s27
	.loc	1 225 21                        ; kda_gluon.py:225:21
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v239, v3, v1
	.loc	1 222 21                        ; kda_gluon.py:222:21
	v_or_b32_e32 v1, -16, v4
	.loc	1 225 21                        ; kda_gluon.py:225:21
	v_mul_f32_e32 v240, v3, v2
	.loc	1 226 21                        ; kda_gluon.py:226:21
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v5
	v_cvt_f32_i32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 220 29                        ; kda_gluon.py:220:29
	v_dual_cndmask_b32 v1, v4, v1 :: v_dual_mul_f32 v8, v2, v0
	.loc	1 226 21                        ; kda_gluon.py:226:21
	v_cvt_f32_i32_e32 v0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v9, v2, v0
	scratch_load_b32 v2, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 242 41                        ; kda_gluon.py:242:41
	v_mul_f32_e32 v0, v240, v240
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_fmac_f32_e32 v0, v239, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v0, v0, v0 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v0, v0, v0 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v0, v0, v0 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v0, v0, v0 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_permlanex16_b32 v1, v0, -1, -1 op_sel:[1,0]
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_e32 v0, v0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_readlane_b32 s2, v0, 31
.Ltmp7:
	.loc	1 243 41                        ; kda_gluon.py:243:41
	v_mul_f32_e32 v0, v9, v9
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_fmac_f32_e32 v0, v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v0, v0, v0 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v0, v0, v0 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v0, v0, v0 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v0, v0, v0 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_permlanex16_b32 v1, v0, -1, -1 op_sel:[1,0]
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_dual_add_f32 v0, v0, v1 :: v_dual_mov_b32 v1, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_readlane_b32 s2, v0, 31
	v_mov_b32_e32 v0, s2
.Ltmp12:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v3, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v10, v3
.Ltmp13:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v0
.Ltmp14:
	.loc	1 274 28 is_stmt 1              ; kda_gluon.py:274:28
	v_add_nc_u32_e32 v0, 0x100, v236
.Ltmp15:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v3
.Ltmp16:
	.loc	1 281 26                        ; kda_gluon.py:281:26
	global_load_b32 v244, v6, s[26:27]
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 310 32                        ; kda_gluon.py:310:32
	s_add_i32 s26, s62, s21
	.loc	1 274 28                        ; kda_gluon.py:274:28
	buffer_load_b32 v0, v0, s[52:55], 0 offen
	.loc	1 280 21                        ; kda_gluon.py:280:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, 0x3fb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v1, 0x80000000, v236, s0
	.loc	1 311 21                        ; kda_gluon.py:311:21
	v_add_nc_u32_e32 v236, s60, v236
	.loc	1 274 28                        ; kda_gluon.py:274:28
	buffer_load_b32 v1, v1, s[52:55], 0 offen
	.loc	1 280 21                        ; kda_gluon.py:280:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v2, 0x3fb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, 0x3fb8aa3b, v1
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v1, 0x3fb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v0, v2
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s2
	.loc	1 310 32                        ; kda_gluon.py:310:32
	s_add_i32 s2, s21, -3
	.loc	1 280 21                        ; kda_gluon.py:280:21
	v_exp_f32_e32 v1, v1
	.loc	1 310 32                        ; kda_gluon.py:310:32
	s_and_b32 s2, s2, 3
	s_cselect_b32 s2, 0, -1
	.loc	1 311 21                        ; kda_gluon.py:311:21
	s_cmp_eq_u32 s26, 3
	s_cselect_b32 s26, -1, 0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 280 21                        ; kda_gluon.py:280:21
	v_ldexp_f32 v0, v0, v2
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 313 30                        ; kda_gluon.py:313:30
	s_ashr_i32 s27, s21, 31
	.loc	1 333 13                        ; kda_gluon.py:333:13
	s_add_i32 s34, s34, s57
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v0, 1.0, v0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 280 21                        ; kda_gluon.py:280:21
	v_ldexp_f32 v1, v1, v2
	.loc	1 267 21                        ; kda_gluon.py:267:21
	v_cndmask_b32_e64 v2, 0x80000000, v227, s18
	.loc	1 311 21                        ; kda_gluon.py:311:21
	v_add_nc_u32_e32 v227, s61, v227
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v1, 1.0, v1, s1
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	scratch_store_b32 off, v2, off          ; 4-byte Folded Spill
.Ltmp18:
	.loc	1 267 21                        ; kda_gluon.py:267:21
	buffer_load_u16 v238, v2, s[28:31], 0 offen
	.loc	1 282 27                        ; kda_gluon.py:282:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v207, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 313 30                        ; kda_gluon.py:313:30
	s_lshr_b32 s30, s27, 30
	.loc	1 310 31                        ; kda_gluon.py:310:31
	s_or_b32 s27, s26, s2
	.loc	1 313 30                        ; kda_gluon.py:313:30
	s_add_i32 s2, s21, s30
	.loc	1 311 21                        ; kda_gluon.py:311:21
	s_add_i32 s21, s21, 1
	.loc	1 313 30                        ; kda_gluon.py:313:30
	s_ashr_i32 s2, s2, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 315 21                        ; kda_gluon.py:315:21
	s_add_i32 s2, s2, s33
	s_mul_i32 s26, s56, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s3, s27
	.loc	1 282 27                        ; kda_gluon.py:282:27
	s_waitcnt vmcnt(0)
	ds_store_b64 v207, v[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v232
	ds_load_b128 v[4:7], v232 offset:16
	.loc	1 284 21                        ; kda_gluon.py:284:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v32, v32, v0 :: v_dual_mul_f32 v47, v47, v6
	v_mul_f32_e32 v33, v33, v0
	v_dual_mul_f32 v34, v34, v0 :: v_dual_mul_f32 v105, v105, v5
	v_dual_mul_f32 v35, v35, v0 :: v_dual_mul_f32 v38, v38, v2
	v_mul_f32_e32 v36, v36, v2
	v_mul_f32_e32 v37, v37, v2
	v_dual_mul_f32 v39, v39, v2 :: v_dual_mul_f32 v96, v96, v1
	v_mul_f32_e32 v43, v43, v4
	v_mul_f32_e32 v97, v97, v1
	v_dual_mul_f32 v98, v98, v1 :: v_dual_mul_f32 v109, v109, v7
	v_dual_mul_f32 v99, v99, v1 :: v_dual_mul_f32 v100, v100, v3
	v_mul_f32_e32 v107, v107, v5
	v_mul_f32_e32 v101, v101, v3
	v_mul_f32_e32 v102, v102, v3
	v_dual_mul_f32 v103, v103, v3 :: v_dual_mul_f32 v40, v40, v4
	v_mul_f32_e32 v111, v111, v7
	v_mul_f32_e32 v41, v41, v4
	v_mul_f32_e32 v42, v42, v4
	v_mul_f32_e32 v44, v44, v6
	v_mul_f32_e32 v45, v45, v6
	v_mul_f32_e32 v46, v46, v6
	v_mul_f32_e32 v104, v104, v5
	v_mul_f32_e32 v106, v106, v5
	v_mul_f32_e32 v108, v108, v7
	v_mul_f32_e32 v110, v110, v7
	.loc	1 282 27                        ; kda_gluon.py:282:27
	ds_load_b128 v[0:3], v232 offset:128
	ds_load_b128 v[4:7], v232 offset:144
	.loc	1 284 21                        ; kda_gluon.py:284:21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v48, v48, v0 :: v_dual_mul_f32 v119, v119, v3
	v_mul_f32_e32 v49, v49, v0
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v50, v50, v0 :: v_dual_mul_f32 v61, v61, v6
	v_dual_mul_f32 v51, v51, v0 :: v_dual_mul_f32 v52, v52, v2
	v_mul_f32_e32 v59, v59, v4
	v_mul_f32_e32 v53, v53, v2
	v_dual_mul_f32 v54, v54, v2 :: v_dual_mul_f32 v121, v121, v5
	v_dual_mul_f32 v55, v55, v2 :: v_dual_mul_f32 v112, v112, v1
	v_mul_f32_e32 v63, v63, v6
	v_mul_f32_e32 v113, v113, v1
	v_dual_mul_f32 v114, v114, v1 :: v_dual_mul_f32 v125, v125, v7
	v_dual_mul_f32 v115, v115, v1 :: v_dual_mul_f32 v116, v116, v3
	v_mul_f32_e32 v123, v123, v5
	v_mul_f32_e32 v117, v117, v3
	v_mul_f32_e32 v118, v118, v3
	v_dual_mul_f32 v56, v56, v4 :: v_dual_mul_f32 v127, v127, v7
	v_mul_f32_e32 v57, v57, v4
	v_mul_f32_e32 v58, v58, v4
	v_mul_f32_e32 v60, v60, v6
	v_mul_f32_e32 v62, v62, v6
	v_mul_f32_e32 v120, v120, v5
	v_mul_f32_e32 v122, v122, v5
	v_mul_f32_e32 v124, v124, v7
	v_mul_f32_e32 v126, v126, v7
	.loc	1 282 27                        ; kda_gluon.py:282:27
	ds_load_b128 v[0:3], v232 offset:256
	ds_load_b128 v[4:7], v232 offset:272
	.loc	1 284 21                        ; kda_gluon.py:284:21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v64, v64, v0 :: v_dual_mul_f32 v135, v135, v3
	v_mul_f32_e32 v65, v65, v0
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v66, v66, v0 :: v_dual_mul_f32 v77, v77, v6
	v_dual_mul_f32 v67, v67, v0 :: v_dual_mul_f32 v68, v68, v2
	v_mul_f32_e32 v75, v75, v4
	v_mul_f32_e32 v69, v69, v2
	v_dual_mul_f32 v70, v70, v2 :: v_dual_mul_f32 v137, v137, v5
	v_dual_mul_f32 v71, v71, v2 :: v_dual_mul_f32 v128, v128, v1
	v_mul_f32_e32 v79, v79, v6
	v_mul_f32_e32 v129, v129, v1
	v_dual_mul_f32 v130, v130, v1 :: v_dual_mul_f32 v141, v141, v7
	v_dual_mul_f32 v131, v131, v1 :: v_dual_mul_f32 v132, v132, v3
	v_mul_f32_e32 v139, v139, v5
	v_mul_f32_e32 v133, v133, v3
	v_mul_f32_e32 v134, v134, v3
	v_dual_mul_f32 v72, v72, v4 :: v_dual_mul_f32 v143, v143, v7
	v_mul_f32_e32 v73, v73, v4
	v_mul_f32_e32 v74, v74, v4
	v_mul_f32_e32 v76, v76, v6
	v_mul_f32_e32 v78, v78, v6
	v_mul_f32_e32 v136, v136, v5
	v_mul_f32_e32 v138, v138, v5
	v_mul_f32_e32 v140, v140, v7
	v_mul_f32_e32 v142, v142, v7
	.loc	1 282 27                        ; kda_gluon.py:282:27
	ds_load_b128 v[0:3], v232 offset:384
	ds_load_b128 v[4:7], v232 offset:400
	.loc	1 283 23                        ; kda_gluon.py:283:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v80, v80, v0 :: v_dual_mul_f32 v151, v151, v3
	v_mul_f32_e32 v81, v81, v0
	v_dual_mul_f32 v82, v82, v0 :: v_dual_mul_f32 v93, v93, v6
	v_dual_mul_f32 v83, v83, v0 :: v_dual_mov_b32 v0, v10
	v_dual_mul_f32 v144, v144, v1 :: v_dual_mul_f32 v95, v95, v6
	v_mul_f32_e32 v145, v145, v1
	v_dual_mul_f32 v146, v146, v1 :: v_dual_mul_f32 v157, v157, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v147, v147, v1 :: v_dual_mul_f32 v84, v84, v2
	v_mul_f32_e32 v91, v91, v4
	v_dual_mul_f32 v85, v85, v2 :: v_dual_add_f32 v0, v10, v0
	v_dual_mul_f32 v86, v86, v2 :: v_dual_mul_f32 v153, v153, v5
	v_dual_mul_f32 v87, v87, v2 :: v_dual_mul_f32 v148, v148, v3
	v_mul_f32_e32 v155, v155, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 242 26                        ; kda_gluon.py:242:26
	v_sqrt_f32_e32 v0, v0
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_mul_f32_e32 v150, v150, v3
	v_dual_mul_f32 v149, v149, v3 :: v_dual_mul_f32 v88, v88, v4
	v_mul_f32_e32 v159, v159, v7
	v_dual_mul_f32 v89, v89, v4 :: v_dual_mul_f32 v154, v154, v5
	.loc	1 244 25                        ; kda_gluon.py:244:25
	v_max_f32_e32 v241, 0x2b8cbccc, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 21 is_stmt 0              ; kda_gluon.py:244:21
	v_div_scale_f32 v0, null, v241, v241, v239
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v0, v1, 1.0
	.loc	1 284 21 is_stmt 1              ; kda_gluon.py:284:21
	v_dual_mul_f32 v92, v92, v6 :: v_dual_fmac_f32 v1, v2, v1
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_scale_f32 v2, vcc_lo, v239, v241, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v156, v156, v7 :: v_dual_mul_f32 v3, v2, v1
	v_mul_f32_e32 v90, v90, v4
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_fma_f32 v4, -v0, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, v4, v1
	v_fma_f32 v0, -v0, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v242, v0, v1, v3
	v_div_scale_f32 v0, null, v241, v241, v240
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v2, v1
	v_div_scale_f32 v2, vcc_lo, v240, v241, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v3, v2, v1
	v_fma_f32 v4, -v0, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v94, v94, v6 :: v_dual_fmac_f32 v3, v4, v1
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_fma_f32 v0, -v0, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v243, v0, v1, v3
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_mov_b32_e32 v0, v11
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_e32 v0, v11, v0
.Ltmp23:
	.loc	1 243 26                        ; kda_gluon.py:243:26
	v_sqrt_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v152, v152, v5 :: v_dual_max_f32 v1, 0x2b8cbccc, v0
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_div_scale_f32 v0, null, v1, v1, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v2, v0
	v_fma_f32 v3, -v0, v2, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v2, v3, v2
	v_div_scale_f32 v3, vcc_lo, v8, v1, v8
	v_mul_f32_e32 v4, v3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v0, v4, v3
	v_fmac_f32_e32 v4, v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v4, v3
	v_div_fmas_f32 v0, v0, v2, v4
	v_div_scale_f32 v2, null, v1, v1, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v1, v8
	v_rcp_f32_e32 v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v4, v3
	v_div_scale_f32 v4, vcc_lo, v9, v1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v5, v4, v3
	v_fma_f32 v6, -v2, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, v6, v3
	v_fma_f32 v2, -v2, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v2, v2, v3, v5
	v_div_fixup_f32 v1, v2, v1, v9
	.loc	1 283 23                        ; kda_gluon.py:283:23
	ds_store_b64 v207, v[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v232 offset:256
	ds_load_b128 v[8:11], v232 offset:272
	ds_load_b128 v[12:15], v232
	ds_load_b128 v[24:27], v232 offset:16
	ds_load_b128 v[28:31], v232 offset:128
	ds_load_b128 v[20:23], v232 offset:144
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_mul_f32_e32 v158, v158, v7
	v_mov_b32_e32 v234, v160
	s_waitcnt lgkmcnt(4)
	v_dual_mov_b32 v195, v164 :: v_dual_mul_f32 v164, v141, v11
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v252, v140, v11
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v1, v44, v26
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v250, v108, v27 :: v_dual_mul_f32 v255, v61, v22
	v_dual_mul_f32 v251, v124, v23 :: v_dual_mul_f32 v254, v45, v26
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v252, v136, v9
.Ltmp25:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v0, v36, v14
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v1, v40, v24
	v_fmac_f32_e32 v250, v104, v25
	v_dual_fmac_f32 v251, v120, v21 :: v_dual_fmac_f32 v254, v41, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v0, v32, v12
	v_fmac_f32_e32 v255, v57, v20
.Ltmp27:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v160, v77, v10
	v_mul_f32_e32 v162, v109, v27
	v_mul_f32_e32 v163, v125, v23
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v245, v0, v1
.Ltmp29:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v0, v52, v30
	v_dual_mul_f32 v1, v60, v22 :: v_dual_fmac_f32 v160, v73, v8
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v162, v105, v25
	v_fmac_f32_e32 v164, v137, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v0, v48, v28
	v_fmac_f32_e32 v1, v56, v20
	v_fmac_f32_e32 v163, v121, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_f32_e32 v246, v0, v1
.Ltmp31:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v0, v68, v18
	v_mul_f32_e32 v1, v76, v10
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v0, v64, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, v72, v8
	v_add_f32_e32 v247, v0, v1
.Ltmp33:
	.loc	1 283 23                        ; kda_gluon.py:283:23
	ds_load_b128 v[4:7], v232 offset:384
	ds_load_b128 v[0:3], v232 offset:400
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp35:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v248, v84, v6
	v_mul_f32_e32 v249, v92, v2
	v_mul_f32_e32 v253, v156, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v161, v93, v2 :: v_dual_fmac_f32 v248, v80, v4
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v249, v88, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v253, v152, v1
	v_dual_fmac_f32 v161, v89, v0 :: v_dual_add_f32 v248, v248, v249
.Ltmp37:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v249, v100, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v249, v96, v13
	v_dual_add_f32 v249, v249, v250 :: v_dual_mul_f32 v250, v116, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v250, v112, v29
	v_add_f32_e32 v250, v250, v251
.Ltmp39:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v251, v132, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v251, v128, v17
	v_dual_add_f32 v251, v251, v252 :: v_dual_mul_f32 v252, v148, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v252, v144, v5
	v_dual_add_f32 v252, v252, v253 :: v_dual_mul_f32 v253, v37, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v253, v33, v12
	v_add_f32_e32 v253, v253, v254
.Ltmp41:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v254, v53, v30
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v245, v245, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v254, v49, v28
	v_dual_add_f32 v254, v254, v255 :: v_dual_mul_f32 v255, v69, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v255, v65, v16
	v_dual_add_f32 v160, v255, v160 :: v_dual_mul_f32 v255, v85, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v255, v81, v4
	v_add_f32_e32 v246, v247, v248
	v_dual_add_f32 v248, v251, v252 :: v_dual_add_f32 v247, v249, v250
	v_add_f32_e32 v249, v253, v254
	v_add_f32_e32 v161, v255, v161
.Ltmp43:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v255, v101, v15
	v_mul_f32_e32 v250, v159, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v160, v160, v161
	v_fmac_f32_e32 v255, v97, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v160, v249, v160
	v_dual_add_f32 v162, v255, v162 :: v_dual_mul_f32 v255, v117, v31
.Ltmp45:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v249, v158, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v255, v113, v29
	v_fmac_f32_e32 v249, v154, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v163, v255, v163
.Ltmp47:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v255, v133, v19
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v161, v162, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v255, v129, v17
	v_dual_add_f32 v163, v245, v246 :: v_dual_add_f32 v164, v255, v164
.Ltmp49:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v255, v149, v7
	v_mov_b32_e32 v183, v165
	v_mul_f32_e32 v165, v157, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v255, v145, v5
	v_fmac_f32_e32 v165, v153, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v165, v255, v165
	v_add_f32_e32 v162, v164, v165
	v_dual_add_f32 v164, v247, v248 :: v_dual_mul_f32 v247, v126, v23
.Ltmp51:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v248, v142, v11
	v_mul_f32_e32 v165, v110, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v161, v161, v162 :: v_dual_add_f32 v162, v163, v164
	v_fmac_f32_e32 v247, v122, v21
.Ltmp53:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v164, v94, v2
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v248, v138, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_f32_e32 v160, v160, v161
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v161, v162, s63, 0xfedcba98 op_sel:[1,0]
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v165, v106, v25
	v_fmac_f32_e32 v164, v90, v0
	v_add_f32_e32 v245, v162, v161
.Ltmp57:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v162, v62, v22
	v_mul_f32_e32 v161, v46, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v162, v58, v20
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v163, v160, s63, 0xfedcba98 op_sel:[1,0]
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_fmac_f32 v161, v42, v24 :: v_dual_add_f32 v246, v160, v163
.Ltmp61:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v160, v38, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v160, v34, v12
	v_dual_add_f32 v160, v160, v161 :: v_dual_mul_f32 v161, v54, v30
.Ltmp63:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v163, v78, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v161, v50, v28
	v_fmac_f32_e32 v163, v74, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v161, v161, v162
.Ltmp65:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v162, v70, v18
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v162, v66, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v162, v162, v163
.Ltmp67:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v163, v86, v6 :: v_dual_add_f32 v160, v160, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v163, v82, v4
	v_dual_add_f32 v163, v163, v164 :: v_dual_mul_f32 v164, v102, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v161, v162, v163
	v_fmac_f32_e32 v164, v98, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v164, v164, v165 :: v_dual_mul_f32 v165, v118, v31
	v_fmac_f32_e32 v165, v114, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v165, v165, v247
.Ltmp69:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v247, v134, v19 :: v_dual_add_f32 v162, v164, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_fmac_f32 v247, v130, v17 :: v_dual_mul_f32 v164, v95, v2
	v_dual_add_f32 v247, v247, v248 :: v_dual_mul_f32 v248, v150, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v164, v91, v0
	v_fmac_f32_e32 v248, v146, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v248, v248, v249 :: v_dual_mul_f32 v249, v143, v11
	v_add_f32_e32 v163, v247, v248
.Ltmp71:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v248, v127, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v249, v139, v9
	v_fmac_f32_e32 v248, v123, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v160, v160, v161 :: v_dual_add_f32 v161, v162, v163
.Ltmp73:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v162, v63, v22
	v_dual_mul_f32 v163, v79, v10 :: v_dual_add_f32 v160, v160, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v162, v59, v20
	v_fmac_f32_e32 v163, v75, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v161, v160, s63, 0xfedcba98 op_sel:[1,0]
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v247, v160, v161 :: v_dual_mul_f32 v160, v39, v14
.Ltmp77:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v161, v47, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v160, v35, v12
	v_fmac_f32_e32 v161, v43, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v160, v160, v161 :: v_dual_mul_f32 v161, v55, v30
	v_fmac_f32_e32 v161, v51, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v161, v161, v162
.Ltmp79:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v162, v71, v18
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v160, v160, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v162, v67, v16
	v_dual_add_f32 v162, v162, v163 :: v_dual_mul_f32 v163, v87, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v163, v83, v4
	v_add_f32_e32 v163, v163, v164
.Ltmp81:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v164, v103, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v161, v162, v163
.Ltmp83:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v165, v111, v27
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v164, v99, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v160, v160, v161
	v_fmac_f32_e32 v165, v107, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v164, v164, v165 :: v_dual_mul_f32 v165, v119, v31
	v_fmac_f32_e32 v165, v115, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v165, v165, v248 :: v_dual_mul_f32 v248, v135, v19
	v_add_f32_e32 v162, v164, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v248, v131, v17
	v_fmac_f32_e32 v250, v155, v1
	v_dual_add_f32 v248, v248, v249 :: v_dual_mul_f32 v249, v151, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v249, v147, v5
	v_add_f32_e32 v249, v249, v250
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v163, v248, v249
	v_add_f32_e32 v161, v162, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v160, v160, v161
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v161, v160, s63, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v248, v160, v161
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	ds_store_b128 v177, v[245:248]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[245:248], v178
.Ltmp88:
	.loc	1 286 26                        ; kda_gluon.py:286:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v160, v245, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v161, v246, s63, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v245, v245, v160 :: v_dual_add_f32 v246, v246, v161
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v160, v247, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v161, v248, s63, 0xfedcba98 op_sel:[1,0]
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v247, v247, v160 :: v_dual_add_f32 v248, v248, v161
.Ltmp93:
	.loc	1 267 21                        ; kda_gluon.py:267:21
	v_lshlrev_b32_e32 v160, 16, v238
	.loc	1 286 26                        ; kda_gluon.py:286:26
	ds_store_2addr_b64 v179, v[245:246], v[247:248] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v161, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 267 21                        ; kda_gluon.py:267:21
	v_cndmask_b32_e64 v160, 0, v160, s18
	.loc	1 286 26                        ; kda_gluon.py:286:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v238, 0, v161
	ds_load_b32 v161, v238
	.loc	1 288 30                        ; kda_gluon.py:288:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 287 24                        ; kda_gluon.py:287:24
	v_sub_f32_e32 v160, v160, v161
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 289 17                        ; kda_gluon.py:289:17
	v_mul_f32_e32 v160, v244, v160
	.loc	1 288 30                        ; kda_gluon.py:288:30
	ds_store_b32 v238, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[244:247], v179 offset1:16
	.loc	1 294 27                        ; kda_gluon.py:294:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v36, v14, v244 :: v_dual_fmac_f32 v145, v5, v245
	v_dual_fmac_f32 v88, v0, v244 :: v_dual_fmac_f32 v147, v5, v247
	v_fmac_f32_e32 v90, v0, v246
	v_dual_fmac_f32 v89, v0, v245 :: v_dual_fmac_f32 v152, v1, v244
	v_dual_fmac_f32 v91, v0, v247 :: v_dual_fmac_f32 v154, v1, v246
	v_fmac_f32_e32 v155, v1, v247
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_fixup_f32 v0, v242, v241, v239
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_fmac_f32_e32 v153, v1, v245
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_fixup_f32 v1, v243, v241, v240
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v33, v12, v245 :: v_dual_fmac_f32 v38, v14, v246
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 295 21                        ; kda_gluon.py:295:21
	v_mul_f32_e32 v0, s58, v0
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v32, v12, v244 :: v_dual_mul_f32 v1, s58, v1
	v_dual_fmac_f32 v37, v14, v245 :: v_dual_fmac_f32 v100, v15, v244
	v_dual_fmac_f32 v137, v9, v245 :: v_dual_fmac_f32 v80, v4, v244
	v_dual_fmac_f32 v139, v9, v247 :: v_dual_fmac_f32 v82, v4, v246
	v_dual_fmac_f32 v141, v11, v245 :: v_dual_fmac_f32 v84, v6, v244
	v_dual_fmac_f32 v143, v11, v247 :: v_dual_fmac_f32 v86, v6, v246
	v_dual_fmac_f32 v81, v4, v245 :: v_dual_fmac_f32 v144, v5, v244
	v_dual_fmac_f32 v83, v4, v247 :: v_dual_fmac_f32 v146, v5, v246
	v_dual_fmac_f32 v85, v6, v245 :: v_dual_fmac_f32 v148, v7, v244
	v_dual_fmac_f32 v87, v6, v247 :: v_dual_fmac_f32 v150, v7, v246
	v_dual_fmac_f32 v149, v7, v245 :: v_dual_fmac_f32 v92, v2, v244
	v_dual_fmac_f32 v151, v7, v247 :: v_dual_fmac_f32 v94, v2, v246
	v_dual_fmac_f32 v93, v2, v245 :: v_dual_fmac_f32 v156, v3, v244
	v_dual_fmac_f32 v95, v2, v247 :: v_dual_fmac_f32 v158, v3, v246
	v_fmac_f32_e32 v157, v3, v245
	v_fmac_f32_e32 v159, v3, v247
	.loc	1 294 27                        ; kda_gluon.py:294:27
	ds_store_b64 v207, v[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v232
	ds_load_b128 v[4:7], v232 offset:16
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v39, v14, v247 :: v_dual_fmac_f32 v102, v15, v246
	v_dual_fmac_f32 v101, v15, v245 :: v_dual_fmac_f32 v44, v26, v244
	v_dual_fmac_f32 v103, v15, v247 :: v_dual_fmac_f32 v46, v26, v246
	v_dual_fmac_f32 v45, v26, v245 :: v_dual_fmac_f32 v108, v27, v244
	v_dual_fmac_f32 v47, v26, v247 :: v_dual_fmac_f32 v110, v27, v246
	v_dual_fmac_f32 v109, v27, v245 :: v_dual_fmac_f32 v52, v30, v244
	v_dual_fmac_f32 v111, v27, v247 :: v_dual_fmac_f32 v54, v30, v246
	v_fmac_f32_e32 v34, v12, v246
	v_dual_fmac_f32 v35, v12, v247 :: v_dual_fmac_f32 v98, v13, v246
	v_fmac_f32_e32 v96, v13, v244
	v_dual_fmac_f32 v97, v13, v245 :: v_dual_fmac_f32 v40, v24, v244
	v_dual_fmac_f32 v99, v13, v247 :: v_dual_fmac_f32 v42, v24, v246
	v_dual_fmac_f32 v41, v24, v245 :: v_dual_fmac_f32 v104, v25, v244
	v_dual_fmac_f32 v43, v24, v247 :: v_dual_fmac_f32 v106, v25, v246
	v_dual_fmac_f32 v105, v25, v245 :: v_dual_fmac_f32 v48, v28, v244
	v_dual_fmac_f32 v107, v25, v247 :: v_dual_fmac_f32 v50, v28, v246
	v_dual_fmac_f32 v53, v30, v245 :: v_dual_fmac_f32 v116, v31, v244
	v_dual_fmac_f32 v113, v29, v245 :: v_dual_fmac_f32 v56, v20, v244
	v_dual_fmac_f32 v115, v29, v247 :: v_dual_fmac_f32 v58, v20, v246
	v_dual_fmac_f32 v117, v31, v245 :: v_dual_fmac_f32 v60, v22, v244
	v_dual_fmac_f32 v119, v31, v247 :: v_dual_fmac_f32 v62, v22, v246
	v_dual_fmac_f32 v57, v20, v245 :: v_dual_fmac_f32 v120, v21, v244
	v_dual_fmac_f32 v59, v20, v247 :: v_dual_fmac_f32 v122, v21, v246
	v_dual_fmac_f32 v61, v22, v245 :: v_dual_fmac_f32 v124, v23, v244
	v_dual_fmac_f32 v63, v22, v247 :: v_dual_fmac_f32 v126, v23, v246
	v_dual_fmac_f32 v121, v21, v245 :: v_dual_fmac_f32 v64, v16, v244
	v_dual_fmac_f32 v123, v21, v247 :: v_dual_fmac_f32 v66, v16, v246
	v_dual_fmac_f32 v125, v23, v245 :: v_dual_fmac_f32 v68, v18, v244
	v_dual_fmac_f32 v127, v23, v247 :: v_dual_fmac_f32 v70, v18, v246
	v_dual_fmac_f32 v65, v16, v245 :: v_dual_fmac_f32 v128, v17, v244
	v_dual_fmac_f32 v67, v16, v247 :: v_dual_fmac_f32 v130, v17, v246
	v_dual_fmac_f32 v69, v18, v245 :: v_dual_fmac_f32 v132, v19, v244
	v_dual_fmac_f32 v71, v18, v247 :: v_dual_fmac_f32 v134, v19, v246
	v_dual_fmac_f32 v129, v17, v245 :: v_dual_fmac_f32 v72, v8, v244
	v_dual_fmac_f32 v131, v17, v247 :: v_dual_fmac_f32 v74, v8, v246
	v_dual_fmac_f32 v133, v19, v245 :: v_dual_fmac_f32 v76, v10, v244
	v_dual_fmac_f32 v135, v19, v247 :: v_dual_fmac_f32 v78, v10, v246
	v_dual_fmac_f32 v73, v8, v245 :: v_dual_fmac_f32 v136, v9, v244
	v_dual_fmac_f32 v75, v8, v247 :: v_dual_fmac_f32 v138, v9, v246
	v_dual_fmac_f32 v77, v10, v245 :: v_dual_fmac_f32 v140, v11, v244
	v_dual_fmac_f32 v79, v10, v247 :: v_dual_fmac_f32 v142, v11, v246
	.loc	1 298 33                        ; kda_gluon.py:298:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v8, v36, v2
	v_dual_mul_f32 v9, v100, v3 :: v_dual_mul_f32 v12, v38, v2
	v_mul_f32_e32 v10, v37, v2
	v_dual_mul_f32 v11, v101, v3 :: v_dual_mul_f32 v14, v39, v2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v13, v102, v3 :: v_dual_mul_f32 v16, v44, v6
	v_dual_mul_f32 v15, v103, v3 :: v_dual_mul_f32 v18, v45, v6
	v_dual_mul_f32 v17, v108, v7 :: v_dual_mul_f32 v20, v46, v6
	v_dual_mul_f32 v19, v109, v7 :: v_dual_mul_f32 v22, v47, v6
	v_mul_f32_e32 v21, v110, v7
	v_mul_f32_e32 v23, v111, v7
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v49, v28, v245 :: v_dual_fmac_f32 v112, v29, v244
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v8, v32, v0
	v_dual_fmac_f32 v9, v96, v1 :: v_dual_fmac_f32 v12, v34, v0
	v_fmac_f32_e32 v10, v33, v0
	v_dual_fmac_f32 v11, v97, v1 :: v_dual_fmac_f32 v14, v35, v0
	v_dual_fmac_f32 v13, v98, v1 :: v_dual_fmac_f32 v16, v40, v4
	v_dual_fmac_f32 v15, v99, v1 :: v_dual_fmac_f32 v18, v41, v4
	v_dual_fmac_f32 v17, v104, v5 :: v_dual_fmac_f32 v20, v42, v4
	v_dual_fmac_f32 v19, v105, v5 :: v_dual_fmac_f32 v22, v43, v4
	v_fmac_f32_e32 v21, v106, v5
	v_fmac_f32_e32 v23, v107, v5
.Ltmp95:
	.loc	1 294 27                        ; kda_gluon.py:294:27
	ds_load_b128 v[0:3], v232 offset:128
	ds_load_b128 v[4:7], v232 offset:144
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v55, v30, v247 :: v_dual_fmac_f32 v118, v31, v246
	v_dual_fmac_f32 v51, v28, v247 :: v_dual_fmac_f32 v114, v29, v246
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v9, v9, v17 :: v_dual_add_f32 v10, v10, v18
	s_waitcnt lgkmcnt(1)
	v_dual_add_f32 v11, v11, v19 :: v_dual_mul_f32 v24, v52, v2
.Ltmp97:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v165, v126, v7
	v_dual_mul_f32 v25, v116, v3 :: v_dual_mul_f32 v28, v54, v2
	v_mul_f32_e32 v26, v53, v2
	v_dual_mul_f32 v27, v117, v3 :: v_dual_mul_f32 v30, v55, v2
	v_dual_mul_f32 v29, v118, v3 :: v_dual_mul_f32 v160, v60, v6
	v_dual_mul_f32 v31, v119, v3 :: v_dual_mul_f32 v162, v61, v6
	v_dual_mul_f32 v161, v124, v7 :: v_dual_mul_f32 v164, v62, v6
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v165, v122, v5 :: v_dual_mul_f32 v240, v127, v7
.Ltmp99:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v163, v125, v7
	v_dual_mul_f32 v239, v63, v6 :: v_dual_fmac_f32 v24, v48, v0
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v25, v112, v1 :: v_dual_fmac_f32 v28, v50, v0
	v_fmac_f32_e32 v26, v49, v0
	v_dual_fmac_f32 v27, v113, v1 :: v_dual_fmac_f32 v30, v51, v0
	v_dual_fmac_f32 v29, v114, v1 :: v_dual_fmac_f32 v160, v56, v4
	v_dual_fmac_f32 v31, v115, v1 :: v_dual_fmac_f32 v162, v57, v4
	v_dual_fmac_f32 v161, v120, v5 :: v_dual_fmac_f32 v164, v58, v4
	v_fmac_f32_e32 v239, v59, v4
	v_fmac_f32_e32 v240, v123, v5
	v_fmac_f32_e32 v163, v121, v5
.Ltmp101:
	.loc	1 294 27                        ; kda_gluon.py:294:27
	ds_load_b128 v[0:3], v232 offset:256
	ds_load_b128 v[4:7], v232 offset:272
	.loc	1 298 33                        ; kda_gluon.py:298:33
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v241, v68, v2 :: v_dual_mul_f32 v246, v134, v3
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v251, v77, v6 :: v_dual_mul_f32 v242, v132, v3
	v_dual_mul_f32 v243, v69, v2 :: v_dual_mul_f32 v248, v135, v3
	v_dual_mul_f32 v244, v133, v3 :: v_dual_mul_f32 v245, v70, v2
	v_dual_mul_f32 v250, v140, v7 :: v_dual_mul_f32 v247, v71, v2
	v_dual_mul_f32 v252, v141, v7 :: v_dual_mul_f32 v249, v76, v6
	v_dual_mul_f32 v254, v142, v7 :: v_dual_fmac_f32 v251, v73, v4
	v_dual_mul_f32 v253, v78, v6 :: v_dual_mul_f32 v166, v143, v7
	v_mul_f32_e32 v255, v79, v6
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v241, v64, v0 :: v_dual_fmac_f32 v246, v130, v1
	v_dual_fmac_f32 v242, v128, v1 :: v_dual_fmac_f32 v243, v65, v0
	v_fmac_f32_e32 v248, v131, v1
	v_dual_fmac_f32 v244, v129, v1 :: v_dual_fmac_f32 v245, v66, v0
	v_dual_fmac_f32 v250, v136, v5 :: v_dual_fmac_f32 v247, v67, v0
	v_dual_fmac_f32 v252, v137, v5 :: v_dual_fmac_f32 v249, v72, v4
	v_fmac_f32_e32 v254, v138, v5
	v_dual_fmac_f32 v253, v74, v4 :: v_dual_fmac_f32 v166, v139, v5
	v_fmac_f32_e32 v255, v75, v4
.Ltmp103:
	.loc	1 294 27                        ; kda_gluon.py:294:27
	ds_load_b128 v[0:3], v232 offset:384
	ds_load_b128 v[4:7], v232 offset:400
	v_mov_b32_e32 v235, v203
	v_mov_b32_e32 v207, v189
	v_mov_b32_e32 v189, v171
	v_mov_b32_e32 v193, v175
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	s_waitcnt lgkmcnt(1)
	v_dual_add_f32 v17, v242, v250 :: v_dual_mul_f32 v168, v148, v3
	v_mov_b32_e32 v203, v185
	v_mov_b32_e32 v185, v167
.Ltmp105:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v167, v84, v2 :: v_dual_mul_f32 v170, v149, v3
	v_mov_b32_e32 v205, v187
	v_mov_b32_e32 v187, v169
	v_dual_mul_f32 v169, v85, v2 :: v_dual_mul_f32 v172, v150, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v167, v80, v0
.Ltmp107:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v3, v151, v3 :: v_dual_fmac_f32 v168, v144, v1
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v169, v81, v0 :: v_dual_fmac_f32 v172, v146, v1
	v_dual_fmac_f32 v170, v145, v1 :: v_dual_mul_f32 v171, v86, v2
.Ltmp109:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v173, v87, v2 :: v_dual_mul_f32 v174, v157, v7
	v_dual_mul_f32 v2, v93, v6 :: v_dual_fmac_f32 v3, v147, v1
	v_mul_f32_e32 v176, v158, v7
	v_mul_f32_e32 v1, v156, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v173, v83, v0 :: v_dual_fmac_f32 v174, v153, v5
	v_fmac_f32_e32 v2, v89, v4
	v_dual_fmac_f32 v171, v82, v0 :: v_dual_mul_f32 v0, v92, v6
.Ltmp111:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v175, v94, v6
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v176, v154, v5
	v_dual_fmac_f32 v1, v152, v5 :: v_dual_mul_f32 v6, v95, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v0, v88, v4
	v_add_f32_e32 v18, v26, v162
	v_dual_add_f32 v2, v169, v2 :: v_dual_add_f32 v1, v168, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v6, v91, v4
	v_dual_fmac_f32 v175, v90, v4 :: v_dual_mul_f32 v4, v159, v7
	v_dual_add_f32 v7, v24, v160 :: v_dual_mov_b32 v160, v234
	v_mov_b32_e32 v234, v196
	v_add_f32_e32 v0, v167, v0
	v_dual_fmac_f32 v4, v155, v5 :: v_dual_add_f32 v5, v8, v16
	v_add_f32_e32 v8, v241, v249
	v_mov_b32_e32 v167, v185
	v_mov_b32_e32 v185, v203
	v_dual_mov_b32 v203, v235 :: v_dual_add_f32 v16, v25, v161
	v_add_f32_e32 v24, v243, v251
	v_dual_mov_b32 v162, v180 :: v_dual_mov_b32 v169, v187
	v_dual_add_f32 v19, v27, v163 :: v_dual_add_f32 v26, v170, v174
	v_mov_b32_e32 v163, v181
	v_add_f32_e32 v25, v244, v252
	v_dual_mov_b32 v170, v188 :: v_dual_add_f32 v5, v5, v7
	v_dual_mov_b32 v188, v206 :: v_dual_add_f32 v7, v9, v16
	v_dual_add_f32 v0, v8, v0 :: v_dual_add_f32 v1, v17, v1
	v_dual_add_f32 v8, v10, v18 :: v_dual_add_f32 v9, v11, v19
	v_dual_add_f32 v2, v24, v2 :: v_dual_mov_b32 v181, v199
	v_mov_b32_e32 v174, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v192, v210 :: v_dual_add_f32 v1, v7, v1
	v_add_f32_e32 v2, v8, v2
	v_add_f32_e32 v10, v25, v26
	v_add_f32_e32 v0, v5, v0
	v_mov_b32_e32 v210, v200
	v_dual_add_f32 v8, v171, v175 :: v_dual_mov_b32 v171, v189
	v_mov_b32_e32 v189, v207
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_add_f32 v5, v9, v10 :: v_dual_add_f32 v0, v0, v1
	v_add_f32_e32 v7, v245, v253
	v_add_f32_e32 v9, v13, v21
	v_dual_add_f32 v10, v29, v165 :: v_dual_mov_b32 v165, v183
	v_add_f32_e32 v1, v2, v5
	v_mov_b32_e32 v183, v201
	v_add_f32_e32 v11, v246, v254
	v_mov_b32_e32 v175, v193
	v_add_f32_e32 v6, v173, v6
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v5, v1, s63, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v173, v191
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v3, v3, v4
	v_mov_b32_e32 v161, v182
	scratch_load_b32 v27, off, off offset:24 ; 4-byte Folded Reload
	v_add_f32_e32 v1, v1, v5
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v2, v0, s63, 0xfedcba98 op_sel:[1,0]
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v5, v28, v164 :: v_dual_mov_b32 v164, v195
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v26, off, off offset:16
	scratch_load_b32 v25, off, off offset:12
	scratch_load_b32 v182, off, off offset:72
	scratch_load_b32 v195, off, off offset:64
	v_add_f32_e32 v0, v0, v2
	v_add_f32_e32 v2, v12, v20
	v_add_f32_e32 v12, v172, v176
	v_mov_b32_e32 v176, v194
	v_dual_mov_b32 v172, v190 :: v_dual_mov_b32 v235, v197
	v_mov_b32_e32 v168, v186
	v_dual_add_f32 v2, v2, v5 :: v_dual_add_f32 v5, v7, v8
	v_dual_add_f32 v7, v9, v10 :: v_dual_add_f32 v8, v11, v12
	v_add_f32_e32 v9, v15, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v11, v248, v166 :: v_dual_add_f32 v2, v2, v5
	v_dual_mov_b32 v166, v184 :: v_dual_add_f32 v5, v7, v8
	v_add_f32_e32 v7, v30, v239
	v_add_f32_e32 v8, v247, v255
	v_add_f32_e32 v10, v31, v240
	v_dual_mov_b32 v184, v202 :: v_dual_add_f32 v3, v11, v3
	v_add_f32_e32 v2, v2, v5
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v30, off, off offset:32
	scratch_load_b32 v24, off, off offset:20
	scratch_load_b32 v23, off, off offset:28
	scratch_load_b32 v15, off, off offset:4
	v_mov_b32_e32 v186, v204
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v5, v2, s63, 0xfedcba98 op_sel:[1,0]
	v_dual_mov_b32 v180, v198 :: v_dual_mov_b32 v187, v205
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v2, v2, v5
	v_add_f32_e32 v5, v14, v22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:56
	scratch_load_b32 v14, off, off offset:8
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v4, v5, v7 :: v_dual_add_f32 v5, v8, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v4, v4, v5
	v_add_f32_e32 v6, v9, v10
	v_add_f32_e32 v3, v6, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v3, v4, v3
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v4, v3, s63, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	ds_store_b128 v177, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v178
.Ltmp124:
	.loc	1 299 26                        ; kda_gluon.py:299:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v4, v0, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v1, s63, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v0, v0, v4 :: v_dual_add_f32 v1, v1, v5
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v4, v2, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v3, s63, 0xfedcba98 op_sel:[1,0]
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v2, v2, v4 :: v_dual_add_f32 v3, v3, v5
.Ltmp129:
	.loc	1 299 26                        ; kda_gluon.py:299:26
	ds_store_2addr_b64 v179, v[0:1], v[2:3] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v238
	.loc	1 302 30                        ; kda_gluon.py:302:30
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v0, v0, v1, 0x7fff
	.loc	1 303 17                        ; kda_gluon.py:303:17
	scratch_load_b32 v1, off, off           ; 4-byte Folded Reload
	.loc	1 302 30                        ; kda_gluon.py:302:30
	v_cndmask_b16 v0.l, 0x7fff, v0.h, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s20, s27
	.loc	1 303 17                        ; kda_gluon.py:303:17
	s_waitcnt vmcnt(0)
	buffer_store_b16 v0, v1, s[44:47], 0 offen
	.loc	1 327 21                        ; kda_gluon.py:327:21
	v_add_lshl_u32 v0, s26, v231, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[32:33], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v160, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[34:35], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v161, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[36:37], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v162, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[38:39], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v163, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[40:41], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v164, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[42:43], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v165, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s4, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[44:45], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v166, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s5, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[46:47], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v167, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[48:49], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v168, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[50:51], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v169, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[52:53], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v170, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[54:55], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v171, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[56:57], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v172, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[58:59], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v173, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s6, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[60:61], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v174, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s7, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[62:63], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v175, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[64:65], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v176, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[66:67], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v182, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[68:69], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v234, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[70:71], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v235, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[72:73], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v180, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[74:75], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v181, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s8, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[76:77], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v210, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s9, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[78:79], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v183, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[80:81], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v184, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[82:83], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v185, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[84:85], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v186, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[86:87], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v187, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[88:89], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v188, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[90:91], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v189, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s10, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[92:93], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v208, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s11, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[94:95], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v209, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[96:97], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v192, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[98:99], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v211, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[100:101], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[102:103], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v213, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[104:105], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v15, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[106:107], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v195, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s12, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[108:109], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v216, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s13, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[110:111], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v217, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[112:113], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v218, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[114:115], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v219, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[116:117], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v220, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[118:119], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v221, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[120:121], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v222, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[122:123], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v223, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s14, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[124:125], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v224, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s15, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[126:127], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v229, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[128:129], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v230, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[130:131], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v233, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[132:133], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v22, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[134:135], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v228, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[136:137], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v23, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[138:139], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v203, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s16, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[140:141], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v24, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s17, s27
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[142:143], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v225, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[144:145], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v25, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[146:147], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v237, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[148:149], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v26, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[150:151], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v214, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[152:153], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v27, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[154:155], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v30, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[156:157], v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, s26, v215, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 311 21                        ; kda_gluon.py:311:21
	s_add_i32 s2, s62, s21
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s2, 4
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[158:159], v0, s[36:39], 0 offen
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 77 5                          ; kda_gluon.py:77:5
	s_endpgm
.Ltmp130:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 80
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
		.amdhsa_next_free_sgpr 64
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
	.size	amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4, .Lfunc_end0-amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_vgpr, 256
	.set amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_agpr, 0
	.set amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.numbered_sgpr, 64
	.set amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.private_seg_size, 80
	.set amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_recursion, 0
	.set amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11360
; TotalNumSgprs: 66
; NumVgprs: 256
; ScratchSize: 80
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 66
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
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
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
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
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4"                        ; string offset=88 ; amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
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
    .name:           amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
    .private_segment_fixed_size: 80
    .sgpr_count:     66
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_kda_fwd_cache_int4xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 19
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
