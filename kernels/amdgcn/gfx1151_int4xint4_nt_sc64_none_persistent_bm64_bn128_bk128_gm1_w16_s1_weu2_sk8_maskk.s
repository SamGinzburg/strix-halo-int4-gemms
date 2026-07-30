	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
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
	s_ashr_i32 s34, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 233 17 is_stmt 1              ; generate_amdgcn.py:233:17
	s_mul_i32 s40, s34, s33
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cmp_ge_i32 s2, s40
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph19
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 276 28 is_stmt 1              ; generate_amdgcn.py:276:28
	v_lshlrev_b32_e32 v10, 2, v0
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_and_b32_e32 v32, 0xe0, v0
	v_bfe_i32 v28, v0, 0, 1
	v_and_b32_e32 v34, 1, v0
	v_bfe_i32 v35, v0, 7, 1
	v_and_b32_e32 v29, 0x78, v10
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_lshrrev_b32_e32 v30, 3, v0
	v_and_b32_e32 v28, 0x840, v28
	v_lshlrev_b32_e32 v34, 6, v34
	v_and_b32_e32 v35, 0x840, v35
	v_lshl_or_b32 v29, v32, 3, v29
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_lshrrev_b32_e32 v31, 2, v0
	.loc	1 276 28                        ; generate_amdgcn.py:276:28
	v_lshlrev_b32_e32 v11, 3, v0
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_lshrrev_b32_e32 v1, 7, v0
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_and_b32_e32 v9, 0x7f, v0
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_and_b32_e32 v2, 0x100, v0
	v_bfe_i32 v3, v0, 8, 1
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:272:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s12, 63
.Ltmp12:
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_lshr_b32 s13, s12, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_add_i32 s12, s12, s13
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_lshr_b32 s1, s1, 26
.Ltmp16:
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_ashr_i32 s41, s12, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_add_i32 s1, s0, s1
.Ltmp18:
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_and_b32_e32 v12, 15, v0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_ashr_i32 s42, s1, 6
	s_cmp_gt_i32 s0, 63
	v_lshlrev_b32_e32 v17, 1, v0
	s_cselect_b32 s0, -1, 0
	s_and_b32 s29, s7, 0xffff
	s_abs_i32 s7, s34
	v_lshrrev_b32_e32 v20, 1, v0
	s_cvt_f32_u32 s1, s7
	v_and_b32_e32 v25, 14, v0
	v_lshlrev_b32_e32 v0, 4, v0
	v_xor_b32_e32 v28, v29, v28
	v_xor_b32_e32 v29, v35, v34
	v_rcp_iflag_f32_e32 v35, s1
.Ltmp20:
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_lshrrev_b32_e32 v16, 4, v2
	v_lshlrev_b32_e32 v33, 11, v25
	v_lshrrev_b32_e32 v2, 1, v2
	v_and_b32_e32 v0, 0x700, v0
	v_lshlrev_b32_e32 v25, 2, v25
	v_or_b32_e32 v15, 4, v1
	v_or_b32_e32 v14, 12, v1
	v_or3_b32 v33, v33, v2, v28
	v_and_b32_e32 v2, 0x1008, v3
	v_or3_b32 v0, v0, v25, v29
	v_readfirstlane_b32 s1, v35
	v_or_b32_e32 v4, 20, v1
	v_or_b32_e32 v5, 28, v1
	v_lshlrev_b32_e32 v18, 5, v12
	v_lshlrev_b32_e32 v21, 4, v32
	v_and_b32_e32 v22, 24, v17
	v_or_b32_e32 v13, 60, v1
	v_or_b32_e32 v8, 52, v1
	v_or_b32_e32 v7, 44, v1
	v_or_b32_e32 v6, 36, v1
	v_xor_b32_e32 v34, v0, v2
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	v_mad_u64_u32 v[0:1], null, s35, v1, v[9:10]
	v_mad_u64_u32 v[1:2], null, s35, v15, v[9:10]
	v_mad_u64_u32 v[2:3], null, s35, v14, v[9:10]
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_mad_u64_u32 v[3:4], null, s35, v4, v[9:10]
	v_and_b32_e32 v19, 24, v31
	v_and_or_b32 v17, 0x218, v17, v18
	v_and_b32_e32 v20, 24, v20
	v_or3_b32 v18, v21, v22, v18
	v_mad_u64_u32 v[4:5], null, s35, v5, v[9:10]
	v_mad_u64_u32 v[5:6], null, s35, v6, v[9:10]
	v_mad_u64_u32 v[6:7], null, s35, v7, v[9:10]
	s_cvt_u32_f32 s1, s1
	v_mad_u64_u32 v[7:8], null, s35, v8, v[9:10]
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_or_b32_e32 v35, v16, v12
	v_cndmask_b32_e64 v12, 0, 1, s0
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_lshl_b32 s0, s3, 5
	s_mov_b32 s24, s4
	v_mad_u64_u32 v[8:9], null, s35, v13, v[9:10]
	s_sub_i32 s4, 0, s7
	v_xor_b32_e32 v19, v10, v19
	v_xor_b32_e32 v21, 8, v17
	v_xor_b32_e32 v22, 16, v17
	v_xor_b32_e32 v23, 24, v17
	v_xor_b32_e32 v20, v11, v20
	v_xor_b32_e32 v24, 8, v18
	v_xor_b32_e32 v26, 16, v18
	v_xor_b32_e32 v27, 24, v18
	v_xor_b32_e32 v25, 8, v33
	v_xor_b32_e32 v28, 16, v33
	v_xor_b32_e32 v29, 24, v33
	v_xor_b32_e32 v51, 32, v33
	v_xor_b32_e32 v52, 40, v33
	v_xor_b32_e32 v53, 48, v33
	v_xor_b32_e32 v54, 56, v33
	v_xor_b32_e32 v55, 0x2010, v34
	v_xor_b32_e32 v56, 0x4020, v34
	v_xor_b32_e32 v57, 0x6030, v34
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_and_or_b32 v9, v10, 28, s0
	v_and_or_b32 v10, v11, 24, s0
	s_mul_i32 s4, s4, s1
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	v_and_b32_e32 v36, 2, v30
	s_mul_hi_u32 s4, s1, s4
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_or_b32_e32 v37, 32, v35
	s_add_i32 s49, s1, s4
	v_cmp_ne_u32_e64 s0, 1, v12
	v_add_nc_u32_e32 v38, 0, v19
	v_add_nc_u32_e32 v39, 0, v17
	v_add_nc_u32_e32 v40, 0, v21
	v_add_nc_u32_e32 v41, 0, v22
	v_add_nc_u32_e32 v42, 0, v23
	v_add_nc_u32_e32 v43, 0, v20
	v_add_nc_u32_e32 v44, 0, v18
	v_add_nc_u32_e32 v45, 0, v24
	v_add_nc_u32_e32 v46, 0, v26
	v_add_nc_u32_e32 v47, 0, v27
	v_add_nc_u32_e32 v48, 0, v25
	v_add_nc_u32_e32 v49, 0, v28
	v_add_nc_u32_e32 v50, 0, v29
	v_add_nc_u32_e32 v51, 0, v51
	v_add_nc_u32_e32 v52, 0, v52
	v_add_nc_u32_e32 v53, 0, v53
	v_add_nc_u32_e32 v54, 0, v54
	v_add_nc_u32_e32 v55, 0, v55
	v_add_nc_u32_e32 v56, 0, v56
	v_add_nc_u32_e32 v57, 0, v57
	v_cmp_gt_i32_e64 s1, 32, v9
	v_cmp_gt_i32_e64 s3, 32, v10
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s25, s5, 0xffff
	s_mov_b32 s28, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_lshl_b32 s5, s35, 3
	s_lshl_b32 s6, s35, 4
	s_mul_i32 s43, s35, 24
	s_lshl_b32 s44, s35, 5
	s_mul_i32 s45, s35, 40
	s_mul_i32 s46, s35, 48
	s_mul_i32 s47, s35, 56
	s_and_b32 s21, s21, 0xffff
	s_ashr_i32 s48, s34, 31
	s_mov_b32 s12, 0
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_lshl_b32 s50, s35, 1
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_lshl_b32 s51, s42, 1
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_add_nc_u32_e32 v27, 0, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 248 18                        ; generate_amdgcn.py:248:18
	s_lshl_b32 s4, s53, 7
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_mul_i32 s10, s52, s35
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	ds_store_b64 v27, v[25:26]
	ds_store_b64 v48, v[23:24]
	ds_store_b64 v49, v[21:22]
	ds_store_b64 v50, v[19:20]
	ds_store_b64 v51, v[17:18]
	ds_store_b64 v52, v[15:16]
	v_add_nc_u32_e32 v15, 0, v34
	ds_store_b64 v53, v[13:14]
	ds_store_b64 v54, v[11:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_add_i32 s10, s10, s4
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	ds_load_2addr_b64 v[11:14], v15 offset1:16
	ds_load_2addr_b64 v[15:18], v55 offset1:16
	ds_load_2addr_b64 v[19:22], v56 offset1:16
	ds_load_2addr_b64 v[23:26], v57 offset1:16
	v_add_nc_u32_e32 v27, s10, v0
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_add_lshl_u32 v29, s10, v1, 2
	v_add_lshl_u32 v59, s10, v3, 2
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_lshlrev_b32_e32 v28, 2, v27
	v_add_lshl_u32 v58, v27, s5, 2
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cmp_lt_i32 s2, s40
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v11, v28, s[20:23], 0 offen
	v_add_lshl_u32 v11, s10, v2, 2
	v_add_lshl_u32 v28, v27, s6, 2
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v15, v29, s[20:23], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v19, v58, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x2
	buffer_atomic_add_f32 v23, v11, s[20:23], 0 offen
	buffer_atomic_add_f32 v13, v28, s[20:23], 0 offen
	buffer_atomic_add_f32 v17, v59, s[20:23], 0 offen
	v_add_lshl_u32 v11, v27, s43, 2
	v_add_lshl_u32 v13, s10, v4, 2
	v_add_lshl_u32 v15, v27, s44, 2
	v_add_lshl_u32 v17, s10, v5, 2
	v_add_lshl_u32 v19, v27, s45, 2
	s_clause 0x4
	buffer_atomic_add_f32 v21, v11, s[20:23], 0 offen
	buffer_atomic_add_f32 v25, v13, s[20:23], 0 offen
	buffer_atomic_add_f32 v12, v15, s[20:23], 0 offen
	buffer_atomic_add_f32 v16, v17, s[20:23], 0 offen
	buffer_atomic_add_f32 v20, v19, s[20:23], 0 offen
	v_add_lshl_u32 v11, s10, v6, 2
	v_add_lshl_u32 v12, v27, s46, 2
	v_add_lshl_u32 v13, s10, v7, 2
	v_add_lshl_u32 v15, v27, s47, 2
	v_add_lshl_u32 v16, s10, v8, 2
	s_clause 0x4
	buffer_atomic_add_f32 v24, v11, s[20:23], 0 offen
	buffer_atomic_add_f32 v14, v12, s[20:23], 0 offen
	buffer_atomic_add_f32 v18, v13, s[20:23], 0 offen
	buffer_atomic_add_f32 v22, v15, s[20:23], 0 offen
	buffer_atomic_add_f32 v26, v16, s[20:23], 0 offen
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 242 20                        ; generate_amdgcn.py:242:20
	s_abs_i32 s4, s2
	s_ashr_i32 s11, s2, 31
	s_mul_hi_u32 s10, s4, s49
	s_xor_b32 s11, s11, s48
	s_mul_i32 s13, s10, s7
	v_mov_b32_e32 v12, 0
	s_sub_i32 s4, s4, s13
	s_add_i32 s13, s10, 1
	s_sub_i32 s14, s4, s7
	s_cmp_ge_u32 s4, s7
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	s_cselect_b32 s10, s13, s10
	s_cselect_b32 s4, s14, s4
	s_add_i32 s13, s10, 1
	s_cmp_ge_u32 s4, s7
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	s_cselect_b32 s4, s13, s10
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	s_xor_b32 s4, s4, s11
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	s_sub_i32 s11, s4, s11
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	.loc	1 244 35                        ; generate_amdgcn.py:244:35
	s_sub_i32 s4, s33, s11
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_mul_i32 s15, s11, s34
	.loc	1 244 24                        ; generate_amdgcn.py:244:24
	s_min_i32 s13, s4, 1
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_sub_i32 s15, s2, s15
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_abs_i32 s10, s13
	s_abs_i32 s16, s15
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s14, 0, s10
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v11, s4
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_readfirstlane_b32 s4, v11
	v_mov_b32_e32 v11, 0
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s14, s14, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s14, s4, s14
	s_add_i32 s4, s4, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s14, s16, s4
	s_xor_b32 s4, s15, s13
	s_mul_i32 s17, s14, s10
	s_ashr_i32 s4, s4, 31
	s_sub_i32 s16, s16, s17
	s_add_i32 s17, s14, 1
	s_sub_i32 s18, s16, s10
	s_cmp_ge_u32 s16, s10
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s10
	s_cselect_b32 s10, s17, s14
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_xor_b32 s10, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s53, s10, s4
	.loc	1 245 32                        ; generate_amdgcn.py:245:32
	s_mul_i32 s13, s53, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s13, s15, s13
	.loc	1 245 17 is_stmt 0              ; generate_amdgcn.py:245:17
	s_add_i32 s13, s13, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 247 18 is_stmt 1              ; generate_amdgcn.py:247:18
	s_lshl_b32 s52, s13, 6
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v11, s10, 8, v32
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v12, s52, v37
	v_lshl_or_b32 v14, s10, 7, v31
	s_lshl_b32 s11, s4, 8
	s_lshl_b32 s4, s4, 7
	v_subrev_nc_u32_e32 v58, s11, v11
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v11, s52, v30
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v13, s52, v35
	v_mul_lo_u32 v59, s51, v12
	v_subrev_nc_u32_e32 v12, s4, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[27:28], null, s41, v11, v[9:10]
	v_mul_lo_u32 v60, s51, v13
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[28:29], null, s41, v12, v[10:11]
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, v25
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, v25
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, v25
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, v25
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, v25
	v_mov_b32_e32 v11, 0
	s_mov_b32 s54, 0
	s_mov_b32 s55, s42
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 284 26                        ; generate_amdgcn.py:284:26
	v_add_nc_u32_e32 v29, s54, v9
	.loc	1 285 31                        ; generate_amdgcn.py:285:31
	v_add_nc_u32_e32 v61, s54, v10
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	v_add_nc_u32_e32 v62, s54, v27
	.loc	1 294 30                        ; generate_amdgcn.py:294:30
	v_add_nc_u32_e32 v63, s54, v28
	s_mov_b32 s30, s26
	.loc	1 285 31                        ; generate_amdgcn.py:285:31
	v_cmp_gt_i32_e32 vcc_lo, s41, v29
	v_cmp_gt_i32_e64 s4, s41, v61
	.loc	1 294 30                        ; generate_amdgcn.py:294:30
	s_mov_b32 s31, s27
	.loc	1 298 22                        ; generate_amdgcn.py:298:22
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
	.loc	1 285 30                        ; generate_amdgcn.py:285:30
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_mov_b32 s38, s26
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	v_cndmask_b32_e32 v29, 0x80000000, v62, vcc_lo
	.loc	1 285 30                        ; generate_amdgcn.py:285:30
	s_and_b32 vcc_lo, s4, s3
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_mov_b32 s39, s27
	.loc	1 294 30                        ; generate_amdgcn.py:294:30
	v_cndmask_b32_e32 v61, 0x80000000, v63, vcc_lo
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	buffer_load_b32 v29, v29, s[24:27], 0 offen
	.loc	1 294 30                        ; generate_amdgcn.py:294:30
	buffer_load_b64 v[61:62], v61, s[28:31], 0 offen
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	v_add_nc_u32_e32 v63, v36, v58
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_add_nc_u32_e32 v58, s50, v58
	s_add_i32 s55, s55, -1
	s_add_i32 s54, s54, 32
	s_cmp_lg_u32 s55, 0
	.loc	1 291 30                        ; generate_amdgcn.py:291:30
	s_waitcnt vmcnt(1)
	ds_store_b32 v38, v29
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[77:80], v39 offset1:2
	ds_load_2addr_stride64_b64 v[81:84], v40 offset1:2
	ds_load_2addr_stride64_b64 v[85:88], v41 offset1:2
	ds_load_2addr_stride64_b64 v[89:92], v42 offset1:2
	.loc	1 294 30                        ; generate_amdgcn.py:294:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v43, v[61:62]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 298 22                        ; generate_amdgcn.py:298:22
	s_clause 0x1
	buffer_load_u16 v29, v60, s[8:11], 0 offen
	buffer_load_u16 v101, v59, s[8:11], 0 offen
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_clause 0x7
	buffer_load_u16 v102, v63, s[36:39], 0 offen
	buffer_load_u16 v103, v63, s[36:39], 0 offen offset:4
	buffer_load_u16 v104, v63, s[36:39], 0 offen offset:8
	buffer_load_u16 v105, v63, s[36:39], 0 offen offset:12
	buffer_load_u16 v106, v63, s[36:39], 0 offen offset:16
	buffer_load_u16 v107, v63, s[36:39], 0 offen offset:20
	buffer_load_u16 v108, v63, s[36:39], 0 offen offset:24
	buffer_load_u16 v109, v63, s[36:39], 0 offen offset:28
	.loc	1 294 30                        ; generate_amdgcn.py:294:30
	ds_load_b64 v[93:94], v44
	ds_load_b64 v[95:96], v45
	ds_load_b64 v[97:98], v46
	ds_load_b64 v[99:100], v47
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	v_dual_mov_b32 v68, s19 :: v_dual_mov_b32 v67, s18
	v_dual_mov_b32 v66, s17 :: v_dual_mov_b32 v65, s16
	v_dual_mov_b32 v64, s15 :: v_dual_mov_b32 v63, s14
	v_dual_mov_b32 v62, s13 :: v_dual_mov_b32 v61, s12
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_add_nc_u32_e32 v60, 2, v60
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[69:76], v[93:94], v[77:78], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[69:76], v[95:96], v[81:82], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[69:76], v[97:98], v[85:86], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[69:76], v[99:100], v[89:90], v[69:76] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v78, 16, v102
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v82, 16, v106
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	v_wmma_i32_16x16x16_iu4 v[61:68], v[93:94], v[79:80], v[61:68] neg_lo:[1,1,0]
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	v_lshlrev_b32_e32 v79, 16, v103
	.loc	1 298 22                        ; generate_amdgcn.py:298:22
	v_lshlrev_b32_e32 v77, 16, v101
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	v_lshlrev_b32_e32 v80, 16, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	v_wmma_i32_16x16x16_iu4 v[61:68], v[95:96], v[83:84], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[97:98], v[87:88], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[99:100], v[91:92], v[61:68] neg_lo:[1,1,0]
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	v_cvt_f32_i32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_mul_f32_e32 v62, v62, v77
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 300 17 is_stmt 0              ; generate_amdgcn.py:300:17
	v_dual_fmac_f32 v24, v62, v79 :: v_dual_mul_f32 v61, v61, v77
	.loc	1 298 22 is_stmt 1              ; generate_amdgcn.py:298:22
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	v_mul_f32_e32 v67, v67, v77
	v_mul_f32_e32 v63, v63, v77
	.loc	1 300 17 is_stmt 0              ; generate_amdgcn.py:300:17
	v_dual_fmac_f32 v26, v61, v78 :: v_dual_lshlrev_b32 v81, 16, v105
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v69, v69, v29 :: v_dual_lshlrev_b32 v84, 16, v108
	v_dual_mul_f32 v70, v70, v29 :: v_dual_add_nc_u32 v59, 2, v59
	v_dual_mul_f32 v74, v74, v29 :: v_dual_lshlrev_b32 v83, 16, v107
	v_mul_f32_e32 v72, v72, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v73, v73, v29 :: v_dual_fmac_f32 v14, v67, v84
	v_mul_f32_e32 v75, v75, v29
	v_dual_mul_f32 v64, v64, v77 :: v_dual_fmac_f32 v23, v70, v79
	v_mul_f32_e32 v65, v65, v77
	.loc	1 299 22 is_stmt 1              ; generate_amdgcn.py:299:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v85, 16, v109
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	v_mul_f32_e32 v66, v66, v77
	v_mul_f32_e32 v71, v71, v29
	v_mul_f32_e32 v29, v76, v29
	v_dual_mul_f32 v68, v68, v77 :: v_dual_fmac_f32 v17, v73, v82
	.loc	1 300 17 is_stmt 0              ; generate_amdgcn.py:300:17
	v_dual_fmac_f32 v25, v69, v78 :: v_dual_fmac_f32 v22, v63, v80
	v_fmac_f32_e32 v19, v72, v81
	v_dual_fmac_f32 v15, v74, v83 :: v_dual_fmac_f32 v20, v64, v81
	v_dual_fmac_f32 v18, v65, v82 :: v_dual_fmac_f32 v13, v75, v84
	v_fmac_f32_e32 v12, v68, v85
	v_dual_fmac_f32 v11, v29, v85 :: v_dual_fmac_f32 v16, v66, v83
	v_fmac_f32_e32 v21, v71, v80
	.loc	1 278 13 is_stmt 1              ; generate_amdgcn.py:278:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge20
	.loc	1 222 1                         ; generate_amdgcn.py:222:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp21:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 110
		.amdhsa_next_free_sgpr 56
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
		.amdhsa_inst_pref_size 20
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_vgpr, 110
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2540
; TotalNumSgprs: 58
; NumVgprs: 110
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 110
; Occupancy: 12
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     110
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
