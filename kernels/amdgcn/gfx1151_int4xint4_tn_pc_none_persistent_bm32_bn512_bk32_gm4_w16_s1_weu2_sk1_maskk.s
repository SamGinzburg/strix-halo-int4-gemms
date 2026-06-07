	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 31
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s35, 0x1ff
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 27
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_lshr_b32 s7, s7, 23
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s56, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s12, s5, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s57, s12, s56
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s57
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph5
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[36:37], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 213 14 is_stmt 1              ; generate_amdgcn.py:213:14
	v_lshrrev_b32_e32 v3, 5, v0
	v_and_b32_e32 v8, 16, v0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s58, s12, 2
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v1, 31, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v4, 0x1f0, v0
	v_dual_mov_b32 v11, 0x5410 :: v_dual_lshlrev_b32 v6, 1, v0
	v_lshlrev_b32_e32 v7, 5, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v35, 15, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v10, 2, v4
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v9, 1, v4
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v2, 0x1e0, v0
	v_and_b32_e32 v7, 32, v7
	v_mul_lo_u32 v12, s35, v35
	v_lshlrev_b32_e32 v5, 4, v0
	v_add_nc_u32_e32 v37, 0, v35
	v_lshrrev_b32_e32 v2, 1, v2
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s13, 31
	v_add3_u32 v7, 0, v10, v7
	s_add_i32 s0, s13, s0
	s_mov_b32 s40, s4
	s_ashr_i32 s0, s0, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_add_nc_u32_e32 v40, v9, v12
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s1, s0, 15
	v_sub_nc_u32_e32 v38, s0, v3
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s14, s1, 31
	v_cmp_eq_u32_e64 s0, 0, v8
	s_lshr_b32 s14, s14, 28
	v_mov_b32_e32 v8, 0x7632
	s_add_i32 s1, s1, s14
	v_and_b32_e32 v6, 28, v6
	s_ashr_i32 s1, s1, 4
	s_cmp_gt_i32 s13, 1
	v_cndmask_b32_e64 v8, 0x3276, v8, s0
	s_cselect_b32 s4, -1, 0
	s_abs_i32 s59, s58
	s_and_b32 s41, s5, 0xffff
	s_cvt_f32_u32 s5, s59
	v_cndmask_b32_e64 v11, 0x1054, v11, s0
	v_lshl_or_b32 v8, v8, 8, v8
.Ltmp12:
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_lshl_b32 s61, s3, 4
	v_rcp_iflag_f32_e32 v13, s5
	v_or_b32_e32 v3, s61, v3
	v_lshl_or_b32 v10, v11, 8, v11
	v_and_b32_e32 v8, 0x760076, v8
	s_lshl_b32 s60, s35, 4
	v_lshlrev_b32_e32 v4, 1, v4
	v_add3_u32 v39, v12, s60, v9
	v_and_b32_e32 v10, 0x540054, v10
	v_lshl_or_b32 v8, v8, 4, v8
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_mad_u64_u32 v[33:34], null, s34, v3, v[1:2]
	v_readfirstlane_b32 s5, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v10, 4, v10
	v_and_b32_e32 v43, 0x7060706, v8
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mul_lo_u32 v8, s35, v3
	s_max_i32 s62, s1, 1
	s_mul_f32 s3, s5, 0x4f7ffffe
	s_sub_i32 s5, 0, s59
	v_and_b32_e32 v42, 0x5040504, v9
	v_cndmask_b32_e64 v9, 0, 1, s4
	s_cvt_u32_f32 s3, s3
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v36, 16, v35
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_add_nc_u32_e32 v41, 0x100, v39
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_lshl_add_u32 v44, v1, 4, v8
	s_mul_i32 s5, s5, s3
	v_add_nc_u32_e32 v34, 0, v0
	s_mul_hi_u32 s1, s3, s5
	v_add_nc_u32_e32 v45, 0, v5
	s_add_i32 s64, s3, s1
	v_cmp_ne_u32_e64 s1, 1, v9
	v_add_nc_u32_e32 v46, v37, v2
	v_add_nc_u32_e32 v47, v7, v6
	v_add_nc_u32_e32 v48, 0, v4
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s44, s6
	s_and_b32 s45, s7, 0xffff
	s_and_b32 s53, s11, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_bfe_i32 s63, s12, 0x1001d
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s65, s34, 4
	s_mov_b32 s66, 0x76543210
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
	.loc	1 242 26                        ; generate_amdgcn.py:242:26
	v_or_b32_e32 v18, s3, v35
	v_or_b32_e32 v19, s3, v36
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s4, s4, 9
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_mul_i32 s3, s3, s35
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v17, s4, v0
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v18, 1, v18
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s3, s3, s4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	v_add_lshl_u32 v67, s3, v40, 1
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_clause 0x1
	buffer_load_u16 v65, v18, s[48:51], 0 offen
	buffer_load_u16 v66, v19, s[48:51], 0 offen
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add_lshl_u32 v68, s3, v39, 1
	v_add_lshl_u32 v69, s3, v41, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s57
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v17, 1, v17
	buffer_load_u16 v17, v17, s[52:55], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	ds_store_b32 v47, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v48
	ds_load_b128 v[21:24], v48 offset:16
	ds_load_b128 v[25:28], v48 offset:1024
	ds_load_b128 v[29:32], v48 offset:1040
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v75, v22, v65
	v_mul_f32_e32 v22, v22, v66
	v_mul_f32_e32 v70, v17, v65
	v_mul_f32_e32 v71, v18, v65
	v_dual_mul_f32 v72, v19, v65 :: v_dual_mul_f32 v17, v17, v66
	v_mul_f32_e32 v73, v20, v65
	v_dual_mul_f32 v74, v21, v65 :: v_dual_mul_f32 v19, v19, v66
	v_dual_mul_f32 v76, v23, v65 :: v_dual_mul_f32 v21, v21, v66
	v_mul_f32_e32 v77, v24, v65
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v78, v25, v65 :: v_dual_mul_f32 v23, v23, v66
	v_mul_f32_e32 v79, v26, v65
	v_dual_mul_f32 v80, v27, v65 :: v_dual_mul_f32 v25, v25, v66
	v_mul_f32_e32 v81, v28, v65
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v82, v29, v65 :: v_dual_mul_f32 v27, v27, v66
	v_mul_f32_e32 v83, v30, v65
	v_dual_mul_f32 v84, v31, v65 :: v_dual_mul_f32 v29, v29, v66
	v_dual_mul_f32 v65, v32, v65 :: v_dual_mul_f32 v64, v70, v64
	v_mul_f32_e32 v18, v18, v66
	v_mul_f32_e32 v20, v20, v66
	v_mul_f32_e32 v24, v24, v66
	v_mul_f32_e32 v26, v26, v66
	v_mul_f32_e32 v28, v28, v66
	v_mul_f32_e32 v30, v30, v66
	v_dual_mul_f32 v31, v31, v66 :: v_dual_mul_f32 v60, v74, v60
	v_dual_mul_f32 v32, v32, v66 :: v_dual_mul_f32 v63, v71, v63
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v62, v72, v62 :: v_dual_mul_f32 v61, v73, v61
	v_dual_mul_f32 v58, v76, v58 :: v_dual_mul_f32 v59, v75, v59
	v_dual_mul_f32 v56, v78, v56 :: v_dual_mul_f32 v57, v77, v57
	v_dual_mul_f32 v54, v80, v54 :: v_dual_mul_f32 v55, v79, v55
	v_dual_mul_f32 v52, v82, v52 :: v_dual_mul_f32 v53, v81, v53
	v_dual_mul_f32 v50, v84, v50 :: v_dual_mul_f32 v51, v83, v51
	v_mul_f32_e32 v16, v17, v16
	v_dual_mul_f32 v49, v65, v49 :: v_dual_mul_f32 v14, v19, v14
	v_dual_mul_f32 v15, v18, v15 :: v_dual_mul_f32 v12, v21, v12
	v_dual_mul_f32 v13, v20, v13 :: v_dual_mul_f32 v10, v23, v10
	v_dual_mul_f32 v11, v22, v11 :: v_dual_mul_f32 v8, v25, v8
	v_dual_mul_f32 v9, v24, v9 :: v_dual_mul_f32 v6, v27, v6
	v_dual_mul_f32 v7, v26, v7 :: v_dual_mul_f32 v4, v29, v4
	v_dual_mul_f32 v5, v28, v5 :: v_dual_mul_f32 v2, v31, v2
	v_mul_f32_e32 v3, v30, v3
	v_mul_f32_e32 v1, v32, v1
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_bfe_u32 v17, v64, 16, 1
	v_bfe_u32 v18, v63, 16, 1
	v_bfe_u32 v19, v62, 16, 1
	v_bfe_u32 v20, v61, 16, 1
	v_bfe_u32 v21, v60, 16, 1
	v_bfe_u32 v22, v59, 16, 1
	v_bfe_u32 v23, v58, 16, 1
	v_bfe_u32 v24, v57, 16, 1
	v_bfe_u32 v25, v56, 16, 1
	v_bfe_u32 v26, v55, 16, 1
	v_bfe_u32 v27, v54, 16, 1
	v_bfe_u32 v28, v53, 16, 1
	v_bfe_u32 v29, v52, 16, 1
	v_bfe_u32 v30, v51, 16, 1
	v_bfe_u32 v31, v50, 16, 1
	v_bfe_u32 v32, v49, 16, 1
	v_bfe_u32 v65, v16, 16, 1
	v_bfe_u32 v66, v15, 16, 1
	v_bfe_u32 v70, v14, 16, 1
	v_bfe_u32 v71, v13, 16, 1
	v_bfe_u32 v72, v12, 16, 1
	v_bfe_u32 v73, v11, 16, 1
	v_bfe_u32 v74, v10, 16, 1
	v_bfe_u32 v75, v9, 16, 1
	v_bfe_u32 v76, v8, 16, 1
	v_bfe_u32 v77, v7, 16, 1
	v_bfe_u32 v78, v6, 16, 1
	v_bfe_u32 v79, v5, 16, 1
	v_bfe_u32 v80, v4, 16, 1
	v_bfe_u32 v81, v3, 16, 1
	v_bfe_u32 v82, v2, 16, 1
	v_bfe_u32 v83, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	v_cmp_o_f32_e64 s3, v63, v63
	v_cmp_o_f32_e64 s4, v62, v62
	v_cmp_o_f32_e64 s5, v61, v61
	v_cmp_o_f32_e64 s6, v60, v60
	v_cmp_o_f32_e64 s7, v59, v59
	v_cmp_o_f32_e64 s8, v58, v58
	v_cmp_o_f32_e64 s9, v57, v57
	v_add3_u32 v17, v64, v17, 0x7fff
	v_add3_u32 v18, v63, v18, 0x7fff
	v_add3_u32 v19, v62, v19, 0x7fff
	v_add3_u32 v20, v61, v20, 0x7fff
	v_add3_u32 v21, v60, v21, 0x7fff
	v_add3_u32 v22, v59, v22, 0x7fff
	v_add3_u32 v23, v58, v23, 0x7fff
	v_add3_u32 v24, v57, v24, 0x7fff
	v_cmp_o_f32_e64 s10, v56, v56
	v_cmp_o_f32_e64 s11, v55, v55
	v_cmp_o_f32_e64 s12, v54, v54
	v_cmp_o_f32_e64 s13, v53, v53
	v_cmp_o_f32_e64 s14, v52, v52
	v_cmp_o_f32_e64 s15, v51, v51
	v_cmp_o_f32_e64 s16, v50, v50
	v_cmp_o_f32_e64 s17, v49, v49
	v_add3_u32 v25, v56, v25, 0x7fff
	v_add3_u32 v26, v55, v26, 0x7fff
	v_add3_u32 v27, v54, v27, 0x7fff
	v_add3_u32 v28, v53, v28, 0x7fff
	v_add3_u32 v29, v52, v29, 0x7fff
	v_add3_u32 v30, v51, v30, 0x7fff
	v_add3_u32 v31, v50, v31, 0x7fff
	v_add3_u32 v32, v49, v32, 0x7fff
	v_cmp_o_f32_e64 s18, v16, v16
	v_cmp_o_f32_e64 s19, v15, v15
	v_cmp_o_f32_e64 s20, v14, v14
	v_cmp_o_f32_e64 s21, v13, v13
	v_cmp_o_f32_e64 s22, v12, v12
	v_cmp_o_f32_e64 s23, v11, v11
	v_cmp_o_f32_e64 s24, v10, v10
	v_cmp_o_f32_e64 s25, v9, v9
	v_add3_u32 v16, v16, v65, 0x7fff
	v_add3_u32 v15, v15, v66, 0x7fff
	v_add3_u32 v14, v14, v70, 0x7fff
	v_add3_u32 v13, v13, v71, 0x7fff
	v_add3_u32 v12, v12, v72, 0x7fff
	v_add3_u32 v11, v11, v73, 0x7fff
	v_add3_u32 v10, v10, v74, 0x7fff
	v_add3_u32 v9, v9, v75, 0x7fff
	v_cmp_o_f32_e64 s26, v8, v8
	v_cmp_o_f32_e64 s27, v7, v7
	v_cmp_o_f32_e64 s28, v6, v6
	v_cmp_o_f32_e64 s29, v5, v5
	v_cmp_o_f32_e64 s30, v4, v4
	v_cmp_o_f32_e64 s31, v3, v3
	v_cmp_o_f32_e64 s33, v2, v2
	v_cmp_o_f32_e64 s34, v1, v1
	v_add3_u32 v8, v8, v76, 0x7fff
	v_add3_u32 v7, v7, v77, 0x7fff
	v_add3_u32 v6, v6, v78, 0x7fff
	v_add3_u32 v5, v5, v79, 0x7fff
	v_add3_u32 v4, v4, v80, 0x7fff
	v_add3_u32 v3, v3, v81, 0x7fff
	v_add3_u32 v2, v2, v82, 0x7fff
	v_add3_u32 v1, v1, v83, 0x7fff
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
	v_permlanex16_b32 v4, v4, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v8, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v10, v23, v21, s0
	v_cndmask_b32_e64 v14, v24, v22, s0
	v_permlanex16_b32 v7, v12, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v16, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v9, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v3, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v1, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v4, v2, v42
	v_perm_b32 v2, v4, v2, v43
	v_perm_b32 v3, v5, v6, v42
	v_perm_b32 v4, v5, v6, v43
	v_perm_b32 v5, v7, v10, v42
	v_perm_b32 v6, v7, v10, v43
	v_perm_b32 v7, v8, v14, v42
	v_perm_b32 v8, v8, v14, v43
	v_perm_b32 v9, v11, v17, v42
	v_perm_b32 v10, v11, v17, v43
	v_perm_b32 v11, v12, v15, v42
	v_perm_b32 v12, v12, v15, v43
	v_perm_b32 v13, v16, v18, v42
	v_perm_b32 v14, v16, v18, v43
	v_perm_b32 v15, v20, v19, v42
	v_perm_b32 v16, v20, v19, v43
	s_clause 0x3
	buffer_store_b128 v[1:4], v67, s[36:39], 0 offen
	buffer_store_b128 v[5:8], v67, s[36:39], 0 offen offset:512
	buffer_store_b128 v[9:12], v68, s[36:39], 0 offen
	buffer_store_b128 v[13:16], v69, s[36:39], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s3, s2
	s_ashr_i32 s5, s2, 31
	s_mul_hi_u32 s4, s3, s64
	s_xor_b32 s5, s5, s63
	s_mul_i32 s6, s4, s59
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	s_sub_i32 s3, s3, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s3, s59
	s_cmp_ge_u32 s3, s59
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s3, s7, s3
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s3, s59
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_cselect_b32 s3, s6, s4
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_xor_b32 s3, s3, s5
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	s_sub_i32 s3, s3, s5
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s7, s3, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s3, s3, s58
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s4, s56, s7
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s3, s2, s3
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s8, s4, 4
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s9, s3
	s_abs_i32 s4, s8
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_mov_b32_e32 v15, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_rcp_iflag_f32_e32 v16, s5
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v16
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_mov_b32_e32 v64, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
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
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s6, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s6, s5
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s8, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s3, s3, s8
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s3, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s3, s3, 5
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_add_u32 v2, s6, 9, v44
	v_mov_b32_e32 v1, 0
	s_lshl_b32 s5, s5, 9
	v_add_nc_u32_e32 v49, s3, v33
	s_mov_b32 s6, s62
	v_subrev_nc_u32_e32 v50, s5, v2
	v_mov_b32_e32 v2, v1
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
	s_mov_b32 s5, s61
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 229 27 is_stmt 1              ; generate_amdgcn.py:229:27
	v_cmp_lt_i32_e32 vcc_lo, s5, v38
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_add_i32 s6, s6, -1
	s_add_i32 s5, s5, 16
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_cndmask_b32_e32 v51, 0x80000000, v49, vcc_lo
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v49, s65, v49
	s_cmp_lg_u32 s6, 0
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	buffer_load_u8 v55, v51, s[40:43], 0 offen
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	v_cndmask_b32_e32 v51, 0x80000000, v50, vcc_lo
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v50, s60, v50
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	buffer_load_b128 v[51:54], v51, s[44:47], 0 offen
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v34, v55
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	ds_load_u8 v55, v37 offset:96
	ds_load_u8 v56, v37 offset:64
	ds_load_u8 v57, v37 offset:224
	ds_load_u8 v58, v37 offset:192
	ds_load_u8 v59, v37 offset:160
	ds_load_u8 v60, v37 offset:128
	ds_load_u8 v61, v37 offset:352
	ds_load_u8 v62, v37 offset:320
	ds_load_u8 v63, v37 offset:288
	ds_load_u8 v64, v37 offset:256
	ds_load_u8 v65, v37 offset:480
	ds_load_u8 v66, v37 offset:448
	ds_load_u8 v67, v37 offset:416
	ds_load_u8 v68, v37 offset:384
	ds_load_u8 v69, v37 offset:112
	ds_load_u8 v70, v37 offset:80
	ds_load_u8 v71, v37 offset:240
	ds_load_u8 v72, v37 offset:208
	ds_load_u8 v73, v37 offset:176
	ds_load_u8 v74, v37 offset:144
	ds_load_u8 v75, v37
	ds_load_u8 v76, v37 offset:16
	ds_load_u8 v77, v37 offset:32
	ds_load_u8 v78, v37 offset:48
	ds_load_u8 v79, v37 offset:368
	ds_load_u8 v80, v37 offset:336
	ds_load_u8 v81, v37 offset:304
	ds_load_u8 v82, v37 offset:272
	ds_load_u8 v83, v37 offset:496
	ds_load_u8 v84, v37 offset:464
	ds_load_u8 v85, v37 offset:432
	ds_load_u8 v86, v37 offset:400
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v45, v[51:54]
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	v_perm_b32 v51, v60, v59, 0xc0c0004
	v_perm_b32 v52, v58, v57, 0xc0c0004
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	v_perm_b32 v57, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v52, 16, v51
	v_perm_b32 v51, v56, v55, 0xc0c0004
	v_perm_b32 v53, v75, v77, 0xc0c0004
	v_lshl_or_b32 v51, v51, 16, v53
	ds_load_u8 v53, v46 offset:2560
	ds_load_u8 v54, v46 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v46 offset:3584
	ds_load_u8 v55, v46 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v46 offset:512
	ds_load_u8 v55, v46
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v55, v53, 0xc0c0004
	ds_load_u8 v55, v46 offset:1536
	ds_load_u8 v56, v46 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	v_perm_b32 v56, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v53, v55, 16, v53
	v_perm_b32 v55, v68, v67, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[53:54], v[51:52], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v56, v56, 16, v55
	v_perm_b32 v55, v64, v63, 0xc0c0004
	v_lshl_or_b32 v55, v57, 16, v55
	ds_load_u8 v57, v46 offset:6656
	ds_load_u8 v58, v46 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v46 offset:7680
	ds_load_u8 v59, v46 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v46 offset:4608
	ds_load_u8 v59, v46 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v59, v57, 0xc0c0004
	ds_load_u8 v59, v46 offset:5632
	ds_load_u8 v60, v46 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v59, 16, v57
	ds_load_u8 v59, v46 offset:2816
	ds_load_u8 v60, v46 offset:2304
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[55:56], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v46 offset:3840
	ds_load_u8 v61, v46 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v60, 16, v59
	ds_load_u8 v59, v46 offset:768
	ds_load_u8 v61, v46 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v61, v59, 0xc0c0004
	ds_load_u8 v61, v46 offset:1792
	ds_load_u8 v62, v46 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v61, 16, v59
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[51:52], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v51, v46 offset:6912
	ds_load_u8 v52, v46 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v46 offset:7936
	ds_load_u8 v61, v46 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v61, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v52, 16, v51
	ds_load_u8 v51, v46 offset:4864
	ds_load_u8 v61, v46 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v61, v51, 0xc0c0004
	ds_load_u8 v61, v46 offset:5888
	ds_load_u8 v62, v46 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v51, v61, 16, v51
	v_perm_b32 v61, v76, v78, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[55:56], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v55, v74, v73, 0xc0c0004
	v_perm_b32 v56, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v56, v56, 16, v55
	v_perm_b32 v55, v70, v69, 0xc0c0004
	v_lshl_or_b32 v55, v55, 16, v61
	v_perm_b32 v61, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[55:56], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v53, v86, v85, 0xc0c0004
	v_perm_b32 v54, v84, v83, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[59:60], v[55:56], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v54, v54, 16, v53
	v_perm_b32 v53, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v61, 16, v53
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[53:54], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[51:52], v[53:54], v[25:32] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v64, v1
	v_cvt_f32_i32_e32 v63, v2
	v_cvt_f32_i32_e32 v62, v3
	v_cvt_f32_i32_e32 v61, v4
	v_cvt_f32_i32_e32 v60, v5
	v_cvt_f32_i32_e32 v59, v6
	v_cvt_f32_i32_e32 v58, v7
	v_cvt_f32_i32_e32 v57, v8
	v_cvt_f32_i32_e32 v56, v9
	v_cvt_f32_i32_e32 v55, v10
	v_cvt_f32_i32_e32 v54, v11
	v_cvt_f32_i32_e32 v53, v12
	v_cvt_f32_i32_e32 v52, v13
	v_cvt_f32_i32_e32 v51, v14
	v_cvt_f32_i32_e32 v50, v15
	v_cvt_f32_i32_e32 v49, v16
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
.LBB0_7:                                ; %._crit_edge6
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp13:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 87
		.amdhsa_next_free_sgpr 67
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
		.amdhsa_inst_pref_size 37
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.num_vgpr, 87
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.numbered_sgpr, 67
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4732
; TotalNumSgprs: 69
; NumVgprs: 87
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 69
; NumVGPRsForWavesPerEU: 87
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x3e DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	205                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	206                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	226                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     69
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm32_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     87
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
