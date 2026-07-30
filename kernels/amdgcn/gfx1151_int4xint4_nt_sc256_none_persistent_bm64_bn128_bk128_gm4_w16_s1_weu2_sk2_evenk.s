	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 222 0                         ; generate_amdgcn.py:222:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:231:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:232:17 ]
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_lshr_b32 s6, s6, 26
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_ashr_i32 s33, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_ashr_i32 s12, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 233 17 is_stmt 1              ; generate_amdgcn.py:233:17
	s_mul_i32 s34, s12, s33
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cmp_ge_i32 s2, s34
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph19
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 247 36 is_stmt 1              ; generate_amdgcn.py:247:36
	v_and_b32_e32 v16, 15, v0
	v_lshrrev_b32_e32 v17, 1, v0
	v_lshlrev_b32_e32 v1, 3, v0
	v_lshlrev_b32_e32 v19, 2, v0
	v_and_b32_e32 v30, 1, v0
	v_lshlrev_b32_e32 v18, 6, v16
	v_and_b32_e32 v17, 56, v17
	v_bfe_i32 v31, v0, 7, 1
	v_lshrrev_b32_e32 v25, 3, v0
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_and_b32_e32 v26, 0xe0, v0
	v_and_b32_e32 v9, 0x7f, v0
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_lshrrev_b32_e32 v2, 7, v0
	v_and_b32_e32 v3, 0x100, v0
	v_bfe_i32 v4, v0, 8, 1
	v_and_b32_e32 v10, 56, v1
	v_and_or_b32 v20, 0x438, v19, v18
	v_and_b32_e32 v22, 56, v19
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:272:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s13, 0xff
.Ltmp12:
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_lshr_b32 s14, s13, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_add_i32 s13, s13, s14
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_lshr_b32 s1, s1, 24
	v_xor_b32_e32 v17, v1, v17
	s_add_i32 s1, s0, s1
	v_and_b32_e32 v1, 14, v0
	v_bfe_i32 v28, v0, 0, 1
	v_and_b32_e32 v19, 0x78, v19
	v_lshlrev_b32_e32 v0, 4, v0
	v_lshlrev_b32_e32 v30, 6, v30
	v_and_b32_e32 v31, 0x840, v31
.Ltmp16:
	.loc	1 234 24                        ; generate_amdgcn.py:234:24
	s_lshl_b32 s36, s12, 2
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_ashr_i32 s37, s13, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_ashr_i32 s38, s1, 8
	s_cmpk_gt_i32 s0, 0xff
	v_lshlrev_b32_e32 v29, 11, v1
	s_cselect_b32 s1, -1, 0
	s_abs_i32 s44, s36
	v_and_b32_e32 v28, 0x840, v28
	v_lshl_or_b32 v19, v26, 3, v19
	v_and_b32_e32 v0, 0x700, v0
	v_lshlrev_b32_e32 v1, 2, v1
	v_xor_b32_e32 v30, v31, v30
	s_cvt_f32_u32 s0, s44
.Ltmp18:
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_lshrrev_b32_e32 v15, 4, v3
	v_lshrrev_b32_e32 v3, 1, v3
	v_xor_b32_e32 v19, v19, v28
	v_or3_b32 v0, v0, v1, v30
	v_rcp_iflag_f32_e32 v30, s0
	v_or_b32_e32 v14, 4, v2
	v_or_b32_e32 v13, 12, v2
	v_or3_b32 v28, v29, v3, v19
	v_and_b32_e32 v3, 0x1008, v4
	v_or_b32_e32 v12, 20, v2
	v_or_b32_e32 v5, 28, v2
	v_lshlrev_b32_e32 v21, 5, v26
	v_or_b32_e32 v6, 36, v2
	v_xor_b32_e32 v29, v0, v3
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	v_mad_u64_u32 v[0:1], null, s35, v2, v[9:10]
	v_readfirstlane_b32 s0, v30
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_or_b32_e32 v11, 60, v2
	v_or_b32_e32 v8, 52, v2
	v_or_b32_e32 v7, 44, v2
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	v_mad_u64_u32 v[1:2], null, s35, v14, v[9:10]
	v_mad_u64_u32 v[2:3], null, s35, v13, v[9:10]
	v_mad_u64_u32 v[3:4], null, s35, v12, v[9:10]
	v_or3_b32 v18, v21, v22, v18
	v_mad_u64_u32 v[4:5], null, s35, v5, v[9:10]
	v_mad_u64_u32 v[5:6], null, s35, v6, v[9:10]
	s_mul_f32 s0, s0, 0x4f7ffffe
	v_mad_u64_u32 v[6:7], null, s35, v7, v[9:10]
	v_mad_u64_u32 v[7:8], null, s35, v8, v[9:10]
	v_mad_u64_u32 v[8:9], null, s35, v11, v[9:10]
	s_mov_b32 s24, s4
	s_mov_b32 s4, s6
	v_xor_b32_e32 v23, 8, v20
	v_xor_b32_e32 v24, 16, v20
	v_xor_b32_e32 v38, 24, v20
	v_xor_b32_e32 v21, 32, v20
	v_xor_b32_e32 v22, 40, v20
	v_xor_b32_e32 v41, 48, v20
	v_xor_b32_e32 v42, 56, v20
	v_xor_b32_e32 v44, 8, v18
	v_xor_b32_e32 v45, 16, v18
	v_xor_b32_e32 v46, 24, v18
	v_xor_b32_e32 v47, 32, v18
	v_xor_b32_e32 v48, 40, v18
	v_xor_b32_e32 v49, 48, v18
	v_xor_b32_e32 v50, 56, v18
	v_xor_b32_e32 v19, 8, v28
	v_xor_b32_e32 v52, 16, v28
	v_xor_b32_e32 v53, 24, v28
	v_xor_b32_e32 v54, 32, v28
	v_xor_b32_e32 v55, 40, v28
	v_xor_b32_e32 v56, 48, v28
	v_xor_b32_e32 v57, 56, v28
	v_xor_b32_e32 v58, 0x2010, v29
	v_xor_b32_e32 v59, 0x4020, v29
	v_xor_b32_e32 v60, 0x6030, v29
	v_lshl_or_b32 v30, s3, 6, v10
	s_cvt_u32_f32 s6, s0
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_or_b32_e32 v31, v15, v16
	v_cndmask_b32_e64 v9, 0, 1, s1
	s_and_b32 s25, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_sub_i32 s7, 0, s44
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_or_b32_e32 v27, 64, v25
	s_mul_i32 s7, s7, s6
	v_cmp_gt_i32_e64 s0, 0x80, v30
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	v_and_b32_e32 v32, 2, v25
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_or_b32_e32 v33, 32, v31
	v_cmp_ne_u32_e64 s1, 1, v9
	v_add_nc_u32_e32 v34, 0, v17
	v_add_nc_u32_e32 v35, 0, v20
	v_add_nc_u32_e32 v36, 0, v23
	v_add_nc_u32_e32 v37, 0, v24
	v_add_nc_u32_e32 v38, 0, v38
	v_add_nc_u32_e32 v39, 0, v21
	v_add_nc_u32_e32 v40, 0, v22
	v_add_nc_u32_e32 v41, 0, v41
	v_add_nc_u32_e32 v42, 0, v42
	v_add_nc_u32_e32 v43, 0, v18
	v_add_nc_u32_e32 v44, 0, v44
	v_add_nc_u32_e32 v45, 0, v45
	v_add_nc_u32_e32 v46, 0, v46
	v_add_nc_u32_e32 v47, 0, v47
	v_add_nc_u32_e32 v48, 0, v48
	v_add_nc_u32_e32 v49, 0, v49
	v_add_nc_u32_e32 v50, 0, v50
	v_add_nc_u32_e32 v51, 0, v19
	v_add_nc_u32_e32 v52, 0, v52
	v_add_nc_u32_e32 v53, 0, v53
	v_add_nc_u32_e32 v54, 0, v54
	v_add_nc_u32_e32 v55, 0, v55
	v_add_nc_u32_e32 v56, 0, v56
	v_add_nc_u32_e32 v57, 0, v57
	v_add_nc_u32_e32 v58, 0, v58
	v_add_nc_u32_e32 v59, 0, v59
	v_add_nc_u32_e32 v60, 0, v60
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mul_hi_u32 s7, s6, s7
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s29, s11, 0xffff
	s_mov_b32 s28, s10
	s_lshl_b32 s39, s35, 3
	s_lshl_b32 s40, s35, 4
	s_mul_i32 s41, s35, 24
	s_lshl_b32 s42, s35, 5
	s_mul_i32 s43, s35, 40
	s_mul_i32 s45, s35, 48
	s_mul_i32 s46, s35, 56
	s_and_b32 s21, s21, 0xffff
	s_bfe_i32 s3, s12, 0x1001d
	s_mov_b32 s12, 0
	s_add_i32 s47, s6, s7
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_lshl_b32 s48, s35, 1
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_lshl_b32 s49, s38, 1
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_add_nc_u32_e32 v61, 0, v28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 248 18                        ; generate_amdgcn.py:248:18
	s_lshl_b32 s6, s51, 7
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_mul_i32 s7, s50, s35
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	ds_store_b64 v61, v[23:24]
	ds_store_b64 v51, v[21:22]
	ds_store_b64 v52, v[19:20]
	ds_store_b64 v53, v[17:18]
	ds_store_b64 v54, v[15:16]
	ds_store_b64 v55, v[13:14]
	v_add_nc_u32_e32 v13, 0, v29
	ds_store_b64 v56, v[11:12]
	ds_store_b64 v57, v[9:10]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s7, s7, s6
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	ds_load_2addr_b64 v[9:12], v13 offset1:16
	ds_load_2addr_b64 v[13:16], v58 offset1:16
	ds_load_2addr_b64 v[17:20], v59 offset1:16
	ds_load_2addr_b64 v[21:24], v60 offset1:16
	v_add_nc_u32_e32 v61, s7, v0
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v63, s7, v1, 2
	v_add_lshl_u32 v65, s7, v3, 2
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_lshlrev_b32_e32 v62, 2, v61
	v_add_lshl_u32 v64, v61, s39, 2
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cmp_lt_i32 s2, s34
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v9, v62, s[20:23], 0 offen
	v_add_lshl_u32 v9, s7, v2, 2
	v_add_lshl_u32 v62, v61, s40, 2
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v13, v63, s[20:23], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v17, v64, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x2
	buffer_atomic_add_f32 v21, v9, s[20:23], 0 offen
	buffer_atomic_add_f32 v11, v62, s[20:23], 0 offen
	buffer_atomic_add_f32 v15, v65, s[20:23], 0 offen
	v_add_lshl_u32 v9, v61, s41, 2
	v_add_lshl_u32 v11, s7, v4, 2
	v_add_lshl_u32 v13, v61, s42, 2
	v_add_lshl_u32 v15, s7, v5, 2
	v_add_lshl_u32 v17, v61, s43, 2
	s_clause 0x4
	buffer_atomic_add_f32 v19, v9, s[20:23], 0 offen
	buffer_atomic_add_f32 v23, v11, s[20:23], 0 offen
	buffer_atomic_add_f32 v10, v13, s[20:23], 0 offen
	buffer_atomic_add_f32 v14, v15, s[20:23], 0 offen
	buffer_atomic_add_f32 v18, v17, s[20:23], 0 offen
	v_add_lshl_u32 v9, s7, v6, 2
	v_add_lshl_u32 v10, v61, s45, 2
	v_add_lshl_u32 v11, s7, v7, 2
	v_add_lshl_u32 v13, v61, s46, 2
	v_add_lshl_u32 v14, s7, v8, 2
	s_clause 0x4
	buffer_atomic_add_f32 v22, v9, s[20:23], 0 offen
	buffer_atomic_add_f32 v12, v10, s[20:23], 0 offen
	buffer_atomic_add_f32 v16, v11, s[20:23], 0 offen
	buffer_atomic_add_f32 v20, v13, s[20:23], 0 offen
	buffer_atomic_add_f32 v24, v14, s[20:23], 0 offen
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 242 20                        ; generate_amdgcn.py:242:20
	s_abs_i32 s6, s2
	s_ashr_i32 s10, s2, 31
	s_mul_hi_u32 s7, s6, s47
	s_xor_b32 s10, s10, s3
	s_mul_i32 s11, s7, s44
	v_mov_b32_e32 v10, 0
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s13, s6, s44
	s_cmp_ge_u32 s6, s44
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s6, s13, s6
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s6, s44
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	s_sub_i32 s6, s6, s10
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	.loc	1 243 23                        ; generate_amdgcn.py:243:23
	s_lshl_b32 s10, s6, 2
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_mul_i32 s6, s6, s36
	.loc	1 244 35                        ; generate_amdgcn.py:244:35
	s_sub_i32 s7, s33, s10
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_sub_i32 s15, s2, s6
	.loc	1 244 24                        ; generate_amdgcn.py:244:24
	s_min_i32 s11, s7, 4
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_abs_i32 s7, s11
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	s_cvt_f32_u32 s13, s7
	s_sub_i32 s14, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v9, s13
	v_readfirstlane_b32 s13, v9
	v_mov_b32_e32 v9, 0
	s_mul_f32 s13, s13, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s13, s13
	s_mul_i32 s14, s14, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s13, s14
	s_abs_i32 s14, s15
	s_add_i32 s13, s13, s6
	s_xor_b32 s6, s15, s11
	s_mul_hi_u32 s13, s14, s13
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s16, s13, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s14, s14, s16
	s_add_i32 s16, s13, 1
	s_sub_i32 s17, s14, s7
	s_cmp_ge_u32 s14, s7
	s_cselect_b32 s13, s16, s13
	s_cselect_b32 s14, s17, s14
	s_add_i32 s16, s13, 1
	s_cmp_ge_u32 s14, s7
	s_cselect_b32 s7, s16, s13
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s51, s7, s6
	.loc	1 245 32                        ; generate_amdgcn.py:245:32
	s_mul_i32 s11, s51, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s11, s15, s11
	.loc	1 245 17 is_stmt 0              ; generate_amdgcn.py:245:17
	s_add_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 247 18 is_stmt 1              ; generate_amdgcn.py:247:18
	s_lshl_b32 s50, s11, 6
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v9, s7, 8, v26
	s_lshl_b32 s10, s6, 8
	s_lshl_b32 s7, s7, 7
	s_lshl_b32 s6, s6, 7
	v_or_b32_e32 v11, s7, v27
	v_subrev_nc_u32_e32 v61, s10, v9
	v_or_b32_e32 v9, s7, v25
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v10, s50, v33
	v_dual_mov_b32 v67, v30 :: v_dual_add_nc_u32 v12, s50, v31
	v_add_nc_u32_e32 v13, s50, v25
	v_subrev_nc_u32_e32 v11, s6, v11
	v_subrev_nc_u32_e32 v9, s6, v9
	v_mul_lo_u32 v62, s49, v10
	v_mul_lo_u32 v63, s49, v12
	v_mov_b32_e32 v24, v23
	v_mul_lo_u32 v64, s37, v13
	v_mul_lo_u32 v65, s37, v11
	v_mul_lo_u32 v66, s37, v9
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, v23
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, v23
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, v23
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, v23
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, v23
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, v23
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, v23
	s_mov_b32 s52, s38
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 285 31                        ; generate_amdgcn.py:285:31
	v_cmp_gt_i32_e32 vcc_lo, s37, v67
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	.loc	1 285 30                        ; generate_amdgcn.py:285:30
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 294 38                        ; generate_amdgcn.py:294:38
	v_add_nc_u32_e32 v69, v66, v67
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	v_add_nc_u32_e32 v68, v64, v67
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 294 30                        ; generate_amdgcn.py:294:30
	v_dual_cndmask_b32 v71, 0x80000000, v69 :: v_dual_add_nc_u32 v70, v65, v67
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 294 30                        ; generate_amdgcn.py:294:30
	s_mov_b32 s6, s26
	s_mov_b32 s7, s27
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v72, 0x80000000, v70, vcc_lo
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	buffer_load_b64 v[68:69], v68, s[24:27], 0 offen
	.loc	1 294 30                        ; generate_amdgcn.py:294:30
	s_clause 0x1
	buffer_load_b64 v[70:71], v71, s[4:7], 0 offen
	buffer_load_b64 v[72:73], v72, s[4:7], 0 offen
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	v_add_nc_u32_e32 v74, v32, v61
	.loc	1 298 22                        ; generate_amdgcn.py:298:22
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_add_nc_u32_e32 v61, s48, v61
	v_add_nc_u32_e32 v67, 0x80, v67
	s_add_i32 s52, s52, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s52, 0
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	s_waitcnt vmcnt(2)
	ds_store_b64 v34, v[68:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[84:87], v35 offset1:4
	ds_load_2addr_stride64_b64 v[88:91], v36 offset1:4
	ds_load_2addr_stride64_b64 v[92:95], v37 offset1:4
	ds_load_2addr_stride64_b64 v[96:99], v38 offset1:4
	ds_load_2addr_stride64_b64 v[100:103], v39 offset1:4
	ds_load_2addr_stride64_b64 v[104:107], v40 offset1:4
	ds_load_2addr_stride64_b64 v[108:111], v41 offset1:4
	ds_load_2addr_stride64_b64 v[112:115], v42 offset1:4
	.loc	1 294 30                        ; generate_amdgcn.py:294:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v34, v[70:71], v[72:73] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 298 22                        ; generate_amdgcn.py:298:22
	s_clause 0x1
	buffer_load_u16 v132, v63, s[8:11], 0 offen
	buffer_load_u16 v133, v62, s[8:11], 0 offen
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_clause 0x7
	buffer_load_u16 v134, v74, s[28:31], 0 offen
	buffer_load_u16 v135, v74, s[28:31], 0 offen offset:4
	buffer_load_u16 v136, v74, s[28:31], 0 offen offset:8
	buffer_load_u16 v137, v74, s[28:31], 0 offen offset:12
	buffer_load_u16 v138, v74, s[28:31], 0 offen offset:16
	buffer_load_u16 v139, v74, s[28:31], 0 offen offset:20
	buffer_load_u16 v140, v74, s[28:31], 0 offen offset:24
	buffer_load_u16 v141, v74, s[28:31], 0 offen offset:28
	.loc	1 294 30                        ; generate_amdgcn.py:294:30
	ds_load_b64 v[116:117], v43
	ds_load_b64 v[118:119], v44
	ds_load_b64 v[120:121], v45
	ds_load_b64 v[122:123], v46
	ds_load_b64 v[124:125], v47
	ds_load_b64 v[126:127], v48
	ds_load_b64 v[128:129], v49
	ds_load_b64 v[130:131], v50
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	v_dual_mov_b32 v75, s19 :: v_dual_mov_b32 v70, s14
	v_dual_mov_b32 v74, s18 :: v_dual_mov_b32 v73, s17
	v_dual_mov_b32 v72, s16 :: v_dual_mov_b32 v71, s15
	v_dual_mov_b32 v69, s13 :: v_dual_mov_b32 v68, s12
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_add_nc_u32_e32 v63, 2, v63
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	s_waitcnt lgkmcnt(7)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[116:117], v[84:85], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[116:117], v[86:87], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[118:119], v[88:89], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[118:119], v[90:91], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[120:121], v[92:93], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[120:121], v[94:95], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[122:123], v[96:97], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[122:123], v[98:99], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[124:125], v[100:101], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[124:125], v[102:103], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[126:127], v[104:105], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[126:127], v[106:107], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[128:129], v[108:109], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[128:129], v[110:111], v[68:75] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[76:83], v[130:131], v[112:113], v[76:83] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[130:131], v[114:115], v[68:75] neg_lo:[1,1,0]
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	v_cvt_f32_i32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 298 22                        ; generate_amdgcn.py:298:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v85, 16, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	v_dual_mul_f32 v69, v69, v85 :: v_dual_lshlrev_b32 v84, 16, v132
	v_dual_mul_f32 v77, v77, v84 :: v_dual_add_nc_u32 v62, 2, v62
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v79, v79, v84 :: v_dual_lshlrev_b32 v86, 16, v134
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v78, v78, v84 :: v_dual_lshlrev_b32 v87, 16, v135
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v80, v80, v84 :: v_dual_lshlrev_b32 v89, 16, v137
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v81, v81, v84 :: v_dual_lshlrev_b32 v90, 16, v138
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v82, v82, v84 :: v_dual_lshlrev_b32 v91, 16, v139
	v_mul_f32_e32 v76, v76, v84
	v_dual_mul_f32 v71, v71, v85 :: v_dual_lshlrev_b32 v88, 16, v136
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v73, v73, v85 :: v_dual_lshlrev_b32 v92, 16, v140
	v_dual_mul_f32 v83, v83, v84 :: v_dual_mul_f32 v68, v68, v85
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v93, 16, v141
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	v_dual_mul_f32 v70, v70, v85 :: v_dual_fmac_f32 v23, v76, v86
	v_dual_mul_f32 v72, v72, v85 :: v_dual_fmac_f32 v21, v77, v87
	v_dual_mul_f32 v74, v74, v85 :: v_dual_fmac_f32 v15, v80, v90
	v_dual_mul_f32 v75, v75, v85 :: v_dual_fmac_f32 v22, v69, v87
	.loc	1 300 17 is_stmt 0              ; generate_amdgcn.py:300:17
	v_dual_fmac_f32 v19, v78, v88 :: v_dual_fmac_f32 v18, v71, v89
	v_dual_fmac_f32 v17, v79, v89 :: v_dual_fmac_f32 v20, v70, v88
	v_dual_fmac_f32 v13, v81, v91 :: v_dual_fmac_f32 v16, v72, v90
	v_dual_fmac_f32 v11, v82, v92 :: v_dual_fmac_f32 v14, v73, v91
	v_dual_fmac_f32 v24, v68, v86 :: v_dual_fmac_f32 v9, v83, v93
	v_fmac_f32_e32 v12, v74, v92
	v_fmac_f32_e32 v10, v75, v93
	.loc	1 278 13 is_stmt 1              ; generate_amdgcn.py:278:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge20
	.loc	1 222 1                         ; generate_amdgcn.py:222:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 142
		.amdhsa_next_free_sgpr 53
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
		.amdhsa_inst_pref_size 22
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.num_vgpr, 142
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2776
; TotalNumSgprs: 55
; NumVgprs: 142
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 142
; Occupancy: 10
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
	.byte	0                               ; DW_CHILDREN_no
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x37 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	231                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	232                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	272                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     142
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
