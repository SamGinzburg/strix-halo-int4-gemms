	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 251 0                         ; generate_amdgcn.py:251:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:260:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 31
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s35, 0x1ff
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_lshr_b32 s6, s6, 27
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_lshr_b32 s7, s7, 23
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s57, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s12, s5, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 262 17 is_stmt 1              ; generate_amdgcn.py:262:17
	s_mul_i32 s58, s12, s57
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cmp_ge_i32 s2, s58
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph3
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[36:37], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 263 24 is_stmt 1              ; generate_amdgcn.py:263:24
	s_lshl_b32 s59, s12, 2
	.loc	1 268 14                        ; generate_amdgcn.py:268:14
	v_and_b32_e32 v37, 15, v0
	v_and_b32_e32 v16, 16, v0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_and_b32_e32 v1, 0x1f0, v0
	v_dual_mov_b32 v19, 0x5410 :: v_dual_lshlrev_b32 v4, 4, v0
	v_bfe_i32 v3, v0, 7, 1
	v_bfe_i32 v5, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshrrev_b32_e32 v9, 1, v1
	v_and_b32_e32 v4, 0x70, v4
	v_lshlrev_b32_e32 v20, 5, v0
	v_and_b32_e32 v2, 0x17f, v0
	v_and_b32_e32 v3, 0x88, v3
	v_lshrrev_b32_e32 v11, 1, v0
	v_and_or_b32 v4, 0x88, v5, v4
	v_lshlrev_b32_e32 v17, 2, v1
	v_lshlrev_b32_e32 v18, 1, v0
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s13, 31
	v_and_b32_e32 v20, 32, v20
	s_add_i32 s0, s13, s0
	s_mov_b32 s40, s4
	s_ashr_i32 s60, s0, 1
	v_or_b32_e32 v6, 0x200, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:281:36 ]
	s_add_i32 s0, s60, 15
	v_or_b32_e32 v7, 0x600, v0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:281:36 ]
	s_ashr_i32 s1, s0, 31
	v_or_b32_e32 v8, 0xa00, v0
	s_lshr_b32 s1, s1, 28
	v_xor_b32_e32 v2, v3, v2
	s_add_i32 s0, s0, s1
	v_xor_b32_e32 v3, 8, v4
	s_ashr_i32 s1, s0, 4
	s_cmp_gt_i32 s13, 1
	v_cmp_eq_u32_e64 s0, 0, v16
	s_cselect_b32 s4, -1, 0
	s_abs_i32 s61, s59
	s_and_b32 s41, s5, 0xffff
	s_cvt_f32_u32 s5, s61
	v_mov_b32_e32 v16, 0x7632
	v_mul_lo_u32 v21, s35, v37
	v_cndmask_b32_e64 v19, 0x1054, v19, s0
	v_rcp_iflag_f32_e32 v22, s5
	s_lshl_b32 s5, s35, 4
	v_cndmask_b32_e64 v16, 0x3276, v16, s0
.Ltmp12:
	.loc	1 270 5 is_stmt 1               ; generate_amdgcn.py:270:5
	s_max_i32 s62, s1, 1
	v_lshl_or_b32 v19, v19, 8, v19
	s_sub_i32 s1, 0, s61
	v_add3_u32 v40, v21, s5, v9
	v_lshl_or_b32 v16, v16, 8, v16
	v_add_nc_u32_e32 v5, 0, v37
	v_and_b32_e32 v19, 0x540054, v19
	v_readfirstlane_b32 s5, v22
	v_or_b32_e32 v10, 0xe00, v0
	v_and_b32_e32 v16, 0x760076, v16
	v_or_b32_e32 v12, 0x1200, v0
	v_or_b32_e32 v13, 0x1600, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_or_b32_e32 v14, 0x1a00, v0
	v_or_b32_e32 v15, 0x1e00, v0
	v_and_b32_e32 v11, 0xf0, v11
	s_cvt_u32_f32 s5, s5
	v_and_b32_e32 v18, 28, v18
	v_add3_u32 v17, 0, v17, v20
	v_lshlrev_b32_e32 v1, 1, v1
	v_lshl_or_b32 v19, v19, 4, v19
	v_lshl_or_b32 v16, v16, 4, v16
	v_add_nc_u32_e32 v41, v9, v21
	v_cndmask_b32_e64 v9, 0, 1, s4
	s_mul_i32 s1, s1, s5
	s_lshl_b32 s56, s3, 4
	s_mul_hi_u32 s1, s5, s1
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v38, 4, v0
	v_or_b32_e32 v39, 16, v37
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_add_nc_u32_e32 v42, 0x100, v40
	v_and_b32_e32 v43, 0x5040504, v19
	v_and_b32_e32 v44, 0x7060706, v16
	s_add_i32 s64, s5, s1
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_or_b32_e32 v33, s56, v37
	v_cmp_ne_u32_e64 s1, 1, v9
	v_add_nc_u32_e32 v45, 0, v2
	v_add_nc_u32_e32 v46, 0, v4
	v_add_nc_u32_e32 v47, 0, v3
	v_add_nc_u32_e32 v48, 0, v0
	v_add_nc_u32_e32 v49, 0, v6
	v_add_nc_u32_e32 v50, 0, v7
	v_add_nc_u32_e32 v51, 0, v8
	v_add_nc_u32_e32 v52, 0, v10
	v_add_nc_u32_e32 v53, 0, v12
	v_add_nc_u32_e32 v54, 0, v13
	v_add_nc_u32_e32 v55, 0, v14
	v_add_nc_u32_e32 v56, 0, v15
	v_add_nc_u32_e32 v57, v5, v11
	v_add_nc_u32_e32 v58, v17, v18
	v_add_nc_u32_e32 v59, 0, v1
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s44, s6
	s_and_b32 s45, s7, 0xffff
	s_and_b32 s53, s11, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_bfe_i32 s63, s12, 0x1001d
	s_mov_b32 s65, 0x76543210
	s_mov_b32 s48, s8
	s_mov_b32 s49, s9
	s_mov_b32 s50, s42
	s_mov_b32 s51, s43
	s_mov_b32 s52, s10
	s_mov_b32 s54, s42
	s_mov_b32 s55, s43
	s_mov_b32 s38, s42
	s_mov_b32 s39, s43
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 297 26                        ; generate_amdgcn.py:297:26
	v_or_b32_e32 v18, s3, v37
	v_or_b32_e32 v19, s3, v39
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	s_lshl_b32 s4, s4, 9
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_mul_i32 s3, s3, s35
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	v_or_b32_e32 v17, s4, v0
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	v_lshlrev_b32_e32 v18, 1, v18
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_add_i32 s3, s3, s4
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	v_add_lshl_u32 v75, s3, v41, 1
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	s_clause 0x1
	buffer_load_u16 v73, v18, s[48:51], 0 offen
	buffer_load_u16 v74, v19, s[48:51], 0 offen
	.loc	1 332 13                        ; generate_amdgcn.py:332:13
	v_add_lshl_u32 v76, s3, v40, 1
	v_add_lshl_u32 v77, s3, v42, 1
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cmp_lt_i32 s2, s58
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v74
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	v_lshlrev_b32_e32 v17, 1, v17
	buffer_load_u16 v17, v17, s[52:55], 0 offen
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 298 18                        ; generate_amdgcn.py:298:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	ds_store_b32 v58, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v59
	ds_load_b128 v[21:24], v59 offset:16
	ds_load_b128 v[25:28], v59 offset:1024
	ds_load_b128 v[29:32], v59 offset:1040
	.loc	1 297 18                        ; generate_amdgcn.py:297:18
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 299 20                        ; generate_amdgcn.py:299:20
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v83, v22, v73
	v_mul_f32_e32 v22, v22, v74
	v_mul_f32_e32 v78, v17, v73
	v_mul_f32_e32 v79, v18, v73
	v_dual_mul_f32 v80, v19, v73 :: v_dual_mul_f32 v17, v17, v74
	v_mul_f32_e32 v81, v20, v73
	v_dual_mul_f32 v82, v21, v73 :: v_dual_mul_f32 v19, v19, v74
	v_dual_mul_f32 v84, v23, v73 :: v_dual_mul_f32 v21, v21, v74
	v_mul_f32_e32 v85, v24, v73
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v86, v25, v73 :: v_dual_mul_f32 v23, v23, v74
	v_mul_f32_e32 v87, v26, v73
	v_dual_mul_f32 v88, v27, v73 :: v_dual_mul_f32 v25, v25, v74
	v_mul_f32_e32 v89, v28, v73
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v90, v29, v73 :: v_dual_mul_f32 v27, v27, v74
	v_mul_f32_e32 v91, v30, v73
	v_dual_mul_f32 v92, v31, v73 :: v_dual_mul_f32 v29, v29, v74
	v_dual_mul_f32 v73, v32, v73 :: v_dual_mul_f32 v72, v78, v72
	v_mul_f32_e32 v18, v18, v74
	v_mul_f32_e32 v20, v20, v74
	v_mul_f32_e32 v24, v24, v74
	v_mul_f32_e32 v26, v26, v74
	v_mul_f32_e32 v28, v28, v74
	v_mul_f32_e32 v30, v30, v74
	v_dual_mul_f32 v31, v31, v74 :: v_dual_mul_f32 v68, v82, v68
	v_dual_mul_f32 v32, v32, v74 :: v_dual_mul_f32 v71, v79, v71
	.loc	1 299 13 is_stmt 0              ; generate_amdgcn.py:299:13
	v_dual_mul_f32 v70, v80, v70 :: v_dual_mul_f32 v69, v81, v69
	v_dual_mul_f32 v66, v84, v66 :: v_dual_mul_f32 v67, v83, v67
	v_dual_mul_f32 v64, v86, v64 :: v_dual_mul_f32 v65, v85, v65
	v_dual_mul_f32 v62, v88, v62 :: v_dual_mul_f32 v63, v87, v63
	v_dual_mul_f32 v60, v90, v60 :: v_dual_mul_f32 v61, v89, v61
	v_dual_mul_f32 v36, v91, v36 :: v_dual_mul_f32 v35, v92, v35
	v_mul_f32_e32 v34, v73, v34
	v_dual_mul_f32 v16, v17, v16 :: v_dual_mul_f32 v15, v18, v15
	v_dual_mul_f32 v14, v19, v14 :: v_dual_mul_f32 v13, v20, v13
	v_dual_mul_f32 v12, v21, v12 :: v_dual_mul_f32 v11, v22, v11
	v_dual_mul_f32 v10, v23, v10 :: v_dual_mul_f32 v9, v24, v9
	v_dual_mul_f32 v8, v25, v8 :: v_dual_mul_f32 v7, v26, v7
	v_dual_mul_f32 v6, v27, v6 :: v_dual_mul_f32 v5, v28, v5
	v_dual_mul_f32 v4, v29, v4 :: v_dual_mul_f32 v3, v30, v3
	v_dual_mul_f32 v2, v31, v2 :: v_dual_mul_f32 v1, v32, v1
	.loc	1 332 13 is_stmt 1              ; generate_amdgcn.py:332:13
	v_bfe_u32 v17, v72, 16, 1
	v_bfe_u32 v18, v71, 16, 1
	v_bfe_u32 v19, v70, 16, 1
	v_bfe_u32 v20, v69, 16, 1
	v_bfe_u32 v21, v68, 16, 1
	v_bfe_u32 v22, v67, 16, 1
	v_bfe_u32 v23, v66, 16, 1
	v_bfe_u32 v24, v65, 16, 1
	v_bfe_u32 v25, v64, 16, 1
	v_bfe_u32 v26, v63, 16, 1
	v_bfe_u32 v27, v62, 16, 1
	v_bfe_u32 v28, v61, 16, 1
	v_bfe_u32 v29, v60, 16, 1
	v_bfe_u32 v30, v36, 16, 1
	v_bfe_u32 v31, v35, 16, 1
	v_bfe_u32 v32, v34, 16, 1
	v_bfe_u32 v73, v16, 16, 1
	v_bfe_u32 v74, v15, 16, 1
	v_bfe_u32 v78, v14, 16, 1
	v_bfe_u32 v79, v13, 16, 1
	v_bfe_u32 v80, v12, 16, 1
	v_bfe_u32 v81, v11, 16, 1
	v_bfe_u32 v82, v10, 16, 1
	v_bfe_u32 v83, v9, 16, 1
	v_bfe_u32 v84, v8, 16, 1
	v_bfe_u32 v85, v7, 16, 1
	v_bfe_u32 v86, v6, 16, 1
	v_bfe_u32 v87, v5, 16, 1
	v_bfe_u32 v88, v4, 16, 1
	v_bfe_u32 v89, v3, 16, 1
	v_bfe_u32 v90, v2, 16, 1
	v_bfe_u32 v91, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_cmp_o_f32_e64 s3, v71, v71
	v_cmp_o_f32_e64 s4, v70, v70
	v_cmp_o_f32_e64 s5, v69, v69
	v_cmp_o_f32_e64 s6, v68, v68
	v_cmp_o_f32_e64 s7, v67, v67
	v_cmp_o_f32_e64 s8, v66, v66
	v_cmp_o_f32_e64 s9, v65, v65
	v_add3_u32 v17, v72, v17, 0x7fff
	v_add3_u32 v18, v71, v18, 0x7fff
	v_add3_u32 v19, v70, v19, 0x7fff
	v_add3_u32 v20, v69, v20, 0x7fff
	v_add3_u32 v21, v68, v21, 0x7fff
	v_add3_u32 v22, v67, v22, 0x7fff
	v_add3_u32 v23, v66, v23, 0x7fff
	v_add3_u32 v24, v65, v24, 0x7fff
	v_cmp_o_f32_e64 s10, v64, v64
	v_cmp_o_f32_e64 s11, v63, v63
	v_cmp_o_f32_e64 s12, v62, v62
	v_cmp_o_f32_e64 s13, v61, v61
	v_cmp_o_f32_e64 s14, v60, v60
	v_cmp_o_f32_e64 s15, v36, v36
	v_cmp_o_f32_e64 s16, v35, v35
	v_cmp_o_f32_e64 s17, v34, v34
	v_add3_u32 v25, v64, v25, 0x7fff
	v_add3_u32 v26, v63, v26, 0x7fff
	v_add3_u32 v27, v62, v27, 0x7fff
	v_add3_u32 v28, v61, v28, 0x7fff
	v_add3_u32 v29, v60, v29, 0x7fff
	v_add3_u32 v30, v36, v30, 0x7fff
	v_add3_u32 v31, v35, v31, 0x7fff
	v_add3_u32 v32, v34, v32, 0x7fff
	v_cmp_o_f32_e64 s18, v16, v16
	v_cmp_o_f32_e64 s19, v15, v15
	v_cmp_o_f32_e64 s20, v14, v14
	v_cmp_o_f32_e64 s21, v13, v13
	v_cmp_o_f32_e64 s22, v12, v12
	v_cmp_o_f32_e64 s23, v11, v11
	v_cmp_o_f32_e64 s24, v10, v10
	v_cmp_o_f32_e64 s25, v9, v9
	v_add3_u32 v16, v16, v73, 0x7fff
	v_add3_u32 v15, v15, v74, 0x7fff
	v_add3_u32 v14, v14, v78, 0x7fff
	v_add3_u32 v13, v13, v79, 0x7fff
	v_add3_u32 v12, v12, v80, 0x7fff
	v_add3_u32 v11, v11, v81, 0x7fff
	v_add3_u32 v10, v10, v82, 0x7fff
	v_add3_u32 v9, v9, v83, 0x7fff
	v_cmp_o_f32_e64 s26, v8, v8
	v_cmp_o_f32_e64 s27, v7, v7
	v_cmp_o_f32_e64 s28, v6, v6
	v_cmp_o_f32_e64 s29, v5, v5
	v_cmp_o_f32_e64 s30, v4, v4
	v_cmp_o_f32_e64 s31, v3, v3
	v_cmp_o_f32_e64 s33, v2, v2
	v_cmp_o_f32_e64 s34, v1, v1
	v_add3_u32 v8, v8, v84, 0x7fff
	v_add3_u32 v7, v7, v85, 0x7fff
	v_add3_u32 v6, v6, v86, 0x7fff
	v_add3_u32 v5, v5, v87, 0x7fff
	v_add3_u32 v4, v4, v88, 0x7fff
	v_add3_u32 v3, v3, v89, 0x7fff
	v_add3_u32 v2, v2, v90, 0x7fff
	v_add3_u32 v1, v1, v91, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s3
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s4
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s5
	v_cndmask_b16 v19.l, 0x7fff, v21.h, s6
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s7
	v_cndmask_b16 v20.l, 0x7fff, v23.h, s8
	v_cndmask_b16 v20.h, 0x7fff, v24.h, s9
	v_cndmask_b16 v21.l, 0x7fff, v25.h, s10
	v_cndmask_b16 v21.h, 0x7fff, v26.h, s11
	v_cndmask_b16 v22.l, 0x7fff, v27.h, s12
	v_cndmask_b16 v22.h, 0x7fff, v28.h, s13
	v_cndmask_b16 v23.l, 0x7fff, v29.h, s14
	v_cndmask_b16 v23.h, 0x7fff, v30.h, s15
	v_cndmask_b16 v24.l, 0x7fff, v31.h, s16
	v_cndmask_b16 v24.h, 0x7fff, v32.h, s17
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s18
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s19
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s20
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s21
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s22
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s23
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s24
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s25
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s26
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s27
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s28
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s29
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s30
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s31
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s33
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s34
	v_cndmask_b32_e64 v4, v17, v19, s0
	v_cndmask_b32_e64 v8, v18, v20, s0
	v_cndmask_b32_e64 v12, v21, v23, s0
	v_cndmask_b32_e64 v16, v22, v24, s0
	v_cndmask_b32_e64 v2, v19, v17, s0
	v_cndmask_b32_e64 v17, v11, v15, s0
	v_cndmask_b32_e64 v11, v15, v11, s0
	v_cndmask_b32_e64 v15, v9, v13, s0
	v_cndmask_b32_e64 v9, v13, v9, s0
	v_cndmask_b32_e64 v6, v20, v18, s0
	v_cndmask_b32_e64 v18, v3, v7, s0
	v_cndmask_b32_e64 v3, v7, v3, s0
	v_cndmask_b32_e64 v19, v1, v5, s0
	v_cndmask_b32_e64 v1, v5, v1, s0
	v_permlanex16_b32 v4, v4, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v8, s65, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v10, v23, v21, s0
	v_cndmask_b32_e64 v14, v24, v22, s0
	v_permlanex16_b32 v7, v12, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v16, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v9, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v3, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v1, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v4, v2, v43
	v_perm_b32 v2, v4, v2, v44
	v_perm_b32 v3, v5, v6, v43
	v_perm_b32 v4, v5, v6, v44
	v_perm_b32 v5, v7, v10, v43
	v_perm_b32 v6, v7, v10, v44
	v_perm_b32 v7, v8, v14, v43
	v_perm_b32 v8, v8, v14, v44
	v_perm_b32 v9, v11, v17, v43
	v_perm_b32 v10, v11, v17, v44
	v_perm_b32 v11, v12, v15, v43
	v_perm_b32 v12, v12, v15, v44
	v_perm_b32 v13, v16, v18, v43
	v_perm_b32 v14, v16, v18, v44
	v_perm_b32 v15, v20, v19, v43
	v_perm_b32 v16, v20, v19, v44
	s_clause 0x3
	buffer_store_b128 v[1:4], v75, s[36:39], 0 offen
	buffer_store_b128 v[5:8], v75, s[36:39], 0 offen offset:512
	buffer_store_b128 v[9:12], v76, s[36:39], 0 offen
	buffer_store_b128 v[13:16], v77, s[36:39], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s3, s2
	s_ashr_i32 s5, s2, 31
	s_mul_hi_u32 s4, s3, s64
	s_xor_b32 s5, s5, s63
	s_mul_i32 s6, s4, s61
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	s_sub_i32 s3, s3, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s3, s61
	s_cmp_ge_u32 s3, s61
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s3, s7, s3
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s3, s61
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_cselect_b32 s3, s6, s4
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_xor_b32 s3, s3, s5
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	s_sub_i32 s3, s3, s5
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 272 23                        ; generate_amdgcn.py:272:23
	s_lshl_b32 s7, s3, 2
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_mul_i32 s3, s3, s59
	.loc	1 273 35                        ; generate_amdgcn.py:273:35
	s_sub_i32 s4, s57, s7
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_sub_i32 s3, s2, s3
	.loc	1 273 24                        ; generate_amdgcn.py:273:24
	s_min_i32 s8, s4, 4
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s9, s3
	s_abs_i32 s4, s8
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v35, 0
	v_rcp_iflag_f32_e32 v16, s5
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v16
	v_mov_b32_e32 v16, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_mov_b32_e32 v70, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v72, 0
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s9, s5
	s_xor_b32 s5, s3, s8
	s_mul_i32 s10, s6, s4
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s4
	s_cmp_ge_u32 s9, s4
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s4
	s_cselect_b32 s4, s10, s6
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_xor_b32 s6, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s6, s5
	.loc	1 274 32                        ; generate_amdgcn.py:274:32
	s_mul_i32 s8, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s3, s3, s8
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_add_i32 s3, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 276 18 is_stmt 1              ; generate_amdgcn.py:276:18
	s_lshl_b32 s3, s3, 5
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_or_b32 v2, s6, 9, v0
	s_lshl_b32 s5, s5, 9
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v3, s3, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v4, s5, v2
	s_mov_b32 s5, s62
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[34:35], null, s60, v3, v[33:34]
	v_mad_u64_u32 v[35:36], null, s60, v4, s[56:57]
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	buffer_load_u8 v36, v34, s[40:43], 0 offen
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	buffer_load_b128 v[60:63], v35, s[44:47], 0 offen
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	v_add_nc_u32_e32 v35, 16, v35
	v_add_nc_u32_e32 v34, 16, v34
	s_add_i32 s5, s5, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s5, 0
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v45, v36
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v36, 8, v60
	.loc	1 289 26                        ; generate_amdgcn.py:289:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[64:67], v46 offset1:32
	ds_load_2addr_b64 v[68:71], v47 offset1:32
	.loc	1 292 26                        ; generate_amdgcn.py:292:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v49, v36
	ds_store_b8_d16_hi v48, v60 offset:1024
	v_lshrrev_b32_e32 v36, 24, v60
	ds_store_b8 v50, v36
	ds_store_b8 v48, v61 offset:2048
	v_lshrrev_b32_e32 v36, 8, v61
	ds_store_b8 v51, v36
	ds_store_b8_d16_hi v48, v61 offset:3072
	v_lshrrev_b32_e32 v36, 24, v61
	ds_store_b8 v52, v36
	ds_store_b8 v48, v62 offset:4096
	v_lshrrev_b32_e32 v36, 8, v62
	ds_store_b8 v53, v36
	ds_store_b8_d16_hi v48, v62 offset:5120
	v_lshrrev_b32_e32 v36, 24, v62
	ds_store_b8 v54, v36
	ds_store_b8 v48, v63 offset:6144
	v_lshrrev_b32_e32 v36, 8, v63
	ds_store_b8 v55, v36
	ds_store_b8_d16_hi v48, v63 offset:7168
	v_lshrrev_b32_e32 v36, 24, v63
	ds_store_b8 v48, v60
	ds_store_b8 v56, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 295 27                        ; generate_amdgcn.py:295:27
	ds_load_u8 v36, v57 offset:2560
	ds_load_u8 v60, v57 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v60, v36, 0xc0c0004
	ds_load_u8 v60, v57 offset:3584
	ds_load_u8 v61, v57 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v60, 16, v36
	ds_load_u8 v36, v57 offset:512
	ds_load_u8 v60, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v60, v36, 0xc0c0004
	ds_load_u8 v60, v57 offset:1536
	ds_load_u8 v62, v57 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v62, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v60, 16, v36
	ds_load_u8 v36, v57 offset:6656
	ds_load_u8 v62, v57 offset:6144
	v_wmma_i32_16x16x16_iu4 v[1:8], v[60:61], v[64:65], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[60:61], v[66:67], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v62, v36, 0xc0c0004
	ds_load_u8 v62, v57 offset:7680
	ds_load_u8 v63, v57 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v62, 16, v36
	ds_load_u8 v36, v57 offset:4608
	ds_load_u8 v62, v57 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v62, v36, 0xc0c0004
	ds_load_u8 v62, v57 offset:5632
	ds_load_u8 v72, v57 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v72, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v36
	ds_load_u8 v36, v57 offset:2816
	ds_load_u8 v72, v57 offset:2304
	v_wmma_i32_16x16x16_iu4 v[1:8], v[62:63], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[70:71], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v72, v36, 0xc0c0004
	ds_load_u8 v72, v57 offset:3840
	ds_load_u8 v73, v57 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v72, 16, v36
	ds_load_u8 v36, v57 offset:768
	ds_load_u8 v72, v57 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v72, v36, 0xc0c0004
	ds_load_u8 v72, v57 offset:1792
	ds_load_u8 v74, v57 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v74, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[64:65], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v36, v57 offset:6912
	ds_load_u8 v64, v57 offset:6400
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[66:67], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v64, v36, 0xc0c0004
	ds_load_u8 v64, v57 offset:7936
	ds_load_u8 v65, v57 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v64, 16, v36
	ds_load_u8 v36, v57 offset:4864
	ds_load_u8 v64, v57 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v64, v36, 0xc0c0004
	ds_load_u8 v64, v57 offset:5888
	ds_load_u8 v74, v57 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v74, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v64, 16, v36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[64:65], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[64:65], v[70:71], v[25:32] neg_lo:[1,1,0]
	.loc	1 281 13                        ; generate_amdgcn.py:281:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 296 19                        ; generate_amdgcn.py:296:19
	v_cvt_f32_i32_e32 v72, v1
	v_cvt_f32_i32_e32 v71, v2
	v_cvt_f32_i32_e32 v70, v3
	v_cvt_f32_i32_e32 v69, v4
	v_cvt_f32_i32_e32 v68, v5
	v_cvt_f32_i32_e32 v67, v6
	v_cvt_f32_i32_e32 v66, v7
	v_cvt_f32_i32_e32 v65, v8
	v_cvt_f32_i32_e32 v64, v9
	v_cvt_f32_i32_e32 v63, v10
	v_cvt_f32_i32_e32 v62, v11
	v_cvt_f32_i32_e32 v61, v12
	v_cvt_f32_i32_e32 v60, v13
	v_cvt_f32_i32_e32 v36, v14
	v_cvt_f32_i32_e32 v35, v15
	v_cvt_f32_i32_e32 v34, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v12, v21
	v_cvt_f32_i32_e32 v11, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v7, v26
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v3, v30
	v_cvt_f32_i32_e32 v2, v31
	v_cvt_f32_i32_e32 v1, v32
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge4
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_endpgm
.Ltmp13:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 93
		.amdhsa_next_free_sgpr 66
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
		.amdhsa_inst_pref_size 36
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk.num_vgpr, 93
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4492
; TotalNumSgprs: 68
; NumVgprs: 93
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 93
; Occupancy: 16
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	260                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	261                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x5b:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	281                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     93
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
