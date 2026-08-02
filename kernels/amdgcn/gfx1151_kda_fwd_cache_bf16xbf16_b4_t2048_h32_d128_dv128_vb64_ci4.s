	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4                          ; -- Begin function amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
	.p2align	8
	.type	amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4,@function
amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4:                                 ; @amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "kda_gluon.py"
	.loc	1 77 0                          ; kda_gluon.py:77:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s42, s[0:1], 0x68
	s_load_b32 s43, s[0:1], 0x70
	s_load_b32 s50, s[0:1], 0x80
	s_load_b32 s46, s[0:1], 0x78
.Ltmp0:
	.loc	1 130 27 prologue_end           ; kda_gluon.py:130:27
	v_lshrrev_b32_e32 v2, 4, v0
	s_add_u32 s4, s0, 0x58
	s_addc_u32 s6, s1, 0
	s_add_u32 s8, s0, 0x60
	s_addc_u32 s10, s1, 0
	.loc	1 123 21                        ; kda_gluon.py:123:21
	s_lshl_b32 s47, s3, 6
	.loc	1 130 27                        ; kda_gluon.py:130:27
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	v_or_b32_e32 v6, 64, v2
	v_or_b32_e32 v7, 0x50, v2
	v_or_b32_e32 v8, 0x60, v2
	v_or_b32_e32 v9, 0x70, v2
	s_mov_b32 s20, 0
	.loc	1 154 17                        ; kda_gluon.py:154:17
	s_add_i32 s12, s2, 0xffffff81
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_mov_b32 s21, s20
	.loc	1 131 51                        ; kda_gluon.py:131:51
	v_and_b32_e32 v1, 15, v0
	.loc	1 136 24                        ; kda_gluon.py:136:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s3, s43, v2
	v_cmp_gt_i32_e64 s5, s43, v3
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mul_lo_u32 v2, s46, v2
	.loc	1 136 24                        ; kda_gluon.py:136:24
	v_cmp_gt_i32_e64 s7, s43, v4
	v_cmp_gt_i32_e64 s9, s43, v5
	v_cmp_gt_i32_e64 s11, s43, v6
	v_cmp_gt_i32_e64 s13, s43, v7
	v_cmp_gt_i32_e64 s15, s43, v8
	v_cmp_gt_i32_e32 vcc_lo, s43, v9
	.loc	1 131 27                        ; kda_gluon.py:131:27
	v_lshl_or_b32 v30, v1, 1, s47
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mad_u64_u32 v[3:4], null, s46, 12, v[2:3]
	.loc	1 147 17                        ; kda_gluon.py:147:17
	s_cmpk_lt_i32 s2, 0x7f
	.loc	1 160 13                        ; kda_gluon.py:160:13
	s_mul_i32 s51, s46, s43
	.loc	1 146 26                        ; kda_gluon.py:146:26
	s_cselect_b32 s19, s6, s10
	s_cselect_b32 s18, s4, s8
	.loc	1 151 32                        ; kda_gluon.py:151:32
	s_cselect_b32 s4, s2, s12
	.loc	1 146 26                        ; kda_gluon.py:146:26
	s_load_b64 s[28:29], s[18:19], 0x0
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_mad_u64_u32 v[4:5], null, s46, 20, v[2:3]
	v_mad_u64_u32 v[5:6], null, s46, 24, v[2:3]
	v_mad_u64_u32 v[6:7], null, s46, 28, v[2:3]
	v_mad_u64_u32 v[7:8], null, s46, 36, v[2:3]
	v_mad_u64_u32 v[8:9], null, s46, 40, v[2:3]
	v_mad_u64_u32 v[9:10], null, s46, 44, v[2:3]
	v_mad_u64_u32 v[10:11], null, s46, 48, v[2:3]
	v_mad_u64_u32 v[11:12], null, s46, 52, v[2:3]
	v_mad_u64_u32 v[12:13], null, s46, 56, v[2:3]
	v_mad_u64_u32 v[13:14], null, s46, 60, v[2:3]
	v_mad_u64_u32 v[14:15], null, 0x44, s46, v[2:3]
	v_mad_u64_u32 v[15:16], null, 0x48, s46, v[2:3]
	v_mad_u64_u32 v[16:17], null, 0x4c, s46, v[2:3]
	v_mad_u64_u32 v[17:18], null, 0x50, s46, v[2:3]
	v_mad_u64_u32 v[18:19], null, 0x54, s46, v[2:3]
	v_mad_u64_u32 v[19:20], null, 0x58, s46, v[2:3]
	v_mad_u64_u32 v[20:21], null, 0x5c, s46, v[2:3]
	v_mad_u64_u32 v[21:22], null, 0x60, s46, v[2:3]
	v_mad_u64_u32 v[22:23], null, 0x64, s46, v[2:3]
	v_mad_u64_u32 v[23:24], null, 0x68, s46, v[2:3]
	v_mad_u64_u32 v[24:25], null, 0x6c, s46, v[2:3]
	v_mad_u64_u32 v[25:26], null, 0x70, s46, v[2:3]
	v_mad_u64_u32 v[26:27], null, 0x74, s46, v[2:3]
	v_mad_u64_u32 v[27:28], null, 0x78, s46, v[2:3]
	v_mad_u64_u32 v[28:29], null, 0x7c, s46, v[2:3]
	.loc	1 131 27                        ; kda_gluon.py:131:27
	v_or_b32_e32 v31, 32, v30
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v29, v2, v30
	.loc	1 160 13                        ; kda_gluon.py:160:13
	s_mul_i32 s50, s50, s4
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_lshl_add_u32 v32, s46, 2, v2
	.loc	1 137 24                        ; kda_gluon.py:137:24
	v_cmp_gt_i32_e64 s16, s46, v30
	.loc	1 160 13                        ; kda_gluon.py:160:13
	s_mul_i32 s18, s51, s50
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_lshl_add_u32 v33, s46, 3, v2
	v_lshl_add_u32 v34, s46, 4, v2
	v_lshl_add_u32 v35, s46, 5, v2
	v_lshl_add_u32 v36, s46, 6, v2
	v_add_nc_u32_e32 v160, v2, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v2, s18, v29, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v161, v32, v30
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s19, s3, s16
	.loc	1 137 24                        ; kda_gluon.py:137:24
	v_cmp_gt_i32_e64 s17, s46, v31
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v165, v3, v30
	v_add_nc_u32_e32 v166, v3, v31
	v_add_nc_u32_e32 v173, v6, v30
	v_add_nc_u32_e32 v174, v6, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v2, s19
	v_dual_mov_b32 v2, s20 :: v_dual_add_nc_u32 v169, v4, v30
	v_dual_mov_b32 v3, s21 :: v_dual_add_nc_u32 v170, v4, v31
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
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s39, 0x31027000
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s19
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, s38
	s_mov_b32 s31, s39
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v167, v34, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
	v_add_lshl_u32 v6, s18, v162, 2
	s_clause 0x1
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	v_add_lshl_u32 v4, s18, v163, 2
	v_add_lshl_u32 v5, s18, v164, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v177, v7, v30
	v_add_nc_u32_e32 v178, v7, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_add_lshl_u32 v7, s18, v165, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s19
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v168, v34, v31
	v_add_nc_u32_e32 v179, v8, v30
	v_add_nc_u32_e32 v180, v8, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v8, s18, v166, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v7, s19
	s_clause 0x1
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	v_add_lshl_u32 v4, s18, v167, 2
	v_cndmask_b32_e64 v7, 0x80000000, v8, s3
	v_add_lshl_u32 v5, s18, v168, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s4, s5, s16
	s_and_b32 s5, s5, s17
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x1
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v7, s[28:31], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	v_add_lshl_u32 v6, s18, v169, 2
	v_add_lshl_u32 v7, s18, v170, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v175, v35, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s4
	v_add_lshl_u32 v6, s18, v171, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	v_add_lshl_u32 v5, s18, v172, 2
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s4
	v_add_lshl_u32 v6, s18, v173, 2
	buffer_store_b64 v[2:3], v7, s[28:31], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	v_add_lshl_u32 v7, s18, v174, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v212, v35, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s18, v175, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v7, s5
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s6, s7, s16
	s_and_b32 s7, s7, s17
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s6
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
	v_add_lshl_u32 v6, s18, v212, 2
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	v_add_lshl_u32 v5, s18, v177, 2
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_add_lshl_u32 v7, s18, v179, 2
	v_cndmask_b32_e64 v4, 0x80000000, v6, s7
	v_add_lshl_u32 v6, s18, v178, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s6
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v181, v9, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v8, s18, v180, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v182, v9, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s7
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v183, v10, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v7, s6
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v184, v10, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v8, s7
	v_add_lshl_u32 v7, s18, v181, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v185, v11, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s18, v182, 2
	s_clause 0x1
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
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
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v8, s8
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v188, v12, v31
	v_add_nc_u32_e32 v189, v13, v30
	v_add_nc_u32_e32 v13, v13, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x2
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v7, s[28:31], 0 offen
	v_add_lshl_u32 v4, s18, v186, 2
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	v_add_lshl_u32 v5, s18, v187, 2
	v_add_lshl_u32 v6, s18, v188, 2
	v_add_lshl_u32 v8, s18, v13, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s9
	v_add_lshl_u32 v7, s18, v189, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v208, v36, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s8
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v209, v36, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s9
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v8, s9
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v210, v14, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s8
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v14, v14, v31
	v_add_nc_u32_e32 v228, v15, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x2
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v7, s[28:31], 0 offen
	v_add_lshl_u32 v5, s18, v208, 2
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s18, v209, 2
	v_add_lshl_u32 v6, s18, v210, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s10, s11, s16
	s_and_b32 s11, s11, s17
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s10
	v_add_lshl_u32 v7, s18, v14, 2
	v_add_lshl_u32 v8, s18, v228, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s11
	v_cndmask_b32_e64 v6, 0x80000000, v6, s10
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v15, v15, v31
	v_add_nc_u32_e32 v214, v16, v30
	v_add_nc_u32_e32 v216, v17, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s11
	s_clause 0x2
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v8, s10
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v215, v16, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v5, s18, v15, 2
	buffer_store_b64 v[2:3], v7, s[28:31], 0 offen
	v_add_lshl_u32 v6, s18, v214, 2
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s18, v216, 2
	v_add_lshl_u32 v7, s18, v215, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s12, s13, s16
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v217, v17, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s11
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v218, v18, v30
	v_add_nc_u32_e32 v219, v18, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s10
	v_cndmask_b32_e64 v4, 0x80000000, v4, s12
	v_cndmask_b32_e64 v7, 0x80000000, v7, s11
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v220, v19, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x2
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v7, s[28:31], 0 offen
	v_add_lshl_u32 v5, s18, v217, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v221, v19, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s18, v218, 2
	v_add_lshl_u32 v6, s18, v219, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s13, s13, s17
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_add_lshl_u32 v7, s18, v220, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s13
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v222, v20, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s12
	v_add_lshl_u32 v8, s18, v221, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s13
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v223, v20, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v7, s12
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v224, v21, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v8, s13
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
	v_add_lshl_u32 v6, s18, v222, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v225, v21, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	v_add_lshl_u32 v5, s18, v223, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v227, v22, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s18, v224, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s12
	v_add_lshl_u32 v7, s18, v225, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s14, s15, s16
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v22, v22, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s13
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s15, s15, s17
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v230, v23, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s14
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
	v_add_lshl_u32 v6, s18, v227, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v23, v23, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s15
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v226, v24, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x2
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v7, s[28:31], 0 offen
	v_add_lshl_u32 v4, s18, v22, 2
	v_cndmask_b32_e64 v5, 0x80000000, v6, s14
	v_add_lshl_u32 v6, s18, v230, 2
	v_add_lshl_u32 v7, s18, v23, 2
	v_add_lshl_u32 v8, s18, v226, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v24, v24, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s15
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v234, v25, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v6, s14
	v_cndmask_b32_e64 v6, 0x80000000, v7, s15
	v_cndmask_b32_e64 v7, 0x80000000, v8, s14
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v25, v25, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_add_lshl_u32 v4, s18, v24, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v236, v26, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x2
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v7, s[28:31], 0 offen
	v_add_lshl_u32 v5, s18, v234, 2
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s16, vcc_lo, s16
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v26, v26, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s15
	v_add_lshl_u32 v6, s18, v25, 2
	v_add_lshl_u32 v7, s18, v236, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s16
	.loc	1 162 22                        ; kda_gluon.py:162:22
	s_and_b32 s17, vcc_lo, s17
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v213, v27, v30
	v_add_nc_u32_e32 v30, v28, v30
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	s_clause 0x1
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	v_add_lshl_u32 v4, s18, v26, 2
	.loc	1 143 13                        ; kda_gluon.py:143:13
	v_add_nc_u32_e32 v27, v27, v31
	v_add_nc_u32_e32 v193, v28, v31
	.loc	1 182 17                        ; kda_gluon.py:182:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s16
	s_clause 0x1
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v7, s[28:31], 0 offen
	v_add_lshl_u32 v5, s18, v213, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s17
	v_add_lshl_u32 v7, s18, v30, 2
	v_add_lshl_u32 v6, s18, v27, 2
	v_add_lshl_u32 v8, s18, v193, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s16
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v7, s16
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	v_cndmask_b32_e64 v7, 0x80000000, v8, s17
	s_mov_b32 s33, 4
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_cmp_lt_i32 s42, 1
	.loc	1 182 17                        ; kda_gluon.py:182:17
	s_clause 0x3
	buffer_store_b64 v[2:3], v5, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v6, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v4, s[28:31], 0 offen
	buffer_store_b64 v[2:3], v7, s[28:31], 0 offen
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; kda_gluon.py:0:9
	s_clause 0x4
	s_load_b32 s52, s[0:1], 0x6c
	s_load_b256 s[20:27], s[0:1], 0x0
	s_load_b32 s53, s[0:1], 0x84
	s_load_b64 s[40:41], s[0:1], 0x48
	s_load_b64 s[34:35], s[0:1], 0x20
	.loc	1 122 21 is_stmt 1              ; kda_gluon.py:122:21
	v_or_b32_e32 v3, 64, v0
	.loc	1 123 21                        ; kda_gluon.py:123:21
	v_or_b32_e32 v4, s47, v0
	v_dual_mov_b32 v32, 0 :: v_dual_and_b32 v5, 32, v0
	v_bfe_i32 v6, v0, 5, 1
	v_dual_mov_b32 v36, 0 :: v_dual_lshlrev_b32 v7, 5, v0
	v_dual_mov_b32 v38, 0 :: v_dual_lshlrev_b32 v9, 4, v1
	v_dual_mov_b32 v40, 0 :: v_dual_lshlrev_b32 v1, 3, v1
	v_dual_mov_b32 v159, 0 :: v_dual_and_b32 v2, 48, v0
	v_bfe_i32 v10, v0, 4, 1
	.loc	1 128 18                        ; kda_gluon.py:128:18
	v_cmp_gt_i32_e64 s1, s43, v3
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s31, s52
	.loc	1 129 18                        ; kda_gluon.py:129:18
	v_cmp_gt_i32_e64 s18, s46, v4
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_cvt_f32_u32 s36, s31
	v_lshrrev_b32_e32 v3, 3, v5
	v_dual_mov_b32 v44, 0 :: v_dual_and_b32 v7, 0x60, v7
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v4, s36
	v_dual_mov_b32 v35, v159 :: v_dual_and_b32 v6, 0x140, v6
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v1, 0, v1
	v_dual_mov_b32 v34, 0 :: v_dual_lshlrev_b32 v31, 2, v0
	v_dual_mov_b32 v33, v159 :: v_dual_lshlrev_b32 v8, 1, v0
	v_dual_mov_b32 v37, v159 :: v_dual_and_b32 v10, 0x140, v10
	v_xor_b32_e32 v6, v6, v9
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v3, 0, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:36
	scratch_store_b32 off, v31, off offset:32
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v1, 0, v7
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v5, 4, v31
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v11, 24, v8
	v_dual_mov_b32 v39, v159 :: v_dual_lshlrev_b32 v12, 1, v2
	v_readfirstlane_b32 s36, v4
	v_xor_b32_e32 v4, v10, v9
	v_lshl_add_u32 v1, v2, 3, v1
	v_dual_mov_b32 v41, v159 :: v_dual_add_nc_u32 v2, 0, v6
	scratch_store_b32 off, v3, off offset:44 ; 4-byte Folded Spill
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v3, 0, v5
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v1, v1, v11
	scratch_store_b32 off, v2, off offset:52 ; 4-byte Folded Spill
	v_dual_mov_b32 v43, v159 :: v_dual_add_nc_u32 v2, 0, v4
	scratch_store_b32 off, v3, off offset:48 ; 4-byte Folded Spill
	s_mul_f32 s36, s36, 0x4f7ffffe
	s_abs_i32 s30, s2
	scratch_store_b32 off, v2, off offset:60 ; 4-byte Folded Spill
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v211, off, off offset:52
	scratch_load_b32 v232, off, off offset:60
	scratch_load_b32 v176, off, off offset:36
	s_cvt_u32_f32 s37, s36
	s_sub_i32 s36, 0, s31
	s_xor_b32 s45, s2, s52
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_mul_i32 s48, s52, s42
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_mul_i32 s44, s36, s37
	s_mov_b32 s36, s20
	s_mul_hi_u32 s44, s37, s44
	s_mov_b32 s20, s22
	s_add_i32 s37, s37, s44
	s_ashr_i32 s45, s45, 31
	s_mul_hi_u32 s22, s30, s37
	.loc	1 128 18                        ; kda_gluon.py:128:18
	v_cmp_gt_i32_e64 s0, s43, v0
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_mul_i32 s37, s22, s31
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_mul_i32 s57, s43, s52
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_sub_i32 s30, s30, s37
	s_add_i32 s37, s22, 1
	s_sub_i32 s49, s30, s31
	s_cmp_ge_u32 s30, s31
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v229, 0, v12
	s_cselect_b32 s22, s37, s22
	s_cselect_b32 s30, s49, s30
	s_add_i32 s37, s22, 1
	s_cmp_ge_u32 s30, s31
	v_dual_mov_b32 v45, v159 :: v_dual_mov_b32 v60, 0
	s_cselect_b32 s22, s37, s22
	s_and_b32 s37, s21, 0xffff
	s_xor_b32 s22, s22, s45
	s_and_b32 s21, s23, 0xffff
	s_sub_i32 s22, s22, s45
	v_dual_mov_b32 v47, v159 :: v_dual_mov_b32 v62, 0
	.loc	1 119 22                        ; kda_gluon.py:119:22
	s_mul_i32 s23, s22, s52
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_mul_i32 s22, s48, s22
	.loc	1 119 22                        ; kda_gluon.py:119:22
	s_sub_i32 s2, s2, s23
	v_dual_mov_b32 v49, v159 :: v_dual_mov_b32 v64, 0
	.loc	1 189 21                        ; kda_gluon.py:189:21
	s_add_i32 s48, s22, s2
	v_dual_mov_b32 v51, v159 :: v_dual_mov_b32 v66, 0
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_mul_i32 s2, s46, s48
	s_mul_i32 s43, s43, s48
	s_add_i32 s2, s2, s47
	v_lshl_add_u32 v233, s43, 1, v8
	v_add_lshl_u32 v231, s2, v0, 1
	v_dual_mov_b32 v53, v159 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v55, v159 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v57, v159 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v59, v159 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v61, v159 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v63, v159 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v65, v159 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v67, v159 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v69, v159 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v71, v159 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v73, v159 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v75, v159 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v77, v159 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v79, v159 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v81, v159 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v83, v159 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v85, v159 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v87, v159 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v89, v159 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v91, v159 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v93, v159 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v95, v159 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v97, v159 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v99, v159 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v101, v159 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v103, v159 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v105, v159 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v107, v159 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v109, v159 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v111, v159 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v113, v159 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v115, v159 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v117, v159 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v119, v159 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v121, v159 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v123, v159 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v125, v159 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v127, v159 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v129, v159 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v131, v159 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v133, v159 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v135, v159 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v137, v159 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v139, v159 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v141, v159 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v143, v159 :: v_dual_mov_b32 v158, 0
	v_mov_b32_e32 v145, v159
	v_mov_b32_e32 v147, v159
	v_mov_b32_e32 v149, v159
	v_mov_b32_e32 v151, v159
	v_mov_b32_e32 v153, v159
	v_mov_b32_e32 v155, v159
	v_mov_b32_e32 v157, v159
	v_lshl_add_u32 v235, s43, 2, v31
	s_mov_b32 s44, s26
	s_mul_i32 s26, s46, s52
	s_mov_b32 s54, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s45, s27, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_lshl_b32 s55, s26, 1
	s_lshl_b32 s56, s57, 1
	s_lshl_b32 s57, s57, 2
	s_sub_i32 s58, 0, s42
	.loc	1 118 23                        ; kda_gluon.py:118:23
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v1, off offset:68
	scratch_store_b32 off, v15, off offset:4
	scratch_store_b32 off, v14, off offset:8
	scratch_store_b32 off, v13, off offset:12
	scratch_store_b32 off, v25, off offset:16
	scratch_store_b32 off, v26, off offset:20
	scratch_store_b32 off, v24, off offset:24
	scratch_store_b32 off, v27, off offset:28
	scratch_store_b32 off, v23, off offset:40
	scratch_store_b32 off, v30, off offset:56
	scratch_store_b32 off, v22, off offset:64
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 229 21                        ; kda_gluon.py:229:21
	v_add_nc_u32_e32 v0, 0x80, v233
	v_cndmask_b32_e64 v1, 0x80000000, v233, s0
	.loc	1 235 21                        ; kda_gluon.py:235:21
	s_mov_b32 s22, s38
	s_mov_b32 s23, s39
	.loc	1 274 28                        ; kda_gluon.py:274:28
	s_mov_b32 s46, s38
	.loc	1 229 21                        ; kda_gluon.py:229:21
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 274 28                        ; kda_gluon.py:274:28
	s_mov_b32 s47, s39
	.loc	1 267 21                        ; kda_gluon.py:267:21
	s_mov_b32 s26, s38
	.loc	1 281 34                        ; kda_gluon.py:281:34
	s_ashr_i32 s49, s48, 31
	.loc	1 229 21                        ; kda_gluon.py:229:21
	s_clause 0x1
	buffer_load_u16 v2, v1, s[36:39], 0 offen
	buffer_load_u16 v3, v0, s[36:39], 0 offen
	.loc	1 235 21                        ; kda_gluon.py:235:21
	s_clause 0x1
	buffer_load_u16 v1, v1, s[20:23], 0 offen
	buffer_load_u16 v0, v0, s[20:23], 0 offen
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp2:
	.loc	1 267 21                        ; kda_gluon.py:267:21
	s_mov_b32 s27, s39
	.loc	1 303 17                        ; kda_gluon.py:303:17
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	.loc	1 327 21                        ; kda_gluon.py:327:21
	s_mov_b32 s30, s38
	s_mov_b32 s31, s39
	v_mov_b32_e32 v207, v29
	v_dual_mov_b32 v195, v178 :: v_dual_mov_b32 v178, v161
	v_dual_mov_b32 v197, v180 :: v_dual_mov_b32 v194, v177
	v_mov_b32_e32 v199, v182
	v_dual_mov_b32 v201, v184 :: v_dual_mov_b32 v184, v167
	v_mov_b32_e32 v191, v174
	v_dual_mov_b32 v205, v188 :: v_dual_mov_b32 v188, v171
	v_mov_b32_e32 v203, v186
	.loc	1 311 21                        ; kda_gluon.py:311:21
	v_add_nc_u32_e32 v233, s56, v233
	.loc	1 229 21                        ; kda_gluon.py:229:21
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 235 21                        ; kda_gluon.py:235:21
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v1
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 229 21                        ; kda_gluon.py:229:21
	v_cndmask_b32_e64 v238, 0, v2, s0
	v_lshlrev_b32_e32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 235 21                        ; kda_gluon.py:235:21
	v_cndmask_b32_e64 v9, 0, v0, s1
	v_cndmask_b32_e64 v8, 0, v1, s0
	.loc	1 229 21                        ; kda_gluon.py:229:21
	v_cndmask_b32_e64 v239, 0, v3, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 243 41                        ; kda_gluon.py:243:41
	v_mul_f32_e32 v0, v9, v9
	.loc	1 242 41                        ; kda_gluon.py:242:41
	v_mul_f32_e32 v2, v239, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_fmac_f32_e32 v0, v8, v8
.Ltmp4:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_fmac_f32_e32 v2, v238, v238
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_dpp v0, v0, v0 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_dpp v2, v2, v2 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_dpp v0, v0, v0 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_dpp v2, v2, v2 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_dpp v0, v0, v0 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_dpp v2, v2, v2 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_dpp v0, v0, v0 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_dpp v2, v2, v2 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_permlanex16_b32 v1, v0, -1, -1 op_sel:[1,0]
.Ltmp14:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_permlanex16_b32 v3, v2, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_e32 v0, v0, v1
	scratch_load_b32 v1, off, off offset:44 ; 4-byte Folded Reload
.Ltmp16:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:242:34 ] ]
	v_add_f32_e32 v2, v2, v3
.Ltmp17:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_readlane_b32 s22, v0, 31
.Ltmp18:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_readlane_b32 s2, v2, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v0, s2
	s_waitcnt vmcnt(0)
	ds_store_b32 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v3, off, off offset:48 ; 4-byte Folded Reload
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_mov_b32_e32 v0, s22
.Ltmp20:
	.loc	1 281 34 is_stmt 1              ; kda_gluon.py:281:34
	s_lshl_b64 s[22:23], s[48:49], 2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_u32 s22, s34, s22
	s_addc_u32 s23, s35, s23
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	s_waitcnt vmcnt(0)
	ds_load_b32 v10, v3
.Ltmp22:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v1, v0
.Ltmp23:
	.loc	1 274 28 is_stmt 1              ; kda_gluon.py:274:28
	v_add_nc_u32_e32 v0, 0x100, v235
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v3
.Ltmp25:
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_load_b32 v0, v0, s[44:47], 0 offen
	.loc	1 280 21                        ; kda_gluon.py:280:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, 0x3fb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v1, 0x80000000, v235, s0
	.loc	1 311 21                        ; kda_gluon.py:311:21
	v_add_nc_u32_e32 v235, s57, v235
	.loc	1 274 28                        ; kda_gluon.py:274:28
	buffer_load_b32 v1, v1, s[44:47], 0 offen
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
	s_add_i32 s2, s33, -3
	.loc	1 280 21                        ; kda_gluon.py:280:21
	v_exp_f32_e32 v1, v1
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v2
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v0, 1.0, v0, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 280 21                        ; kda_gluon.py:280:21
	v_ldexp_f32 v1, v1, v2
	.loc	1 267 21                        ; kda_gluon.py:267:21
	v_cndmask_b32_e64 v2, 0x80000000, v231, s18
	.loc	1 311 21                        ; kda_gluon.py:311:21
	v_add_nc_u32_e32 v231, s55, v231
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 274 28                        ; kda_gluon.py:274:28
	v_cndmask_b32_e64 v1, 1.0, v1, s1
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	scratch_store_b32 off, v2, off          ; 4-byte Folded Spill
.Ltmp27:
	.loc	1 267 21                        ; kda_gluon.py:267:21
	buffer_load_u16 v237, v2, s[24:27], 0 offen
	.loc	1 281 26                        ; kda_gluon.py:281:26
	v_mov_b32_e32 v2, 0
	global_load_b32 v243, v2, s[22:23]
	.loc	1 282 27                        ; kda_gluon.py:282:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v206, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 310 32                        ; kda_gluon.py:310:32
	s_add_i32 s22, s58, s33
	s_and_b32 s2, s2, 3
	s_cselect_b32 s2, 0, -1
	.loc	1 311 21                        ; kda_gluon.py:311:21
	s_cmp_eq_u32 s22, 3
	s_cselect_b32 s22, -1, 0
	.loc	1 313 30                        ; kda_gluon.py:313:30
	s_ashr_i32 s23, s33, 31
	.loc	1 333 13                        ; kda_gluon.py:333:13
	s_add_i32 s48, s48, s52
	.loc	1 313 30                        ; kda_gluon.py:313:30
	s_lshr_b32 s26, s23, 30
	.loc	1 310 31                        ; kda_gluon.py:310:31
	s_or_b32 s23, s22, s2
	.loc	1 313 30                        ; kda_gluon.py:313:30
	s_add_i32 s2, s33, s26
	.loc	1 311 21                        ; kda_gluon.py:311:21
	s_add_i32 s33, s33, 1
	.loc	1 313 30                        ; kda_gluon.py:313:30
	s_ashr_i32 s2, s2, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 315 21                        ; kda_gluon.py:315:21
	s_add_i32 s2, s2, s50
	s_mul_i32 s22, s51, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s3, s23
	.loc	1 282 27                        ; kda_gluon.py:282:27
	s_waitcnt vmcnt(0)
	ds_store_b64 v206, v[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v229
	ds_load_b128 v[4:7], v229 offset:16
	.loc	1 284 21                        ; kda_gluon.py:284:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v32, v32, v0 :: v_dual_mul_f32 v47, v47, v6
	v_mul_f32_e32 v33, v33, v0
	v_dual_mul_f32 v34, v34, v0 :: v_dual_mul_f32 v105, v105, v5
	v_dual_mul_f32 v35, v35, v0 :: v_dual_mul_f32 v36, v36, v2
	v_mul_f32_e32 v107, v107, v5
	v_mul_f32_e32 v37, v37, v2
	v_dual_mul_f32 v38, v38, v2 :: v_dual_mul_f32 v109, v109, v7
	v_dual_mul_f32 v39, v39, v2 :: v_dual_mul_f32 v96, v96, v1
	v_mul_f32_e32 v111, v111, v7
	v_mul_f32_e32 v97, v97, v1
	v_mul_f32_e32 v98, v98, v1
	v_dual_mul_f32 v99, v99, v1 :: v_dual_mul_f32 v100, v100, v3
	v_mul_f32_e32 v101, v101, v3
	v_mul_f32_e32 v102, v102, v3
	v_dual_mul_f32 v103, v103, v3 :: v_dual_mul_f32 v40, v40, v4
	v_mul_f32_e32 v41, v41, v4
	v_mul_f32_e32 v42, v42, v4
	v_dual_mul_f32 v43, v43, v4 :: v_dual_mul_f32 v44, v44, v6
	v_mul_f32_e32 v45, v45, v6
	v_mul_f32_e32 v46, v46, v6
	v_mul_f32_e32 v104, v104, v5
	v_mul_f32_e32 v106, v106, v5
	v_mul_f32_e32 v108, v108, v7
	v_mul_f32_e32 v110, v110, v7
	.loc	1 282 27                        ; kda_gluon.py:282:27
	ds_load_b128 v[0:3], v229 offset:128
	ds_load_b128 v[4:7], v229 offset:144
	.loc	1 284 21                        ; kda_gluon.py:284:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v48, v48, v0 :: v_dual_mul_f32 v63, v63, v6
	v_mul_f32_e32 v49, v49, v0
	v_dual_mul_f32 v50, v50, v0 :: v_dual_mul_f32 v121, v121, v5
	v_dual_mul_f32 v51, v51, v0 :: v_dual_mul_f32 v52, v52, v2
	v_mul_f32_e32 v123, v123, v5
	v_mul_f32_e32 v53, v53, v2
	v_dual_mul_f32 v54, v54, v2 :: v_dual_mul_f32 v125, v125, v7
	v_dual_mul_f32 v55, v55, v2 :: v_dual_mul_f32 v112, v112, v1
	v_mul_f32_e32 v127, v127, v7
	v_mul_f32_e32 v113, v113, v1
	v_mul_f32_e32 v114, v114, v1
	v_dual_mul_f32 v115, v115, v1 :: v_dual_mul_f32 v116, v116, v3
	v_mul_f32_e32 v117, v117, v3
	v_mul_f32_e32 v118, v118, v3
	v_dual_mul_f32 v119, v119, v3 :: v_dual_mul_f32 v56, v56, v4
	v_mul_f32_e32 v57, v57, v4
	v_mul_f32_e32 v58, v58, v4
	v_dual_mul_f32 v59, v59, v4 :: v_dual_mul_f32 v60, v60, v6
	v_mul_f32_e32 v61, v61, v6
	v_mul_f32_e32 v62, v62, v6
	v_mul_f32_e32 v120, v120, v5
	v_mul_f32_e32 v122, v122, v5
	v_mul_f32_e32 v124, v124, v7
	v_mul_f32_e32 v126, v126, v7
	.loc	1 282 27                        ; kda_gluon.py:282:27
	ds_load_b128 v[0:3], v229 offset:256
	ds_load_b128 v[4:7], v229 offset:272
	.loc	1 284 21                        ; kda_gluon.py:284:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v64, v64, v0 :: v_dual_mul_f32 v79, v79, v6
	v_mul_f32_e32 v65, v65, v0
	v_dual_mul_f32 v66, v66, v0 :: v_dual_mul_f32 v137, v137, v5
	v_dual_mul_f32 v67, v67, v0 :: v_dual_mul_f32 v68, v68, v2
	v_mul_f32_e32 v139, v139, v5
	v_mul_f32_e32 v69, v69, v2
	v_dual_mul_f32 v70, v70, v2 :: v_dual_mul_f32 v141, v141, v7
	v_dual_mul_f32 v71, v71, v2 :: v_dual_mul_f32 v128, v128, v1
	v_mul_f32_e32 v143, v143, v7
	v_mul_f32_e32 v129, v129, v1
	v_mul_f32_e32 v130, v130, v1
	v_dual_mul_f32 v131, v131, v1 :: v_dual_mul_f32 v132, v132, v3
	v_mul_f32_e32 v133, v133, v3
	v_mul_f32_e32 v134, v134, v3
	v_dual_mul_f32 v135, v135, v3 :: v_dual_mul_f32 v72, v72, v4
	v_mul_f32_e32 v73, v73, v4
	v_mul_f32_e32 v74, v74, v4
	v_dual_mul_f32 v75, v75, v4 :: v_dual_mul_f32 v76, v76, v6
	v_mul_f32_e32 v77, v77, v6
	v_mul_f32_e32 v78, v78, v6
	v_mul_f32_e32 v136, v136, v5
	v_mul_f32_e32 v138, v138, v5
	v_mul_f32_e32 v140, v140, v7
	v_mul_f32_e32 v142, v142, v7
	.loc	1 282 27                        ; kda_gluon.py:282:27
	ds_load_b128 v[0:3], v229 offset:384
	ds_load_b128 v[4:7], v229 offset:400
	.loc	1 283 23                        ; kda_gluon.py:283:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v80, v80, v0 :: v_dual_mul_f32 v95, v95, v6
	v_mul_f32_e32 v81, v81, v0
	v_dual_mul_f32 v82, v82, v0 :: v_dual_mul_f32 v153, v153, v5
	v_dual_mul_f32 v83, v83, v0 :: v_dual_mov_b32 v0, v10
	v_dual_mul_f32 v144, v144, v1 :: v_dual_mul_f32 v159, v159, v7
	v_mul_f32_e32 v145, v145, v1
	v_mul_f32_e32 v146, v146, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:242:34 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v147, v147, v1 :: v_dual_mul_f32 v84, v84, v2
	v_mul_f32_e32 v155, v155, v5
	v_dual_mul_f32 v85, v85, v2 :: v_dual_add_f32 v0, v10, v0
	v_dual_mul_f32 v86, v86, v2 :: v_dual_mul_f32 v157, v157, v7
	v_mul_f32_e32 v87, v87, v2
	v_mul_f32_e32 v149, v149, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 242 26                        ; kda_gluon.py:242:26
	v_sqrt_f32_e32 v0, v0
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_mul_f32_e32 v151, v151, v3
	v_mul_f32_e32 v89, v89, v4
	v_mul_f32_e32 v90, v90, v4
	v_dual_mul_f32 v91, v91, v4 :: v_dual_mul_f32 v152, v152, v5
	v_dual_mul_f32 v154, v154, v5 :: v_dual_mul_f32 v93, v93, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 25                        ; kda_gluon.py:244:25
	v_max_f32_e32 v240, 0x2b8cbccc, v0
	.loc	1 244 21 is_stmt 0              ; kda_gluon.py:244:21
	v_div_scale_f32 v0, null, v240, v240, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v1, v0
	v_fma_f32 v2, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 284 21 is_stmt 1              ; kda_gluon.py:284:21
	v_dual_mul_f32 v148, v148, v3 :: v_dual_fmac_f32 v1, v2, v1
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_scale_f32 v2, vcc_lo, v238, v240, v238
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_mul_f32_e32 v150, v150, v3
	v_dual_mul_f32 v88, v88, v4 :: v_dual_mul_f32 v3, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_fma_f32 v4, -v0, v3, v2
	v_fmac_f32_e32 v3, v4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v3, v2
	v_div_fmas_f32 v241, v0, v1, v3
	v_div_scale_f32 v0, null, v240, v240, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v1, v0
	v_fma_f32 v2, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v92, v92, v6 :: v_dual_fmac_f32 v1, v2, v1
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_scale_f32 v2, vcc_lo, v239, v240, v239
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_dual_mul_f32 v156, v156, v7 :: v_dual_mul_f32 v3, v2, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_fma_f32 v4, -v0, v3, v2
	v_fmac_f32_e32 v3, v4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v3, v2
	v_div_fmas_f32 v242, v0, v1, v3
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:243:34 ]
	v_mov_b32_e32 v0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:243:34 ] ]
	v_add_f32_e32 v0, v11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp32:
	.loc	1 243 26                        ; kda_gluon.py:243:26
	v_sqrt_f32_e32 v0, v0
	.loc	1 245 25                        ; kda_gluon.py:245:25
	v_max_f32_e32 v1, 0x2b8cbccc, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 245 21 is_stmt 0              ; kda_gluon.py:245:21
	v_div_scale_f32 v0, null, v1, v1, v8
	v_rcp_f32_e32 v2, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v0, v2, 1.0
	v_fmac_f32_e32 v2, v3, v2
	v_div_scale_f32 v3, vcc_lo, v8, v1, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v4, v3, v2
	v_fma_f32 v5, -v0, v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, v5, v2
	v_fma_f32 v0, -v0, v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v2, v4
	v_div_scale_f32 v2, null, v1, v1, v9
	v_div_fixup_f32 v0, v0, v1, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v3, v2
	v_fma_f32 v4, -v2, v3, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 284 21 is_stmt 1              ; kda_gluon.py:284:21
	v_dual_mul_f32 v94, v94, v6 :: v_dual_fmac_f32 v3, v4, v3
	.loc	1 245 21                        ; kda_gluon.py:245:21
	v_div_scale_f32 v4, vcc_lo, v9, v1, v9
	v_mul_f32_e32 v5, v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v2, v5, v4
	v_fmac_f32_e32 v5, v6, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v5, v4
	v_div_fmas_f32 v2, v2, v3, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v1, v2, v1, v9
	.loc	1 283 23                        ; kda_gluon.py:283:23
	ds_store_b64 v206, v[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v229
	ds_load_b128 v[24:27], v229 offset:16
	ds_load_b128 v[28:31], v229 offset:128
	ds_load_b128 v[20:23], v229 offset:144
	.loc	1 284 21                        ; kda_gluon.py:284:21
	v_mul_f32_e32 v158, v158, v7
	.loc	1 283 23                        ; kda_gluon.py:283:23
	ds_load_b128 v[16:19], v229 offset:256
	ds_load_b128 v[8:11], v229 offset:272
	v_dual_mov_b32 v196, v179 :: v_dual_mov_b32 v179, v162
	v_mov_b32_e32 v180, v163
	.loc	1 285 33                        ; kda_gluon.py:285:33
	s_waitcnt lgkmcnt(5)
	v_mul_f32_e32 v0, v36, v14
	s_waitcnt lgkmcnt(4)
	v_mul_f32_e32 v1, v44, v26
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v250, v124, v23 :: v_dual_mul_f32 v253, v45, v26
	v_dual_mul_f32 v249, v108, v27 :: v_dual_mul_f32 v254, v61, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v1, v40, v24
	v_dual_fmac_f32 v250, v120, v21 :: v_dual_mul_f32 v161, v109, v27
	v_fmac_f32_e32 v0, v32, v12
	v_fmac_f32_e32 v253, v41, v24
	v_fmac_f32_e32 v249, v104, v25
.Ltmp34:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v251, v140, v11 :: v_dual_fmac_f32 v254, v57, v20
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v244, v0, v1
.Ltmp36:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v0, v52, v30
	v_mul_f32_e32 v1, v60, v22
	v_mul_f32_e32 v255, v77, v10
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v161, v105, v25
.Ltmp38:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v162, v125, v23
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v0, v48, v28
	v_fmac_f32_e32 v1, v56, v20
	v_fmac_f32_e32 v255, v73, v8
	v_fmac_f32_e32 v251, v136, v9
.Ltmp40:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v163, v141, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v190, v173 :: v_dual_add_f32 v245, v0, v1
	v_mul_f32_e32 v0, v68, v18
	v_dual_mul_f32 v1, v76, v10 :: v_dual_mov_b32 v192, v175
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v0, v64, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, v72, v8
	v_add_f32_e32 v246, v0, v1
.Ltmp42:
	.loc	1 283 23                        ; kda_gluon.py:283:23
	ds_load_b128 v[4:7], v229 offset:384
	ds_load_b128 v[0:3], v229 offset:400
	v_mov_b32_e32 v177, v160
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp44:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v247, v84, v6
	v_mul_f32_e32 v248, v92, v2
	v_mul_f32_e32 v252, v156, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v160, v93, v2 :: v_dual_fmac_f32 v247, v80, v4
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v248, v88, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v252, v152, v1
	v_fmac_f32_e32 v160, v89, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v247, v247, v248 :: v_dual_mul_f32 v248, v100, v15
	v_dual_mov_b32 v198, v181 :: v_dual_mov_b32 v181, v164
	v_fmac_f32_e32 v248, v96, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v248, v248, v249
.Ltmp46:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v249, v116, v31
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v249, v112, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v249, v249, v250 :: v_dual_mul_f32 v250, v132, v19
	v_fmac_f32_e32 v250, v128, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v250, v250, v251
.Ltmp48:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v251, v148, v7
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v251, v144, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v251, v251, v252 :: v_dual_mul_f32 v252, v37, v14
	v_fmac_f32_e32 v252, v33, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v252, v252, v253 :: v_dual_mul_f32 v253, v53, v30
	v_fmac_f32_e32 v253, v49, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v253, v253, v254
.Ltmp50:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v254, v69, v18
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v254, v65, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v254, v254, v255 :: v_dual_mul_f32 v255, v85, v6
	v_fmac_f32_e32 v255, v81, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v160, v255, v160 :: v_dual_mul_f32 v255, v101, v15
	v_fmac_f32_e32 v255, v97, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v161, v255, v161
.Ltmp52:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v255, v117, v31 :: v_dual_add_f32 v244, v244, v245
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v245, v246, v247
.Ltmp54:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v164, v157, v3
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v247, v250, v251
	v_dual_fmac_f32 v255, v113, v29 :: v_dual_add_f32 v160, v254, v160
.Ltmp56:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v250, v159, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v164, v153, v1
	v_fmac_f32_e32 v163, v137, v9
	v_fmac_f32_e32 v162, v121, v21
	v_fmac_f32_e32 v250, v155, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v162, v255, v162 :: v_dual_mul_f32 v255, v133, v19
	v_fmac_f32_e32 v255, v129, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v163, v255, v163
.Ltmp58:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v255, v149, v7
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v161, v161, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v255, v145, v5
	v_add_f32_e32 v164, v255, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v162, v163, v164
	v_add_f32_e32 v246, v248, v249
	v_add_f32_e32 v248, v252, v253
	v_add_f32_e32 v163, v244, v245
.Ltmp60:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v249, v158, v3
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v161, v161, v162 :: v_dual_add_f32 v164, v246, v247
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_e32 v160, v248, v160
.Ltmp62:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v248, v142, v11
	v_mul_f32_e32 v246, v110, v27
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_fmac_f32 v249, v154, v1 :: v_dual_add_f32 v162, v163, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_f32_e32 v160, v160, v161
.Ltmp64:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v164, v94, v2
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v248, v138, v9
	v_fmac_f32_e32 v246, v106, v25
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v163, v160, s54, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_fmac_f32 v164, v90, v0 :: v_dual_add_f32 v245, v160, v163
.Ltmp68:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v163, v78, v10
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v161, v162, s54, 0xfedcba98 op_sel:[1,0]
.Ltmp70:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v160, v38, v14
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v163, v74, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v244, v162, v161
.Ltmp72:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v161, v46, v26
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v160, v34, v12
.Ltmp74:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v162, v62, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v161, v42, v24
	v_fmac_f32_e32 v162, v58, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v160, v160, v161 :: v_dual_mul_f32 v161, v54, v30
	v_fmac_f32_e32 v161, v50, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v161, v161, v162
.Ltmp76:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v162, v70, v18
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v160, v160, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v162, v66, v16
	v_add_f32_e32 v162, v162, v163
.Ltmp78:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v163, v86, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v163, v82, v4
	v_dual_add_f32 v163, v163, v164 :: v_dual_mul_f32 v164, v102, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v161, v162, v163
	v_fmac_f32_e32 v164, v98, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v160, v160, v161
	v_add_f32_e32 v164, v164, v246
.Ltmp80:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v246, v118, v31
	v_mul_f32_e32 v247, v126, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v246, v114, v29
	v_fmac_f32_e32 v247, v122, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v246, v246, v247
.Ltmp82:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_dual_mul_f32 v247, v134, v19 :: v_dual_add_f32 v162, v164, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v247, v130, v17
	v_dual_add_f32 v247, v247, v248 :: v_dual_mul_f32 v248, v150, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v248, v146, v5
	v_dual_add_f32 v248, v248, v249 :: v_dual_mul_f32 v249, v143, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_e32 v163, v247, v248
.Ltmp84:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v248, v127, v23
	v_mul_f32_e32 v247, v111, v27
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v249, v139, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_add_f32 v161, v162, v163 :: v_dual_fmac_f32 v248, v123, v21
.Ltmp86:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v162, v63, v22
	v_mul_f32_e32 v163, v79, v10
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v247, v107, v25
	v_add_f32_e32 v160, v160, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v162, v59, v20
	v_fmac_f32_e32 v163, v75, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v161, v160, s54, 0xfedcba98 op_sel:[1,0]
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v246, v160, v161
.Ltmp90:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v160, v39, v14
	v_mul_f32_e32 v161, v47, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v160, v35, v12
	v_fmac_f32_e32 v161, v43, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v160, v160, v161 :: v_dual_mul_f32 v161, v55, v30
	v_fmac_f32_e32 v161, v51, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v161, v161, v162
.Ltmp92:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v162, v71, v18
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v162, v67, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v162, v162, v163 :: v_dual_mul_f32 v163, v87, v6
.Ltmp94:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v164, v95, v2
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v163, v83, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v164, v91, v0
	v_add_f32_e32 v163, v163, v164
.Ltmp96:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v164, v103, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v164, v99, v13
	v_add_f32_e32 v164, v164, v247
.Ltmp98:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v247, v119, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v247, v115, v29
	v_add_f32_e32 v247, v247, v248
.Ltmp100:
	.loc	1 285 33                        ; kda_gluon.py:285:33
	v_mul_f32_e32 v248, v135, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_fmac_f32_e32 v248, v131, v17
	v_dual_add_f32 v248, v248, v249 :: v_dual_mul_f32 v249, v151, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v249, v147, v5
	v_dual_add_f32 v249, v249, v250 :: v_dual_add_f32 v160, v160, v161
	v_add_f32_e32 v161, v162, v163
	v_add_f32_e32 v162, v164, v247
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v163, v248, v249
	v_dual_add_f32 v160, v160, v161 :: v_dual_add_f32 v161, v162, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v160, v160, v161
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v161, v160, s54, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_add_f32_e32 v247, v160, v161
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	ds_store_b128 v211, v[244:247]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[244:247], v232
.Ltmp105:
	.loc	1 286 26                        ; kda_gluon.py:286:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v160, v244, s54, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v161, v245, s54, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v244, v244, v160 :: v_dual_add_f32 v245, v245, v161
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:285:26 ]
	v_permlanex16_b32 v160, v246, s54, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v161, v247, s54, 0xfedcba98 op_sel:[1,0]
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:285:26 ] ]
	v_dual_add_f32 v246, v246, v160 :: v_dual_add_f32 v247, v247, v161
.Ltmp110:
	.loc	1 267 21                        ; kda_gluon.py:267:21
	v_lshlrev_b32_e32 v160, 16, v237
	.loc	1 286 26                        ; kda_gluon.py:286:26
	ds_store_2addr_b64 v176, v[244:245], v[246:247] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v161, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 267 21                        ; kda_gluon.py:267:21
	v_cndmask_b32_e64 v160, 0, v160, s18
	.loc	1 286 26                        ; kda_gluon.py:286:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v237, 0, v161
	ds_load_b32 v161, v237
	.loc	1 288 30                        ; kda_gluon.py:288:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 287 24                        ; kda_gluon.py:287:24
	v_sub_f32_e32 v160, v160, v161
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 289 17                        ; kda_gluon.py:289:17
	v_mul_f32_e32 v160, v243, v160
	.loc	1 288 30                        ; kda_gluon.py:288:30
	ds_store_b32 v237, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[243:246], v176 offset1:16
	.loc	1 294 27                        ; kda_gluon.py:294:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_fmac_f32_e32 v99, v13, v246
	v_dual_fmac_f32 v103, v15, v246 :: v_dual_fmac_f32 v106, v25, v245
	v_dual_fmac_f32 v63, v22, v246 :: v_dual_fmac_f32 v110, v27, v245
	v_dual_fmac_f32 v65, v16, v244 :: v_dual_fmac_f32 v134, v19, v245
	v_dual_fmac_f32 v89, v0, v244 :: v_dual_fmac_f32 v76, v10, v243
	v_dual_fmac_f32 v91, v0, v246 :: v_dual_fmac_f32 v78, v10, v245
	v_dual_fmac_f32 v153, v1, v244 :: v_dual_fmac_f32 v140, v11, v243
	v_dual_fmac_f32 v155, v1, v246 :: v_dual_fmac_f32 v88, v0, v243
	v_fmac_f32_e32 v90, v0, v245
	v_fmac_f32_e32 v152, v1, v243
	v_fmac_f32_e32 v154, v1, v245
	.loc	1 244 21                        ; kda_gluon.py:244:21
	v_div_fixup_f32 v0, v241, v240, v238
	v_div_fixup_f32 v1, v242, v240, v239
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v34, v12, v245 :: v_dual_fmac_f32 v111, v27, v246
	v_dual_fmac_f32 v32, v12, v243 :: v_dual_fmac_f32 v109, v27, v244
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 295 21                        ; kda_gluon.py:295:21
	v_dual_mul_f32 v0, s53, v0 :: v_dual_mul_f32 v1, s53, v1
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v96, v13, v243 :: v_dual_fmac_f32 v53, v30, v244
	v_fmac_f32_e32 v97, v13, v244
	v_dual_fmac_f32 v98, v13, v245 :: v_dual_fmac_f32 v55, v30, v246
	v_fmac_f32_e32 v101, v15, v244
	v_dual_fmac_f32 v102, v15, v245 :: v_dual_fmac_f32 v57, v20, v244
	v_dual_fmac_f32 v104, v25, v243 :: v_dual_fmac_f32 v61, v22, v244
	v_dual_fmac_f32 v105, v25, v244 :: v_dual_fmac_f32 v108, v27, v243
	v_dual_fmac_f32 v123, v21, v246 :: v_dual_fmac_f32 v116, v31, v243
	v_dual_fmac_f32 v131, v17, v246 :: v_dual_fmac_f32 v126, v23, v245
	v_dual_fmac_f32 v81, v4, v244 :: v_dual_fmac_f32 v68, v18, v243
	v_dual_fmac_f32 v83, v4, v246 :: v_dual_fmac_f32 v70, v18, v245
	v_fmac_f32_e32 v145, v5, v244
	v_dual_fmac_f32 v128, v17, v243 :: v_dual_fmac_f32 v85, v6, v244
	v_dual_fmac_f32 v130, v17, v245 :: v_dual_fmac_f32 v87, v6, v246
	v_dual_fmac_f32 v132, v19, v243 :: v_dual_fmac_f32 v147, v5, v246
	v_dual_fmac_f32 v72, v8, v243 :: v_dual_fmac_f32 v149, v7, v244
	v_dual_fmac_f32 v74, v8, v245 :: v_dual_fmac_f32 v151, v7, v246
	v_dual_fmac_f32 v136, v9, v243 :: v_dual_fmac_f32 v93, v2, v244
	v_dual_fmac_f32 v138, v9, v245 :: v_dual_fmac_f32 v95, v2, v246
	v_dual_fmac_f32 v80, v4, v243 :: v_dual_fmac_f32 v157, v3, v244
	v_dual_fmac_f32 v82, v4, v245 :: v_dual_fmac_f32 v159, v3, v246
	v_fmac_f32_e32 v84, v6, v243
	v_fmac_f32_e32 v86, v6, v245
	v_fmac_f32_e32 v144, v5, v243
	v_fmac_f32_e32 v146, v5, v245
	v_fmac_f32_e32 v148, v7, v243
	v_fmac_f32_e32 v150, v7, v245
	v_fmac_f32_e32 v92, v2, v243
	v_fmac_f32_e32 v94, v2, v245
	v_fmac_f32_e32 v156, v3, v243
	v_fmac_f32_e32 v158, v3, v245
	.loc	1 294 27                        ; kda_gluon.py:294:27
	ds_store_b64 v206, v[0:1]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v229
	ds_load_b128 v[4:7], v229 offset:16
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v36, v14, v243 :: v_dual_fmac_f32 v49, v28, v244
	v_fmac_f32_e32 v37, v14, v244
	v_dual_fmac_f32 v38, v14, v245 :: v_dual_fmac_f32 v113, v29, v244
	v_dual_fmac_f32 v39, v14, v246 :: v_dual_fmac_f32 v100, v15, v243
	v_dual_fmac_f32 v115, v29, v246 :: v_dual_fmac_f32 v44, v26, v243
	v_fmac_f32_e32 v59, v20, v246
	v_fmac_f32_e32 v45, v26, v244
	v_dual_fmac_f32 v46, v26, v245 :: v_dual_fmac_f32 v121, v21, v244
	v_fmac_f32_e32 v47, v26, v246
	v_fmac_f32_e32 v33, v12, v244
	v_fmac_f32_e32 v35, v12, v246
	v_dual_fmac_f32 v40, v24, v243 :: v_dual_fmac_f32 v117, v31, v244
	v_fmac_f32_e32 v41, v24, v244
	v_dual_fmac_f32 v42, v24, v245 :: v_dual_fmac_f32 v119, v31, v246
	v_fmac_f32_e32 v43, v24, v246
	v_dual_fmac_f32 v107, v25, v246 :: v_dual_fmac_f32 v48, v28, v243
	v_dual_fmac_f32 v125, v23, v244 :: v_dual_fmac_f32 v50, v28, v245
	v_dual_fmac_f32 v127, v23, v246 :: v_dual_fmac_f32 v52, v30, v243
	v_dual_fmac_f32 v67, v16, v246 :: v_dual_fmac_f32 v54, v30, v245
	v_fmac_f32_e32 v129, v17, v244
	v_dual_fmac_f32 v112, v29, v243 :: v_dual_fmac_f32 v69, v18, v244
	v_dual_fmac_f32 v114, v29, v245 :: v_dual_fmac_f32 v71, v18, v246
	v_dual_fmac_f32 v118, v31, v245 :: v_dual_fmac_f32 v73, v8, v244
	v_dual_fmac_f32 v56, v20, v243 :: v_dual_fmac_f32 v133, v19, v244
	v_dual_fmac_f32 v58, v20, v245 :: v_dual_fmac_f32 v135, v19, v246
	v_dual_fmac_f32 v60, v22, v243 :: v_dual_fmac_f32 v75, v8, v246
	v_dual_fmac_f32 v62, v22, v245 :: v_dual_fmac_f32 v137, v9, v244
	v_dual_fmac_f32 v120, v21, v243 :: v_dual_fmac_f32 v77, v10, v244
	v_dual_fmac_f32 v122, v21, v245 :: v_dual_fmac_f32 v79, v10, v246
	v_dual_fmac_f32 v124, v23, v243 :: v_dual_fmac_f32 v139, v9, v246
	v_dual_fmac_f32 v64, v16, v243 :: v_dual_fmac_f32 v141, v11, v244
	v_dual_fmac_f32 v66, v16, v245 :: v_dual_fmac_f32 v143, v11, v246
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v142, v11, v245 :: v_dual_mul_f32 v9, v100, v3
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v10, v37, v2
	v_dual_mul_f32 v11, v101, v3 :: v_dual_mul_f32 v12, v38, v2
	v_dual_mul_f32 v13, v102, v3 :: v_dual_mul_f32 v14, v39, v2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v15, v103, v3 :: v_dual_mul_f32 v16, v44, v6
	v_dual_mul_f32 v17, v108, v7 :: v_dual_mul_f32 v18, v45, v6
	v_dual_mul_f32 v19, v109, v7 :: v_dual_mul_f32 v20, v46, v6
	v_dual_mul_f32 v21, v110, v7 :: v_dual_mul_f32 v22, v47, v6
	v_dual_mul_f32 v23, v111, v7 :: v_dual_mul_f32 v8, v36, v2
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v9, v96, v1 :: v_dual_fmac_f32 v10, v33, v0
	v_dual_fmac_f32 v11, v97, v1 :: v_dual_fmac_f32 v12, v34, v0
	v_dual_fmac_f32 v13, v98, v1 :: v_dual_fmac_f32 v14, v35, v0
	v_dual_fmac_f32 v15, v99, v1 :: v_dual_fmac_f32 v16, v40, v4
	v_dual_fmac_f32 v17, v104, v5 :: v_dual_fmac_f32 v18, v41, v4
	v_dual_fmac_f32 v19, v105, v5 :: v_dual_fmac_f32 v20, v42, v4
	v_dual_fmac_f32 v21, v106, v5 :: v_dual_fmac_f32 v22, v43, v4
	v_dual_fmac_f32 v23, v107, v5 :: v_dual_fmac_f32 v8, v32, v0
.Ltmp112:
	.loc	1 294 27                        ; kda_gluon.py:294:27
	ds_load_b128 v[0:3], v229 offset:128
	ds_load_b128 v[4:7], v229 offset:144
	.loc	1 292 13                        ; kda_gluon.py:292:13
	v_dual_fmac_f32 v51, v28, v246 :: v_dual_mov_b32 v182, v165
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v9, v9, v17
	v_add_f32_e32 v11, v11, v19
.Ltmp114:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v25, v116, v3 :: v_dual_mul_f32 v26, v53, v2
	v_dual_mul_f32 v27, v117, v3 :: v_dual_mul_f32 v28, v54, v2
	v_dual_mul_f32 v29, v118, v3 :: v_dual_mul_f32 v30, v55, v2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v31, v119, v3 :: v_dual_mul_f32 v160, v60, v6
	v_dual_mul_f32 v161, v124, v7 :: v_dual_mul_f32 v162, v61, v6
	v_dual_mul_f32 v163, v125, v7 :: v_dual_mul_f32 v164, v62, v6
	v_dual_mul_f32 v238, v126, v7 :: v_dual_mul_f32 v239, v63, v6
	v_mul_f32_e32 v24, v52, v2
	v_dual_mul_f32 v240, v127, v7 :: v_dual_fmac_f32 v25, v112, v1
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v26, v49, v0
	v_dual_fmac_f32 v27, v113, v1 :: v_dual_fmac_f32 v28, v50, v0
	v_dual_fmac_f32 v29, v114, v1 :: v_dual_fmac_f32 v30, v51, v0
	v_dual_fmac_f32 v31, v115, v1 :: v_dual_fmac_f32 v160, v56, v4
	v_dual_fmac_f32 v161, v120, v5 :: v_dual_fmac_f32 v162, v57, v4
	v_dual_fmac_f32 v163, v121, v5 :: v_dual_fmac_f32 v164, v58, v4
	v_dual_fmac_f32 v238, v122, v5 :: v_dual_fmac_f32 v239, v59, v4
	v_fmac_f32_e32 v24, v48, v0
	v_fmac_f32_e32 v240, v123, v5
.Ltmp116:
	.loc	1 294 27                        ; kda_gluon.py:294:27
	ds_load_b128 v[0:3], v229 offset:256
	ds_load_b128 v[4:7], v229 offset:272
	v_dual_mov_b32 v202, v185 :: v_dual_mov_b32 v185, v168
	v_dual_mov_b32 v186, v169 :: v_dual_add_f32 v19, v27, v163
	v_mov_b32_e32 v163, v180
	scratch_load_b32 v27, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 298 33                        ; kda_gluon.py:298:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v241, v68, v2
	v_mul_f32_e32 v243, v69, v2
	v_dual_mul_f32 v244, v133, v3 :: v_dual_mul_f32 v245, v70, v2
	v_dual_mul_f32 v246, v134, v3 :: v_dual_mul_f32 v247, v71, v2
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v248, v135, v3 :: v_dual_mul_f32 v249, v76, v6
	v_dual_mul_f32 v250, v140, v7 :: v_dual_mul_f32 v251, v77, v6
	v_dual_mul_f32 v252, v141, v7 :: v_dual_mul_f32 v253, v78, v6
	v_dual_mul_f32 v254, v142, v7 :: v_dual_mul_f32 v255, v79, v6
	v_mul_f32_e32 v165, v143, v7
	v_mul_f32_e32 v242, v132, v3
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v241, v64, v0
	v_fmac_f32_e32 v243, v65, v0
	v_dual_fmac_f32 v244, v129, v1 :: v_dual_fmac_f32 v245, v66, v0
	v_dual_fmac_f32 v246, v130, v1 :: v_dual_fmac_f32 v247, v67, v0
	v_dual_fmac_f32 v248, v131, v1 :: v_dual_fmac_f32 v249, v72, v4
	v_dual_fmac_f32 v250, v136, v5 :: v_dual_fmac_f32 v251, v73, v4
	v_dual_fmac_f32 v252, v137, v5 :: v_dual_fmac_f32 v253, v74, v4
	v_dual_fmac_f32 v254, v138, v5 :: v_dual_fmac_f32 v255, v75, v4
	v_fmac_f32_e32 v165, v139, v5
	v_fmac_f32_e32 v242, v128, v1
.Ltmp118:
	.loc	1 294 27                        ; kda_gluon.py:294:27
	ds_load_b128 v[0:3], v229 offset:384
	ds_load_b128 v[4:7], v229 offset:400
	v_dual_mov_b32 v204, v187 :: v_dual_mov_b32 v187, v170
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v10, v10, v18
	s_waitcnt lgkmcnt(1)
	v_dual_add_f32 v18, v26, v162 :: v_dual_mul_f32 v167, v148, v3
.Ltmp120:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v169, v149, v3
	v_mul_f32_e32 v171, v150, v3
	v_dual_mul_f32 v3, v151, v3 :: v_dual_mov_b32 v206, v189
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v17, v242, v250
	v_fmac_f32_e32 v167, v144, v1
	v_fmac_f32_e32 v169, v145, v1
	v_fmac_f32_e32 v171, v146, v1
	v_fmac_f32_e32 v3, v147, v1
.Ltmp122:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v1, v156, v7 :: v_dual_mov_b32 v200, v183
	v_dual_mov_b32 v183, v166 :: v_dual_mul_f32 v166, v84, v2
	v_mul_f32_e32 v173, v157, v7
	v_dual_mov_b32 v189, v172 :: v_dual_mul_f32 v172, v87, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v1, v152, v5 :: v_dual_mul_f32 v170, v86, v2
.Ltmp124:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v175, v158, v7 :: v_dual_mul_f32 v168, v85, v2
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v166, v80, v0 :: v_dual_fmac_f32 v173, v153, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v170, v82, v0
.Ltmp126:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v2, v93, v6 :: v_dual_add_f32 v1, v167, v1
	v_mul_f32_e32 v174, v94, v6
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_fmac_f32 v175, v154, v5 :: v_dual_fmac_f32 v168, v81, v0
	v_dual_mov_b32 v167, v184 :: v_dual_fmac_f32 v172, v83, v0
.Ltmp128:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_mul_f32_e32 v0, v92, v6
	v_mul_f32_e32 v6, v95, v6
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_fmac_f32_e32 v2, v89, v4
	v_fmac_f32_e32 v174, v90, v4
	v_add_f32_e32 v26, v169, v173
	v_fmac_f32_e32 v0, v88, v4
	v_dual_fmac_f32 v6, v91, v4 :: v_dual_add_f32 v1, v17, v1
.Ltmp130:
	.loc	1 298 33                        ; kda_gluon.py:298:33
	v_dual_mul_f32 v4, v159, v7 :: v_dual_add_f32 v7, v24, v160
	v_dual_mov_b32 v160, v177 :: v_dual_mov_b32 v177, v194
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v2, v168, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v4, v155, v5 :: v_dual_add_f32 v5, v8, v16
	v_add_f32_e32 v16, v25, v161
	v_dual_add_f32 v8, v241, v249 :: v_dual_add_f32 v25, v244, v252
	v_mov_b32_e32 v173, v190
	v_add_f32_e32 v5, v5, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v7, v9, v16
	v_add_f32_e32 v0, v166, v0
	v_add_f32_e32 v24, v243, v251
	v_add_f32_e32 v9, v11, v19
	v_dual_mov_b32 v162, v179 :: v_dual_add_f32 v11, v246, v254
	v_dual_add_f32 v1, v7, v1 :: v_dual_add_f32 v0, v8, v0
	v_dual_add_f32 v7, v245, v253 :: v_dual_add_f32 v8, v10, v18
	v_dual_add_f32 v10, v25, v26 :: v_dual_mov_b32 v179, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_e32 v0, v5, v0
	v_add_f32_e32 v6, v172, v6
	v_dual_mov_b32 v172, v189 :: v_dual_mov_b32 v189, v206
	v_add_f32_e32 v5, v9, v10
	v_dual_add_f32 v10, v29, v238 :: v_dual_mov_b32 v29, v207
	v_add_f32_e32 v2, v24, v2
	v_dual_add_f32 v0, v0, v1 :: v_dual_add_f32 v3, v3, v4
	v_mov_b32_e32 v161, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_add_f32 v9, v13, v21 :: v_dual_add_f32 v2, v8, v2
	v_mov_b32_e32 v166, v183
	v_add_f32_e32 v8, v170, v174
	v_dual_mov_b32 v180, v197 :: v_dual_mov_b32 v169, v186
	v_add_f32_e32 v1, v2, v5
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v2, v0, s54, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v186, v203
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v26, off, off offset:20
	scratch_load_b32 v25, off, off offset:16
	scratch_load_b32 v13, off, off offset:12
	v_permlanex16_b32 v5, v1, s54, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v178, v195
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v0, v0, v2
	v_add_f32_e32 v2, v12, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_add_f32 v12, v171, v175 :: v_dual_add_f32 v1, v1, v5
	v_dual_add_f32 v5, v28, v164 :: v_dual_mov_b32 v168, v185
	v_dual_mov_b32 v171, v188 :: v_dual_mov_b32 v170, v187
	v_dual_mov_b32 v175, v192 :: v_dual_add_f32 v2, v2, v5
	v_add_f32_e32 v5, v7, v8
	v_dual_add_f32 v7, v9, v10 :: v_dual_add_f32 v8, v11, v12
	v_add_f32_e32 v9, v15, v23
	v_add_f32_e32 v10, v31, v240
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v2, v2, v5
	v_add_f32_e32 v11, v248, v165
	v_add_f32_e32 v5, v7, v8
	v_add_f32_e32 v7, v30, v239
	v_add_f32_e32 v8, v247, v255
	v_dual_mov_b32 v164, v181 :: v_dual_add_f32 v3, v11, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v2, v2, v5
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v30, off, off offset:56
	scratch_load_b32 v24, off, off offset:24
	scratch_load_b32 v23, off, off offset:40
	scratch_load_b32 v15, off, off offset:4
	v_mov_b32_e32 v165, v182
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v5, v2, s54, 0xfedcba98 op_sel:[1,0]
	v_dual_mov_b32 v181, v198 :: v_dual_mov_b32 v182, v199
	v_dual_mov_b32 v183, v200 :: v_dual_mov_b32 v184, v201
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v187, v204 :: v_dual_add_f32 v2, v2, v5
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v5, v14, v22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:64
	scratch_load_b32 v14, off, off offset:8
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v185, v202 :: v_dual_add_f32 v4, v5, v7
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v5, v8, v6
	v_add_f32_e32 v6, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v4, v4, v5 :: v_dual_add_f32 v3, v6, v3
	v_add_f32_e32 v3, v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v4, v3, s54, 0xfedcba98 op_sel:[1,0]
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_add_f32_e32 v3, v3, v4
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	ds_store_b128 v211, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v232
.Ltmp141:
	.loc	1 299 26                        ; kda_gluon.py:299:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v4, v0, s54, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v1, s54, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v174, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v0, v0, v4 :: v_dual_add_f32 v1, v1, v5
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ kda_gluon.py:298:26 ]
	v_permlanex16_b32 v4, v2, s54, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v3, s54, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v188, v205
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ kda_gluon.py:298:26 ] ]
	v_dual_add_f32 v2, v2, v4 :: v_dual_add_f32 v3, v3, v5
.Ltmp146:
	.loc	1 299 26                        ; kda_gluon.py:299:26
	ds_store_2addr_b64 v176, v[0:1], v[2:3] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v237
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
	s_and_b32 vcc_lo, s19, s23
	.loc	1 303 17                        ; kda_gluon.py:303:17
	s_waitcnt vmcnt(0)
	buffer_store_b16 v0, v1, s[40:43], 0 offen
	.loc	1 327 21                        ; kda_gluon.py:327:21
	v_add_lshl_u32 v0, s22, v29, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[32:33], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v160, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[34:35], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v161, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[36:37], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v162, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[38:39], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v163, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[40:41], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v164, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[42:43], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v165, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s4, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[44:45], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v166, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s5, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[46:47], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v167, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[48:49], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v168, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[50:51], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v169, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[52:53], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v170, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[54:55], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v171, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[56:57], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v172, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[58:59], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v173, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s6, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[60:61], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v174, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s7, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[62:63], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v175, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[64:65], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v212, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[66:67], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v177, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[68:69], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v178, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[70:71], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v179, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[72:73], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v180, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[74:75], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v181, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s8, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[76:77], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v182, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s9, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[78:79], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v183, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[80:81], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v184, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[82:83], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v185, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[84:85], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v186, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[86:87], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v187, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[88:89], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v188, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[90:91], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v189, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s10, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[92:93], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s11, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[94:95], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v208, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[96:97], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v209, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[98:99], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v210, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[100:101], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[102:103], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v228, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[104:105], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v15, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[106:107], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v214, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s12, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[108:109], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v215, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s13, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[110:111], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v216, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[112:113], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v217, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[114:115], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v218, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[116:117], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v219, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[118:119], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v220, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[120:121], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v221, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[122:123], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v222, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s14, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[124:125], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v223, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s15, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[126:127], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v224, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[128:129], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v225, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[130:131], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v227, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[132:133], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v22, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[134:135], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v230, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[136:137], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v23, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[138:139], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v226, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 vcc_lo, s16, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[140:141], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v24, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 331 30                        ; kda_gluon.py:331:30
	s_and_b32 s2, s17, s23
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[142:143], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v234, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[144:145], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v25, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[146:147], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v236, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[148:149], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v26, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[150:151], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v213, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[152:153], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v27, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_store_b64 v[154:155], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v30, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b64 v[156:157], v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, s22, v193, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 311 21                        ; kda_gluon.py:311:21
	s_add_i32 s2, s58, s33
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s2, 4
	.loc	1 327 21                        ; kda_gluon.py:327:21
	buffer_store_b64 v[158:159], v0, s[28:31], 0 offen
	.loc	1 190 9                         ; kda_gluon.py:190:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 77 5                          ; kda_gluon.py:77:5
	s_endpgm
.Ltmp147:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
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
		.amdhsa_next_free_sgpr 59
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
	.size	amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4, .Lfunc_end0-amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_vgpr, 256
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_agpr, 0
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.numbered_sgpr, 59
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.private_seg_size, 76
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_recursion, 0
	.set amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11032
; TotalNumSgprs: 61
; NumVgprs: 256
; ScratchSize: 76
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 61
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
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
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
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
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
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
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4"                        ; string offset=88 ; amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
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
    .name:           amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4
    .private_segment_fixed_size: 76
    .sgpr_count:     61
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_kda_fwd_cache_bf16xbf16_b4_t2048_h32_d128_dv128_vb64_ci4.kd
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
