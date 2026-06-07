	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[56:57], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s56, 63
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s57, 0x1ff
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 26
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
	s_ashr_i32 s58, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s12, s5, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s59, s12, s58
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s59
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph5
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[60:61], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_and_b32_e32 v2, 0x1f0, v0
	v_lshlrev_b32_e32 v3, 5, v0
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v1, 0x1e0, v0
	v_dual_mov_b32 v18, 0x7632 :: v_dual_and_b32 v65, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v11, 2, v2
	v_and_b32_e32 v3, 32, v3
	v_lshrrev_b32_e32 v4, 5, v0
	v_lshrrev_b32_e32 v10, 1, v1
	v_mul_lo_u32 v1, s57, v65
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s80, s12, 2
	v_add3_u32 v11, 0, v11, v3
	v_and_b32_e32 v3, 16, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v9, 1, v2
	v_lshlrev_b32_e32 v15, 1, v2
	v_dual_mov_b32 v14, 0x5410 :: v_dual_and_b32 v5, 31, v0
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s13, 31
	v_lshl_add_u32 v17, s57, 5, v1
	s_add_i32 s0, s13, s0
	s_mov_b32 s64, s4
	s_ashr_i32 s0, s0, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_add_nc_u32_e32 v71, v9, v1
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s1, s0, 15
	v_sub_nc_u32_e32 v70, s0, v4
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s14, s1, 31
	v_cmp_eq_u32_e64 s0, 0, v3
	s_lshr_b32 s14, s14, 28
	v_mad_u64_u32 v[2:3], null, s57, 48, v[1:2]
	s_add_i32 s1, s1, s14
	v_cndmask_b32_e64 v3, 0x3276, v18, s0
	s_ashr_i32 s1, s1, 4
	s_cmp_gt_i32 s13, 1
	v_cndmask_b32_e64 v14, 0x1054, v14, s0
	s_cselect_b32 s4, -1, 0
	s_abs_i32 s82, s80
	s_and_b32 s65, s5, 0xffff
	s_cvt_f32_u32 s5, s82
	s_lshl_b32 s81, s57, 4
	v_lshl_or_b32 v3, v3, 8, v3
	v_add_nc_u32_e32 v16, s81, v1
	v_rcp_iflag_f32_e32 v1, s5
.Ltmp12:
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v12, 0x100, v9
	v_lshl_or_b32 v14, v14, 8, v14
	v_and_b32_e32 v3, 0x760076, v3
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s83, s3, 4
	v_add_nc_u32_e32 v76, v9, v2
	v_add_nc_u32_e32 v77, v12, v2
	v_or_b32_e32 v2, s83, v4
	v_lshlrev_b32_e32 v6, 1, v0
	v_and_b32_e32 v14, 0x540054, v14
	v_readfirstlane_b32 s5, v1
	v_lshl_or_b32 v1, v3, 4, v3
	v_or_b32_e32 v7, 0x3f0, v0
	v_lshlrev_b32_e32 v8, 4, v0
	v_add_nc_u32_e32 v69, 0, v65
	s_mul_f32 s3, s5, 0x4f7ffffe
	v_and_b32_e32 v79, 0x7060706, v1
	v_mul_lo_u32 v1, s57, v2
	v_mul_lo_u32 v2, s56, v2
	s_cvt_u32_f32 s3, s3
	s_sub_i32 s5, 0, s82
	v_and_b32_e32 v13, 28, v6
	v_lshl_or_b32 v14, v14, 4, v14
	v_cndmask_b32_e64 v3, 0, 1, s4
	s_mul_i32 s5, s5, s3
	s_max_i32 s84, s1, 1
	s_mul_hi_u32 s1, s3, s5
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v66, 16, v65
	v_or_b32_e32 v67, 32, v65
	v_or_b32_e32 v68, 48, v65
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_add_nc_u32_e32 v72, v9, v16
	v_add_nc_u32_e32 v73, v12, v16
	v_add_nc_u32_e32 v74, v9, v17
	v_add_nc_u32_e32 v75, v12, v17
	v_and_b32_e32 v78, 0x5040504, v14
	s_add_i32 s86, s3, s1
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_lshl_add_u32 v80, v5, 4, v1
	v_lshl_add_u32 v81, v5, 1, v2
	v_cmp_ne_u32_e64 s1, 1, v3
	v_add_nc_u32_e32 v82, 0, v6
	v_add_nc_u32_e32 v83, 0, v7
	v_add_nc_u32_e32 v84, 0, v8
	v_add_nc_u32_e32 v85, v69, v10
	v_add_nc_u32_e32 v86, v11, v13
	v_add_nc_u32_e32 v87, 0, v15
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s68, s6
	s_and_b32 s69, s7, 0xffff
	s_and_b32 s77, s11, 0xffff
	s_and_b32 s61, s61, 0xffff
	s_bfe_i32 s85, s12, 0x1001d
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s87, s56, 4
	s_mov_b32 s88, 0x76543210
	s_mov_b32 s72, s8
	s_mov_b32 s73, s9
	s_mov_b32 s74, s66
	s_mov_b32 s75, s67
	s_mov_b32 s76, s10
	s_mov_b32 s78, s66
	s_mov_b32 s79, s67
	s_mov_b32 s62, s66
	s_mov_b32 s63, s67
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 242 26                        ; generate_amdgcn.py:242:26
	v_or_b32_e32 v34, s3, v65
	v_or_b32_e32 v35, s3, v66
	v_or_b32_e32 v36, s3, v67
	v_or_b32_e32 v37, s3, v68
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s4, s4, 9
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v34, 1, v34
	v_lshlrev_b32_e32 v35, 1, v35
	v_lshlrev_b32_e32 v36, 1, v36
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v33, s4, v0
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_clause 0x3
	buffer_load_u16 v49, v34, s[72:75], 0 offen
	buffer_load_u16 v50, v35, s[72:75], 0 offen
	buffer_load_u16 v51, v36, s[72:75], 0 offen
	buffer_load_u16 v52, v37, s[72:75], 0 offen
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_mul_i32 s70, s3, s57
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s70, s70, s4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s59
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v33, 1, v33
	buffer_load_u16 v33, v33, s[76:79], 0 offen
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	ds_store_b32 v86, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v87
	ds_load_b128 v[37:40], v87 offset:16
	ds_load_b128 v[41:44], v87 offset:1024
	ds_load_b128 v[45:48], v87 offset:1040
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v130, v40, v50 :: v_dual_lshlrev_b32 v49, 16, v49
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v56, v36, v49 :: v_dual_lshlrev_b32 v51, 16, v51
	v_dual_mul_f32 v59, v39, v49 :: v_dual_lshlrev_b32 v52, 16, v52
	v_mul_f32_e32 v53, v33, v49
	v_mul_f32_e32 v54, v34, v49
	v_mul_f32_e32 v57, v37, v49
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v62, v42, v49 :: v_dual_mul_f32 v127, v37, v50
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v135, v45, v50 :: v_dual_mul_f32 v140, v35, v51
	v_dual_mul_f32 v137, v47, v50 :: v_dual_mul_f32 v138, v33, v51
	v_mul_f32_e32 v139, v34, v51
	v_mul_f32_e32 v141, v36, v51
	v_mul_f32_e32 v142, v37, v51
	v_mul_f32_e32 v143, v38, v51
	v_mul_f32_e32 v144, v39, v51
	v_mul_f32_e32 v145, v40, v51
	v_mul_f32_e32 v146, v41, v51
	v_mul_f32_e32 v147, v42, v51
	v_dual_mul_f32 v148, v43, v51 :: v_dual_mul_f32 v37, v37, v52
	v_mul_f32_e32 v149, v44, v51
	v_mul_f32_e32 v150, v45, v51
	v_mul_f32_e32 v151, v46, v51
	v_mul_f32_e32 v152, v47, v51
	v_mul_f32_e32 v51, v48, v51
	v_mul_f32_e32 v55, v35, v49
	v_dual_mul_f32 v58, v38, v49 :: v_dual_mul_f32 v123, v33, v50
	v_dual_mul_f32 v60, v40, v49 :: v_dual_mul_f32 v125, v35, v50
	v_dual_mul_f32 v61, v41, v49 :: v_dual_mul_f32 v132, v42, v50
	v_dual_mul_f32 v63, v43, v49 :: v_dual_mul_f32 v134, v44, v50
	v_dual_mul_f32 v64, v44, v49 :: v_dual_mul_f32 v129, v39, v50
	v_dual_mul_f32 v120, v45, v49 :: v_dual_mul_f32 v133, v43, v50
	v_mul_f32_e32 v121, v46, v49
	v_dual_mul_f32 v122, v47, v49 :: v_dual_mul_f32 v131, v41, v50
	v_dual_mul_f32 v49, v48, v49 :: v_dual_mul_f32 v136, v46, v50
	v_mul_f32_e32 v124, v34, v50
	v_mul_f32_e32 v126, v36, v50
	v_mul_f32_e32 v128, v38, v50
	v_dual_mul_f32 v50, v48, v50 :: v_dual_mul_f32 v33, v33, v52
	v_mul_f32_e32 v34, v34, v52
	v_mul_f32_e32 v35, v35, v52
	v_mul_f32_e32 v36, v36, v52
	v_mul_f32_e32 v38, v38, v52
	v_mul_f32_e32 v39, v39, v52
	v_mul_f32_e32 v40, v40, v52
	v_mul_f32_e32 v41, v41, v52
	v_mul_f32_e32 v42, v42, v52
	v_mul_f32_e32 v43, v43, v52
	v_mul_f32_e32 v44, v44, v52
	v_mul_f32_e32 v45, v45, v52
	v_mul_f32_e32 v46, v46, v52
	v_mul_f32_e32 v47, v47, v52
	v_mul_f32_e32 v48, v48, v52
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v52, v53, v119 :: v_dual_mul_f32 v53, v54, v118
	v_dual_mul_f32 v17, v51, v17 :: v_dual_mul_f32 v12, v37, v12
	v_dual_mul_f32 v54, v55, v117 :: v_dual_mul_f32 v55, v56, v116
	v_dual_mul_f32 v56, v57, v115 :: v_dual_mul_f32 v105, v122, v105
	v_dual_mul_f32 v102, v124, v102 :: v_dual_mul_f32 v49, v49, v104
	v_dual_mul_f32 v98, v128, v98 :: v_dual_mul_f32 v103, v123, v103
	v_dual_mul_f32 v100, v126, v100 :: v_dual_mul_f32 v19, v151, v19
	v_dual_mul_f32 v16, v33, v16 :: v_dual_mul_f32 v15, v34, v15
	v_dual_mul_f32 v14, v35, v14 :: v_dual_mul_f32 v13, v36, v13
	v_dual_mul_f32 v10, v39, v10 :: v_dual_mul_f32 v9, v40, v9
	v_mul_f32_e32 v6, v43, v6
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_bfe_u32 v33, v52, 16, 1
	v_bfe_u32 v34, v53, 16, 1
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v11, v38, v11 :: v_dual_mul_f32 v8, v41, v8
	v_dual_mul_f32 v89, v137, v89 :: v_dual_mul_f32 v30, v140, v30
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v140, v12, 16, 1
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v93, v133, v93 :: v_dual_mul_f32 v50, v50, v88
	v_dual_mul_f32 v91, v135, v91 :: v_dual_mul_f32 v32, v138, v32
	v_dual_mul_f32 v31, v139, v31 :: v_dual_mul_f32 v28, v142, v28
	v_dual_mul_f32 v27, v143, v27 :: v_dual_mul_f32 v24, v146, v24
	v_mul_f32_e32 v1, v48, v1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_cmp_o_f32_e64 s3, v53, v53
	v_bfe_u32 v48, v49, 16, 1
	v_bfe_u32 v51, v103, 16, 1
	v_bfe_u32 v88, v102, 16, 1
	v_bfe_u32 v138, v14, 16, 1
	v_bfe_u32 v142, v10, 16, 1
	v_bfe_u32 v143, v9, 16, 1
	v_add3_u32 v33, v52, v33, 0x7fff
	v_add3_u32 v34, v53, v34, 0x7fff
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v29, v141, v29 :: v_dual_mul_f32 v26, v144, v26
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v141, v11, 16, 1
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v7, v42, v7 :: v_dual_mul_f32 v4, v45, v4
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v139, v13, 16, 1
	v_cmp_o_f32_e64 s55, v12, v12
	v_add3_u32 v12, v12, v140, 0x7fff
	v_bfe_u32 v35, v54, 16, 1
	v_cmp_o_f32_e64 s17, v49, v49
	v_cmp_o_f32_e64 s53, v14, v14
	v_add3_u32 v48, v49, v48, 0x7fff
	v_add3_u32 v49, v103, v51, 0x7fff
	v_add3_u32 v51, v102, v88, 0x7fff
	v_add3_u32 v14, v14, v138, 0x7fff
	v_add3_u32 v88, v10, v142, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v10, v9, v143, 0x7fff
	v_cmp_o_f32_e64 s3, v9, v9
	v_bfe_u32 v9, v8, 16, 1
	v_cmp_o_f32_e64 s56, v11, v11
	v_add3_u32 v11, v11, v141, 0x7fff
	v_cmp_o_f32_e64 s54, v13, v13
	v_add3_u32 v13, v13, v139, 0x7fff
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s55
	v_bfe_u32 v12, v7, 16, 1
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v57, v58, v114 :: v_dual_mul_f32 v58, v59, v113
	v_dual_mul_f32 v59, v60, v112 :: v_dual_mul_f32 v60, v61, v111
	v_dual_mul_f32 v61, v62, v110 :: v_dual_mul_f32 v62, v63, v109
	v_dual_mul_f32 v63, v64, v108 :: v_dual_mul_f32 v106, v121, v106
	v_mul_f32_e32 v64, v120, v107
	v_dual_mul_f32 v99, v127, v99 :: v_dual_mul_f32 v94, v132, v94
	v_dual_mul_f32 v5, v44, v5 :: v_dual_mul_f32 v2, v47, v2
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v54, v54
	v_add3_u32 v35, v54, v35, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s53
	v_cndmask_b16 v10.l, 0x7fff, v88.h, vcc_lo
	v_bfe_u32 v14, v6, 16, 1
	v_add3_u32 v9, v8, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v101, v125, v101 :: v_dual_mul_f32 v96, v130, v96
	v_dual_mul_f32 v97, v129, v97 :: v_dual_mul_f32 v92, v134, v92
	v_dual_mul_f32 v25, v145, v25 :: v_dual_mul_f32 v22, v148, v22
	v_dual_mul_f32 v23, v147, v23 :: v_dual_mul_f32 v20, v150, v20
	v_dual_mul_f32 v21, v149, v21 :: v_dual_mul_f32 v18, v152, v18
	v_dual_mul_f32 v95, v131, v95 :: v_dual_mul_f32 v90, v136, v90
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v8, v7, v12, 0x7fff
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v3, v46, v3
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v36, v55, 16, 1
	v_bfe_u32 v37, v56, 16, 1
	v_bfe_u32 v38, v57, 16, 1
	v_bfe_u32 v39, v58, 16, 1
	v_bfe_u32 v40, v59, 16, 1
	v_bfe_u32 v41, v60, 16, 1
	v_bfe_u32 v42, v61, 16, 1
	v_bfe_u32 v43, v62, 16, 1
	v_bfe_u32 v45, v64, 16, 1
	v_bfe_u32 v46, v106, 16, 1
	v_bfe_u32 v108, v99, 16, 1
	v_bfe_u32 v109, v98, 16, 1
	v_bfe_u32 v120, v32, 16, 1
	v_bfe_u32 v121, v31, 16, 1
	v_bfe_u32 v124, v28, 16, 1
	v_bfe_u32 v125, v27, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s3
	v_cmp_o_f32_e64 s3, v7, v7
	v_add3_u32 v7, v6, v14, 0x7fff
	v_cmp_o_f32_e64 s4, v6, v6
	v_bfe_u32 v6, v5, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v9, v4, 16, 1
	v_bfe_u32 v44, v63, 16, 1
	v_bfe_u32 v47, v105, 16, 1
	v_bfe_u32 v104, v101, 16, 1
	v_bfe_u32 v107, v100, 16, 1
	v_bfe_u32 v110, v97, 16, 1
	v_bfe_u32 v111, v96, 16, 1
	v_bfe_u32 v122, v30, 16, 1
	v_bfe_u32 v123, v29, 16, 1
	v_bfe_u32 v126, v26, 16, 1
	v_bfe_u32 v127, v25, 16, 1
	v_bfe_u32 v128, v24, 16, 1
	v_bfe_u32 v129, v23, 16, 1
	v_bfe_u32 v130, v22, 16, 1
	v_bfe_u32 v131, v21, 16, 1
	v_bfe_u32 v132, v20, 16, 1
	v_bfe_u32 v133, v19, 16, 1
	v_bfe_u32 v134, v18, 16, 1
	v_bfe_u32 v135, v17, 16, 1
	v_bfe_u32 v112, v95, 16, 1
	v_bfe_u32 v113, v94, 16, 1
	v_bfe_u32 v114, v93, 16, 1
	v_bfe_u32 v115, v92, 16, 1
	v_bfe_u32 v116, v91, 16, 1
	v_bfe_u32 v117, v90, 16, 1
	v_bfe_u32 v118, v89, 16, 1
	v_bfe_u32 v119, v50, 16, 1
	v_bfe_u32 v136, v16, 16, 1
	v_bfe_u32 v137, v15, 16, 1
	v_cmp_o_f32_e64 s5, v55, v55
	v_cmp_o_f32_e64 s6, v56, v56
	v_cmp_o_f32_e64 s7, v57, v57
	v_cmp_o_f32_e64 s8, v58, v58
	v_cmp_o_f32_e64 s9, v59, v59
	v_cmp_o_f32_e64 s10, v60, v60
	v_cmp_o_f32_e64 s11, v61, v61
	v_cmp_o_f32_e64 s12, v62, v62
	v_cmp_o_f32_e64 s14, v64, v64
	v_cmp_o_f32_e64 s15, v106, v106
	v_cmp_o_f32_e64 s18, v103, v103
	v_cmp_o_f32_e64 s19, v102, v102
	v_cmp_o_f32_e64 s22, v99, v99
	v_cmp_o_f32_e64 s23, v98, v98
	v_cmp_o_f32_e64 s35, v32, v32
	v_cmp_o_f32_e64 s36, v31, v31
	v_cmp_o_f32_e64 s39, v28, v28
	v_cmp_o_f32_e64 s40, v27, v27
	v_add3_u32 v36, v55, v36, 0x7fff
	v_add3_u32 v37, v56, v37, 0x7fff
	v_add3_u32 v38, v57, v38, 0x7fff
	v_add3_u32 v39, v58, v39, 0x7fff
	v_add3_u32 v40, v59, v40, 0x7fff
	v_add3_u32 v41, v60, v41, 0x7fff
	v_add3_u32 v42, v61, v42, 0x7fff
	v_add3_u32 v43, v62, v43, 0x7fff
	v_add3_u32 v45, v64, v45, 0x7fff
	v_add3_u32 v46, v106, v46, 0x7fff
	v_add3_u32 v54, v99, v108, 0x7fff
	v_add3_u32 v55, v98, v109, 0x7fff
	v_add3_u32 v32, v32, v120, 0x7fff
	v_add3_u32 v31, v31, v121, 0x7fff
	v_add3_u32 v28, v28, v124, 0x7fff
	v_add3_u32 v27, v27, v125, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	v_add3_u32 v6, v5, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_bfe_u32 v5, v3, 16, 1
	v_add3_u32 v9, v4, v9, 0x7fff
	v_bfe_u32 v12, v2, 16, 1
	v_cmp_o_f32_e64 s3, v4, v4
	v_bfe_u32 v4, v1, 16, 1
	v_cmp_o_f32_e64 s13, v63, v63
	v_cmp_o_f32_e64 s16, v105, v105
	v_add3_u32 v44, v63, v44, 0x7fff
	v_add3_u32 v47, v105, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v101, v101
	v_cmp_o_f32_e64 s21, v100, v100
	v_cmp_o_f32_e64 s24, v97, v97
	v_cmp_o_f32_e64 s25, v96, v96
	v_cmp_o_f32_e64 s37, v30, v30
	v_cmp_o_f32_e64 s38, v29, v29
	v_cmp_o_f32_e64 s41, v26, v26
	v_cmp_o_f32_e64 s42, v25, v25
	v_cmp_o_f32_e64 s43, v24, v24
	v_cmp_o_f32_e64 s44, v23, v23
	v_cmp_o_f32_e64 s45, v22, v22
	v_cmp_o_f32_e64 s46, v21, v21
	v_cmp_o_f32_e64 s47, v20, v20
	v_cmp_o_f32_e64 s48, v19, v19
	v_cmp_o_f32_e64 s49, v18, v18
	v_cmp_o_f32_e64 s50, v17, v17
	v_add3_u32 v52, v101, v104, 0x7fff
	v_add3_u32 v53, v100, v107, 0x7fff
	v_add3_u32 v56, v97, v110, 0x7fff
	v_add3_u32 v57, v96, v111, 0x7fff
	v_add3_u32 v30, v30, v122, 0x7fff
	v_add3_u32 v29, v29, v123, 0x7fff
	v_add3_u32 v26, v26, v126, 0x7fff
	v_add3_u32 v25, v25, v127, 0x7fff
	v_add3_u32 v24, v24, v128, 0x7fff
	v_add3_u32 v23, v23, v129, 0x7fff
	v_add3_u32 v22, v22, v130, 0x7fff
	v_add3_u32 v21, v21, v131, 0x7fff
	v_add3_u32 v20, v20, v132, 0x7fff
	v_add3_u32 v19, v19, v133, 0x7fff
	v_add3_u32 v18, v18, v134, 0x7fff
	v_add3_u32 v17, v17, v135, 0x7fff
	v_cmp_o_f32_e64 s26, v95, v95
	v_cmp_o_f32_e64 s27, v94, v94
	v_cmp_o_f32_e64 s28, v93, v93
	v_cmp_o_f32_e64 s29, v92, v92
	v_cmp_o_f32_e64 s30, v91, v91
	v_cmp_o_f32_e64 s31, v90, v90
	v_cmp_o_f32_e64 s33, v89, v89
	v_cmp_o_f32_e64 s34, v50, v50
	v_cmp_o_f32_e64 s51, v16, v16
	v_cmp_o_f32_e64 s52, v15, v15
	v_add3_u32 v58, v95, v112, 0x7fff
	v_add3_u32 v59, v94, v113, 0x7fff
	v_add3_u32 v60, v93, v114, 0x7fff
	v_add3_u32 v61, v92, v115, 0x7fff
	v_add3_u32 v62, v91, v116, 0x7fff
	v_add3_u32 v63, v90, v117, 0x7fff
	v_add3_u32 v64, v89, v118, 0x7fff
	v_add3_u32 v50, v50, v119, 0x7fff
	v_add3_u32 v16, v16, v136, 0x7fff
	v_add3_u32 v15, v15, v137, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s5
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v40.h, s9
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v42.h, s11
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s12
	v_cndmask_b16 v39.l, 0x7fff, v45.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v46.h, s15
	v_cndmask_b16 v41.l, 0x7fff, v49.h, s18
	v_cndmask_b16 v41.h, 0x7fff, v51.h, s19
	v_cndmask_b16 v43.l, 0x7fff, v54.h, s22
	v_cndmask_b16 v43.h, 0x7fff, v55.h, s23
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s35
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s36
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s39
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s40
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s4
	v_add3_u32 v5, v3, v5, 0x7fff
	v_cmp_o_f32_e64 s4, v3, v3
	v_add3_u32 v3, v2, v12, 0x7fff
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v1, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v1, v1
	v_cndmask_b16 v38.h, 0x7fff, v44.h, s13
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s16
	v_cndmask_b16 v40.h, 0x7fff, v48.h, s17
	v_cndmask_b16 v42.l, 0x7fff, v52.h, s20
	v_cndmask_b16 v42.h, 0x7fff, v53.h, s21
	v_cndmask_b16 v44.l, 0x7fff, v56.h, s24
	v_cndmask_b16 v44.h, 0x7fff, v57.h, s25
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s37
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s38
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s41
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s42
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s43
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s44
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s45
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s46
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s47
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s48
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s49
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s50
	v_cndmask_b16 v45.l, 0x7fff, v58.h, s26
	v_cndmask_b16 v45.h, 0x7fff, v59.h, s27
	v_cndmask_b16 v46.l, 0x7fff, v60.h, s28
	v_cndmask_b16 v46.h, 0x7fff, v61.h, s29
	v_cndmask_b16 v47.l, 0x7fff, v62.h, s30
	v_cndmask_b16 v47.h, 0x7fff, v63.h, s31
	v_cndmask_b16 v48.l, 0x7fff, v64.h, s33
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s34
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s51
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s52
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s56
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s54
	v_cndmask_b16 v7.h, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v1.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s4
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s5
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_cndmask_b32_e64 v3, v35, v33, s0
	v_cndmask_b32_e64 v4, v33, v35, s0
	v_cndmask_b32_e64 v6, v34, v36, s0
	v_cndmask_b32_e64 v12, v37, v39, s0
	v_cndmask_b32_e64 v20, v41, v43, s0
	v_cndmask_b32_e64 v33, v27, v31, s0
	v_cndmask_b32_e64 v27, v31, v27, s0
	v_cndmask_b32_e64 v16, v38, v40, s0
	v_cndmask_b32_e64 v5, v36, v34, s0
	v_cndmask_b32_e64 v24, v42, v44, s0
	v_cndmask_b32_e64 v31, v25, v29, s0
	v_cndmask_b32_e64 v25, v29, v25, s0
	v_cndmask_b32_e64 v29, v19, v23, s0
	v_cndmask_b32_e64 v19, v23, v19, s0
	v_cndmask_b32_e64 v34, v17, v21, s0
	v_cndmask_b32_e64 v17, v21, v17, s0
	v_cndmask_b32_e64 v28, v45, v47, s0
	v_cndmask_b32_e64 v32, v46, v48, s0
	v_cndmask_b32_e64 v35, v11, v15, s0
	v_cndmask_b32_e64 v11, v15, v11, s0
	v_cndmask_b32_e64 v9, v39, v37, s0
	v_cndmask_b32_e64 v14, v40, v38, s0
	v_cndmask_b32_e64 v18, v43, v41, s0
	v_cndmask_b32_e64 v36, v10, v13, s0
	v_cndmask_b32_e64 v10, v13, v10, s0
	v_cndmask_b32_e64 v37, v1, v8, s0
	v_cndmask_b32_e64 v1, v8, v1, s0
	v_cndmask_b32_e64 v38, v2, v7, s0
	v_cndmask_b32_e64 v2, v7, v2, s0
	v_permlanex16_b32 v4, v4, s88, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s88, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v12, s88, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v20, s88, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v27, s88, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v16, s88, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v22, v44, v42, s0
	v_permlanex16_b32 v13, v24, s88, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v25, s88, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v19, s88, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v17, s88, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v26, v47, v45, s0
	v_cndmask_b32_e64 v30, v48, v46, s0
	v_permlanex16_b32 v15, v28, s88, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v32, s88, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v11, s88, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v10, s88, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v1, s88, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v2, s88, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v4, v3, v78
	v_perm_b32 v2, v4, v3, v79
	v_perm_b32 v3, v6, v5, v78
	v_perm_b32 v4, v6, v5, v79
	v_perm_b32 v5, v7, v9, v78
	v_perm_b32 v6, v7, v9, v79
	v_perm_b32 v9, v12, v18, v78
	v_perm_b32 v10, v12, v18, v79
	v_perm_b32 v17, v20, v33, v78
	v_perm_b32 v18, v20, v33, v79
	v_add_lshl_u32 v33, s70, v71, 1
	v_perm_b32 v7, v8, v14, v78
	v_perm_b32 v8, v8, v14, v79
	v_perm_b32 v11, v13, v22, v78
	v_perm_b32 v12, v13, v22, v79
	v_perm_b32 v19, v21, v31, v78
	v_perm_b32 v20, v21, v31, v79
	v_perm_b32 v21, v23, v29, v78
	v_perm_b32 v22, v23, v29, v79
	v_perm_b32 v23, v24, v34, v78
	v_perm_b32 v24, v24, v34, v79
	v_add_lshl_u32 v34, s70, v72, 1
	v_perm_b32 v13, v15, v26, v78
	v_perm_b32 v14, v15, v26, v79
	v_perm_b32 v15, v16, v30, v78
	v_perm_b32 v16, v16, v30, v79
	v_perm_b32 v25, v27, v35, v78
	v_perm_b32 v26, v27, v35, v79
	v_add_lshl_u32 v35, s70, v73, 1
	v_perm_b32 v27, v28, v36, v78
	v_perm_b32 v28, v28, v36, v79
	v_add_lshl_u32 v36, s70, v74, 1
	s_clause 0x3
	buffer_store_b128 v[1:4], v33, s[60:63], 0 offen
	buffer_store_b128 v[5:8], v33, s[60:63], 0 offen offset:512
	buffer_store_b128 v[9:12], v34, s[60:63], 0 offen
	buffer_store_b128 v[13:16], v35, s[60:63], 0 offen
	v_add_lshl_u32 v1, s70, v75, 1
	v_add_lshl_u32 v2, s70, v76, 1
	v_perm_b32 v29, v32, v37, v78
	v_perm_b32 v30, v32, v37, v79
	v_perm_b32 v31, v39, v38, v78
	v_perm_b32 v32, v39, v38, v79
	v_add_lshl_u32 v3, s70, v77, 1
	s_clause 0x3
	buffer_store_b128 v[17:20], v36, s[60:63], 0 offen
	buffer_store_b128 v[21:24], v1, s[60:63], 0 offen
	buffer_store_b128 v[25:28], v2, s[60:63], 0 offen
	buffer_store_b128 v[29:32], v3, s[60:63], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s3, s2
	s_ashr_i32 s4, s2, 31
	s_mul_hi_u32 s5, s3, s86
	s_xor_b32 s4, s4, s85
	s_mul_i32 s6, s5, s82
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	s_sub_i32 s3, s3, s6
	s_add_i32 s6, s5, 1
	s_sub_i32 s7, s3, s82
	s_cmp_ge_u32 s3, s82
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s3, s7, s3
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s3, s82
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_cselect_b32 s3, s6, s5
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_xor_b32 s3, s3, s4
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	s_sub_i32 s3, s3, s4
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s7, s3, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s3, s3, s80
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s4, s58, s7
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
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v23, s5
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v26, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v23
	v_mov_b32_e32 v23, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	s_add_i32 s5, s5, s6
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	s_mul_hi_u32 s6, s9, s5
	s_xor_b32 s5, s3, s8
	s_mul_i32 s10, s6, s4
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s4
	s_cmp_ge_u32 s9, s4
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s4
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	s_cselect_b32 s4, s10, s6
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	s_xor_b32 s6, s4, s5
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	s_sub_i32 s4, s6, s5
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s8, s4, s8
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	s_sub_i32 s3, s3, s8
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s3, s3, s7
	.loc	1 226 13 is_stmt 1              ; generate_amdgcn.py:226:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s3, s3, 6
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_add_u32 v2, s6, 9, v80
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v88, s3, v81
	s_lshl_b32 s5, s5, 9
	s_mov_b32 s6, s84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_subrev_nc_u32_e32 v89, s5, v2
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
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	s_mov_b32 s5, s83
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 229 27 is_stmt 1              ; generate_amdgcn.py:229:27
	v_cmp_lt_i32_e32 vcc_lo, s5, v70
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_mov_b32 s70, s66
	s_mov_b32 s71, s67
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_add_i32 s6, s6, -1
	s_add_i32 s5, s5, 16
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_dual_cndmask_b32 v90, 0x80000000, v88 :: v_dual_cndmask_b32 v91, 0x80000000, v89
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v88, s87, v88
	v_add_nc_u32_e32 v89, s81, v89
	s_cmp_lg_u32 s6, 0
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	buffer_load_u16 v90, v90, s[64:67], 0 offen
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	buffer_load_b128 v[151:154], v91, s[68:71], 0 offen
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v82, v90
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	ds_load_u8 v139, v69 offset:192
	ds_load_u8 v140, v69 offset:128
	ds_load_u8 v125, v69 offset:208
	ds_load_u8 v126, v69 offset:144
	ds_load_u8 v107, v69 offset:224
	ds_load_u8 v108, v69 offset:160
	ds_load_u8 v93, v69 offset:240
	ds_load_u8 v94, v69 offset:176
	ds_load_u8 v91, v69 offset:448
	ds_load_u8 v92, v69 offset:384
	ds_load_u8 v129, v69 offset:464
	ds_load_u8 v130, v69 offset:400
	ds_load_u8 v113, v69 offset:480
	ds_load_u8 v114, v69 offset:416
	ds_load_u8 v97, v69 offset:496
	ds_load_u8 v99, v69 offset:432
	ds_load_u8 v90, v69 offset:320
	ds_load_u8 v155, v69 offset:256
	ds_load_u8 v134, v69 offset:336
	ds_load_u8 v137, v69 offset:272
	ds_load_u8 v119, v69 offset:352
	ds_load_u8 v121, v69 offset:288
	ds_load_u8 v103, v69 offset:368
	ds_load_u8 v104, v69 offset:304
	ds_load_u8 v156, v69 offset:64
	ds_load_u8 v133, v69 offset:80
	ds_load_u8 v117, v69 offset:96
	ds_load_u8 v101, v69 offset:112
	ds_load_u8 v157, v69
	ds_load_u8 v136, v69 offset:16
	ds_load_u8 v118, v69 offset:32
	ds_load_u8 v102, v69 offset:48
	ds_load_u8 v143, v69 offset:960
	ds_load_u8 v144, v69 offset:896
	ds_load_u8 v127, v69 offset:976
	ds_load_u8 v128, v69 offset:912
	ds_load_u8 v111, v69 offset:992
	ds_load_u8 v112, v69 offset:928
	ds_load_u8 v95, v83
	ds_load_u8 v96, v69 offset:944
	ds_load_u8 v147, v69 offset:832
	ds_load_u8 v148, v69 offset:768
	ds_load_u8 v135, v69 offset:848
	ds_load_u8 v138, v69 offset:784
	ds_load_u8 v120, v69 offset:864
	ds_load_u8 v122, v69 offset:800
	ds_load_u8 v98, v69 offset:880
	ds_load_u8 v100, v69 offset:816
	ds_load_u8 v145, v69 offset:704
	ds_load_u8 v146, v69 offset:640
	ds_load_u8 v131, v69 offset:720
	ds_load_u8 v132, v69 offset:656
	ds_load_u8 v115, v69 offset:736
	ds_load_u8 v116, v69 offset:672
	ds_load_u8 v105, v69 offset:752
	ds_load_u8 v106, v69 offset:688
	ds_load_u8 v149, v69 offset:576
	ds_load_u8 v150, v69 offset:512
	ds_load_u8 v141, v69 offset:592
	ds_load_u8 v142, v69 offset:528
	ds_load_u8 v123, v69 offset:608
	ds_load_u8 v124, v69 offset:544
	ds_load_u8 v109, v69 offset:624
	ds_load_u8 v110, v69 offset:560
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v84, v[151:154]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v85 offset:2560
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v85 offset:3840
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v85 offset:2816
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v85 offset:3584
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v85 offset:3328
	v_perm_b32 v133, v136, v133, 0xc0c0004
	ds_load_u8 v136, v85 offset:3072
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v85 offset:2048
	v_perm_b32 v134, v137, v134, 0xc0c0004
	ds_load_u8 v137, v85 offset:2304
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v85 offset:512
	v_perm_b32 v135, v138, v135, 0xc0c0004
	ds_load_u8 v138, v85
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v85 offset:1792
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v85 offset:1280
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v85 offset:768
	v_perm_b32 v119, v121, v119, 0xc0c0004
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v85 offset:1536
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v85 offset:1024
	ds_load_u8 v121, v85 offset:256
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v85 offset:6656
	v_perm_b32 v120, v122, v120, 0xc0c0004
	ds_load_u8 v122, v85 offset:6144
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v85 offset:7936
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v85 offset:7424
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v85 offset:6912
	v_perm_b32 v103, v104, v103, 0xc0c0004
	v_perm_b32 v151, v99, v97, 0xc0c0004
	ds_load_u8 v97, v85 offset:7680
	ds_load_u8 v99, v85 offset:7168
	ds_load_u8 v104, v85 offset:6400
	v_perm_b32 v102, v102, v101, 0xc0c0004
	v_perm_b32 v152, v94, v93, 0xc0c0004
	ds_load_u8 v93, v85 offset:4608
	ds_load_u8 v94, v85 offset:4096
	ds_load_u8 v101, v85 offset:5632
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_perm_b32 v106, v100, v98, 0xc0c0004
	ds_load_u8 v98, v85 offset:5120
	v_perm_b32 v110, v96, v95, 0xc0c0004
	ds_load_u8 v95, v85 offset:5888
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v130, v136, v130, 0xc0c0004
	ds_load_u8 v136, v85 offset:5376
	ds_load_u8 v96, v85 offset:4864
	ds_load_u8 v100, v85 offset:4352
	v_perm_b32 v90, v155, v90, 0xc0c0004
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_perm_b32 v92, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v140, v148, v140, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v126, v138, v126, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v114, v118, v114, 0xc0c0004
	v_perm_b32 v137, v137, v146, 0xc0c0004
	v_perm_b32 v144, v150, v144, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v121, v121, v132, 0xc0c0004
	v_perm_b32 v128, v142, v128, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v108, v122, v108, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v118, v99, v97, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v122, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v98, v101, 0xc0c0004
	v_perm_b32 v116, v104, v116, 0xc0c0004
	v_perm_b32 v112, v124, v112, 0xc0c0004
	v_lshl_or_b32 v91, v91, 16, v90
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v132, v136, v95, 0xc0c0004
	v_lshl_or_b32 v90, v139, 16, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v100, v96, 0xc0c0004
	v_lshl_or_b32 v95, v129, 16, v134
	v_lshl_or_b32 v94, v125, 16, v133
	v_lshl_or_b32 v99, v113, 16, v119
	v_lshl_or_b32 v98, v107, 16, v117
	v_lshl_or_b32 v101, v111, 16, v120
	v_lshl_or_b32 v103, v151, 16, v103
	v_lshl_or_b32 v102, v152, 16, v102
	v_lshl_or_b32 v104, v105, 16, v109
	v_lshl_or_b32 v105, v110, 16, v106
	v_lshl_or_b32 v107, v130, 16, v140
	v_lshl_or_b32 v106, v114, 16, v126
	v_lshl_or_b32 v111, v144, 16, v137
	v_lshl_or_b32 v110, v128, 16, v121
	v_lshl_or_b32 v93, v143, 16, v147
	v_lshl_or_b32 v92, v145, 16, v149
	v_lshl_or_b32 v97, v127, 16, v135
	v_lshl_or_b32 v96, v131, 16, v141
	v_lshl_or_b32 v100, v115, 16, v123
	v_lshl_or_b32 v109, v118, 16, v108
	v_lshl_or_b32 v108, v138, 16, v122
	v_lshl_or_b32 v113, v112, 16, v116
	v_lshl_or_b32 v112, v132, 16, v124
	v_wmma_i32_16x16x16_iu4 v[1:8], v[106:107], v[90:91], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[90:91], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[106:107], v[94:95], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[110:111], v[94:95], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[106:107], v[98:99], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[110:111], v[98:99], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[106:107], v[102:103], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[110:111], v[102:103], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[108:109], v[92:93], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[112:113], v[92:93], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[108:109], v[96:97], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[112:113], v[96:97], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[108:109], v[100:101], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[112:113], v[100:101], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[108:109], v[104:105], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[112:113], v[104:105], v[57:64] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v119, v1
	v_cvt_f32_i32_e32 v118, v2
	v_cvt_f32_i32_e32 v117, v3
	v_cvt_f32_i32_e32 v116, v4
	v_cvt_f32_i32_e32 v115, v5
	v_cvt_f32_i32_e32 v114, v6
	v_cvt_f32_i32_e32 v113, v7
	v_cvt_f32_i32_e32 v112, v8
	v_cvt_f32_i32_e32 v111, v9
	v_cvt_f32_i32_e32 v110, v10
	v_cvt_f32_i32_e32 v109, v11
	v_cvt_f32_i32_e32 v108, v12
	v_cvt_f32_i32_e32 v107, v13
	v_cvt_f32_i32_e32 v106, v14
	v_cvt_f32_i32_e32 v105, v15
	v_cvt_f32_i32_e32 v104, v16
	v_cvt_f32_i32_e32 v103, v17
	v_cvt_f32_i32_e32 v102, v18
	v_cvt_f32_i32_e32 v101, v19
	v_cvt_f32_i32_e32 v100, v20
	v_cvt_f32_i32_e32 v99, v21
	v_cvt_f32_i32_e32 v98, v22
	v_cvt_f32_i32_e32 v97, v23
	v_cvt_f32_i32_e32 v96, v24
	v_cvt_f32_i32_e32 v95, v25
	v_cvt_f32_i32_e32 v94, v26
	v_cvt_f32_i32_e32 v93, v27
	v_cvt_f32_i32_e32 v92, v28
	v_cvt_f32_i32_e32 v91, v29
	v_cvt_f32_i32_e32 v90, v30
	v_cvt_f32_i32_e32 v89, v31
	v_cvt_f32_i32_e32 v88, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v31, v34
	v_cvt_f32_i32_e32 v30, v35
	v_cvt_f32_i32_e32 v29, v36
	v_cvt_f32_i32_e32 v28, v37
	v_cvt_f32_i32_e32 v27, v38
	v_cvt_f32_i32_e32 v26, v39
	v_cvt_f32_i32_e32 v25, v40
	v_cvt_f32_i32_e32 v24, v41
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v22, v43
	v_cvt_f32_i32_e32 v21, v44
	v_cvt_f32_i32_e32 v20, v45
	v_cvt_f32_i32_e32 v19, v46
	v_cvt_f32_i32_e32 v18, v47
	v_cvt_f32_i32_e32 v17, v48
	v_cvt_f32_i32_e32 v16, v49
	v_cvt_f32_i32_e32 v15, v50
	v_cvt_f32_i32_e32 v14, v51
	v_cvt_f32_i32_e32 v13, v52
	v_cvt_f32_i32_e32 v12, v53
	v_cvt_f32_i32_e32 v11, v54
	v_cvt_f32_i32_e32 v10, v55
	v_cvt_f32_i32_e32 v9, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v7, v58
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v5, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge6
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp13:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 158
		.amdhsa_next_free_sgpr 89
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
		.amdhsa_inst_pref_size 60
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.num_vgpr, 158
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.numbered_sgpr, 89
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7660
; TotalNumSgprs: 91
; NumVgprs: 158
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 91
; NumVGPRsForWavesPerEU: 158
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     91
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     158
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
