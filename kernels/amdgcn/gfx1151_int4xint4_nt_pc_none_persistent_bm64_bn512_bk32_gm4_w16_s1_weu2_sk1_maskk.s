	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
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
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[60:61], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	v_lshlrev_b32_e32 v4, 1, v0
	v_bfe_i32 v5, v0, 6, 1
	.loc	1 213 14 is_stmt 1              ; generate_amdgcn.py:213:14
	v_and_b32_e32 v1, 7, v0
	v_bfe_i32 v6, v0, 3, 1
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s80, s12, 2
	v_and_b32_e32 v10, 0x37e, v4
	v_and_b32_e32 v5, 0x88, v5
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v2, 1, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v3, 0x1f0, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v72, 15, v0
	v_bfe_u32 v7, v0, 4, 1
	v_xor_b32_e32 v5, v5, v10
	v_dual_mov_b32 v10, 0x5410 :: v_dual_lshlrev_b32 v65, 1, v1
	v_lshlrev_b32_e32 v1, 4, v1
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_lshlrev_b32_e32 v66, 3, v2
	v_lshlrev_b32_e32 v11, 2, v3
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s13, 31
	v_lshlrev_b32_e32 v2, 5, v2
	s_add_i32 s0, s13, s0
	v_and_or_b32 v6, 0x88, v6, v1
	s_ashr_i32 s81, s0, 1
	v_and_b32_e32 v1, 16, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s0, s81, 15
	s_mov_b32 s64, s4
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s1, s0, 31
	v_add3_u32 v11, 0, v11, v2
	s_lshr_b32 s1, s1, 28
	v_mov_b32_e32 v2, 0x7632
	s_add_i32 s0, s0, s1
.Ltmp12:
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v8, 1, v3
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s1, s0, 4
	s_cmp_gt_i32 s13, 1
	v_cmp_eq_u32_e64 s0, 0, v1
	s_cselect_b32 s4, -1, 0
	s_abs_i32 s82, s80
	s_and_b32 s65, s5, 0xffff
	s_cvt_f32_u32 s5, s82
	v_mul_lo_u32 v1, s57, v72
	v_cndmask_b32_e64 v10, 0x1054, v10, s0
	v_lshlrev_b32_e32 v12, 1, v3
	v_rcp_iflag_f32_e32 v16, s5
	v_cndmask_b32_e64 v15, 0x3276, v2, s0
	v_and_or_b32 v7, v4, 30, v7
	s_mov_b32 s68, s6
	s_sub_i32 s6, 0, s82
	v_mad_u64_u32 v[2:3], null, s57, 48, v[1:2]
	v_lshl_or_b32 v3, v10, 8, v10
	v_lshl_add_u32 v13, s57, 4, v1
	v_lshl_add_u32 v14, s57, 5, v1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v16
	v_lshl_or_b32 v10, v15, 8, v15
.Ltmp14:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_add_nc_u32_e32 v81, v8, v1
	v_and_b32_e32 v1, 0x540054, v3
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v73, 1, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_and_b32_e32 v3, 0x760076, v10
	v_or_b32_e32 v9, 0x100, v8
	v_lshl_or_b32 v1, v1, 4, v1
	s_cvt_u32_f32 s5, s5
	v_lshlrev_b32_e32 v79, 2, v7
	v_xor_b32_e32 v7, 8, v6
	v_and_b32_e32 v4, 28, v4
	v_lshl_or_b32 v3, v3, 4, v3
	v_and_b32_e32 v88, 0x5040504, v1
	v_cndmask_b32_e64 v1, 0, 1, s4
	s_mul_i32 s6, s6, s5
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_max_i32 s83, s1, 1
	s_mul_hi_u32 s1, s5, s6
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v71, 3, v0
	v_or_b32_e32 v74, 16, v72
	v_or_b32_e32 v75, 32, v72
	v_or_b32_e32 v76, 48, v72
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v77, 0x100, v73
	v_sub_nc_u32_e32 v78, s81, v65
	v_xor_b32_e32 v80, 4, v79
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_add_nc_u32_e32 v82, v8, v13
	v_add_nc_u32_e32 v83, v9, v13
	v_add_nc_u32_e32 v84, v8, v14
	v_add_nc_u32_e32 v85, v9, v14
	v_add_nc_u32_e32 v86, v8, v2
	v_add_nc_u32_e32 v87, v9, v2
	v_and_b32_e32 v89, 0x7060706, v3
	s_add_i32 s85, s5, s1
	v_cmp_ne_u32_e64 s1, 1, v1
	v_add_nc_u32_e32 v90, 0, v5
	v_add_nc_u32_e32 v91, 0, v6
	v_add_nc_u32_e32 v92, 0, v7
	v_add_nc_u32_e32 v93, v11, v4
	v_add_nc_u32_e32 v94, 0, v12
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s69, s7, 0xffff
	s_and_b32 s77, s11, 0xffff
	s_and_b32 s61, s61, 0xffff
	s_bfe_i32 s84, s12, 0x1001d
	s_lshl_b32 s86, s3, 4
	s_mov_b32 s87, 0x76543210
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
	v_or_b32_e32 v34, s4, v72
	v_or_b32_e32 v35, s4, v74
	v_or_b32_e32 v36, s4, v75
	v_or_b32_e32 v37, s4, v76
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s3, s5, 9
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v34, 1, v34
	v_lshlrev_b32_e32 v35, 1, v35
	v_lshlrev_b32_e32 v36, 1, v36
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v33, s3, v0
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_clause 0x3
	buffer_load_u16 v41, v34, s[72:75], 0 offen
	buffer_load_u16 v42, v35, s[72:75], 0 offen
	buffer_load_u16 v43, v36, s[72:75], 0 offen
	buffer_load_u16 v44, v37, s[72:75], 0 offen
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_mul_i32 s70, s4, s57
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s70, s70, s3
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s59
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v50, 16, v42
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
	ds_store_b32 v93, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v94
	ds_load_b128 v[37:40], v94 offset:16
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v126, v40, v50 :: v_dual_lshlrev_b32 v49, 16, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v56, v36, v49 :: v_dual_lshlrev_b32 v51, 16, v43
	v_dual_mul_f32 v59, v39, v49 :: v_dual_lshlrev_b32 v52, 16, v44
	ds_load_b128 v[41:44], v94 offset:1024
	ds_load_b128 v[45:48], v94 offset:1040
	v_mul_f32_e32 v53, v33, v49
	v_mul_f32_e32 v54, v34, v49
	v_mul_f32_e32 v55, v35, v49
	v_mul_f32_e32 v57, v37, v49
	v_dual_mul_f32 v58, v38, v49 :: v_dual_mul_f32 v61, v33, v50
	v_dual_mul_f32 v60, v40, v49 :: v_dual_mul_f32 v63, v35, v50
	v_dual_mul_f32 v123, v37, v50 :: v_dual_mul_f32 v128, v34, v51
	v_dual_mul_f32 v125, v39, v50 :: v_dual_mul_f32 v130, v36, v51
	v_mul_f32_e32 v127, v33, v51
	v_mul_f32_e32 v129, v35, v51
	v_mul_f32_e32 v131, v37, v51
	v_dual_mul_f32 v33, v33, v52 :: v_dual_mul_f32 v132, v38, v51
	v_dual_mul_f32 v35, v35, v52 :: v_dual_mul_f32 v134, v40, v51
	v_dual_mul_f32 v133, v39, v51 :: v_dual_mul_f32 v40, v40, v52
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v37, v37, v52 :: v_dual_mul_f32 v136, v42, v49
	v_dual_mul_f32 v39, v39, v52 :: v_dual_mul_f32 v138, v44, v49
	v_dual_mul_f32 v135, v41, v49 :: v_dual_mul_f32 v140, v42, v50
	v_dual_mul_f32 v137, v43, v49 :: v_dual_mul_f32 v142, v44, v50
	v_dual_mul_f32 v139, v41, v50 :: v_dual_mul_f32 v144, v42, v51
	v_dual_mul_f32 v141, v43, v50 :: v_dual_mul_f32 v146, v44, v51
	v_dual_mul_f32 v143, v41, v51 :: v_dual_mul_f32 v42, v42, v52
	v_dual_mul_f32 v145, v43, v51 :: v_dual_mul_f32 v44, v44, v52
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v41, v41, v52 :: v_dual_mul_f32 v148, v46, v49
	v_dual_mul_f32 v147, v45, v49 :: v_dual_mul_f32 v152, v47, v50
	v_mul_f32_e32 v149, v47, v49
	v_dual_mul_f32 v49, v48, v49 :: v_dual_mul_f32 v154, v46, v51
	v_mul_f32_e32 v153, v45, v51
	v_mul_f32_e32 v155, v47, v51
	v_dual_mul_f32 v51, v48, v51 :: v_dual_mul_f32 v62, v34, v50
	v_mul_f32_e32 v64, v36, v50
	v_mul_f32_e32 v124, v38, v50
	v_mul_f32_e32 v34, v34, v52
	v_mul_f32_e32 v36, v36, v52
	v_mul_f32_e32 v38, v38, v52
	v_dual_mul_f32 v43, v43, v52 :: v_dual_mul_f32 v150, v45, v50
	v_mul_f32_e32 v151, v46, v50
	v_dual_mul_f32 v50, v48, v50 :: v_dual_mul_f32 v45, v45, v52
	v_mul_f32_e32 v46, v46, v52
	v_mul_f32_e32 v47, v47, v52
	v_mul_f32_e32 v48, v48, v52
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v52, v53, v122 :: v_dual_mul_f32 v53, v54, v121
	v_mul_f32_e32 v54, v55, v120
	v_dual_mul_f32 v17, v51, v17 :: v_dual_mul_f32 v12, v37, v12
	v_dual_mul_f32 v55, v56, v119 :: v_dual_mul_f32 v112, v137, v112
	v_dual_mul_f32 v56, v57, v118 :: v_dual_mul_f32 v57, v58, v117
	v_mul_f32_e32 v110, v147, v110
	v_dual_mul_f32 v58, v59, v116 :: v_dual_mul_f32 v49, v49, v107
	v_dual_mul_f32 v62, v62, v105 :: v_dual_mul_f32 v61, v61, v106
	v_mul_f32_e32 v64, v64, v103
	v_dual_mul_f32 v19, v154, v19 :: v_dual_mul_f32 v16, v33, v16
	v_dual_mul_f32 v15, v34, v15 :: v_dual_mul_f32 v14, v35, v14
	v_dual_mul_f32 v13, v36, v13 :: v_dual_mul_f32 v10, v39, v10
	v_dual_mul_f32 v9, v40, v9 :: v_dual_mul_f32 v6, v43, v6
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_bfe_u32 v33, v52, 16, 1
	v_bfe_u32 v34, v53, 16, 1
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v11, v38, v11 :: v_dual_mul_f32 v8, v41, v8
	v_dual_mul_f32 v27, v132, v27 :: v_dual_mul_f32 v24, v143, v24
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v143, v12, 16, 1
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v101, v124, v101 :: v_dual_mul_f32 v96, v141, v96
	v_dual_mul_f32 v97, v140, v97 :: v_dual_mul_f32 v50, v50, v67
	v_dual_mul_f32 v25, v134, v25 :: v_dual_mul_f32 v22, v145, v22
	v_dual_mul_f32 v21, v146, v21 :: v_dual_mul_f32 v18, v155, v18
	v_mul_f32_e32 v1, v48, v1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_cmp_o_f32_e64 s3, v53, v53
	v_bfe_u32 v48, v49, 16, 1
	v_bfe_u32 v51, v61, 16, 1
	v_bfe_u32 v67, v62, 16, 1
	v_bfe_u32 v141, v14, 16, 1
	v_bfe_u32 v145, v10, 16, 1
	v_bfe_u32 v146, v9, 16, 1
	v_add3_u32 v33, v52, v33, 0x7fff
	v_add3_u32 v34, v53, v34, 0x7fff
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v23, v144, v23 :: v_dual_mul_f32 v20, v153, v20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v144, v11, 16, 1
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v59, v60, v115 :: v_dual_mul_f32 v108, v149, v108
	v_dual_mul_f32 v60, v135, v114 :: v_dual_mul_f32 v95, v142, v95
	v_dual_mul_f32 v32, v127, v32 :: v_dual_mul_f32 v7, v42, v7
	v_mul_f32_e32 v4, v45, v4
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v142, v13, 16, 1
	v_cmp_o_f32_e64 s55, v12, v12
	v_add3_u32 v12, v12, v143, 0x7fff
	v_bfe_u32 v35, v54, 16, 1
	v_cmp_o_f32_e64 s17, v49, v49
	v_cmp_o_f32_e64 s53, v14, v14
	v_add3_u32 v48, v49, v48, 0x7fff
	v_add3_u32 v49, v61, v51, 0x7fff
	v_add3_u32 v51, v62, v67, 0x7fff
	v_add3_u32 v14, v14, v141, 0x7fff
	v_add3_u32 v67, v10, v145, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v10, v9, v146, 0x7fff
	v_cmp_o_f32_e64 s3, v9, v9
	v_bfe_u32 v9, v8, 16, 1
	v_cmp_o_f32_e64 s56, v11, v11
	v_add3_u32 v11, v11, v144, 0x7fff
	v_cmp_o_f32_e64 s54, v13, v13
	v_add3_u32 v13, v13, v142, 0x7fff
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s55
	v_bfe_u32 v12, v7, 16, 1
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v113, v136, v113 :: v_dual_mul_f32 v102, v123, v102
	v_dual_mul_f32 v109, v148, v109 :: v_dual_mul_f32 v98, v139, v98
	v_dual_mul_f32 v31, v128, v31 :: v_dual_mul_f32 v28, v131, v28
	v_dual_mul_f32 v5, v44, v5 :: v_dual_mul_f32 v2, v47, v2
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s4, v54, v54
	v_add3_u32 v35, v54, v35, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s53
	v_cndmask_b16 v10.l, 0x7fff, v67.h, vcc_lo
	v_bfe_u32 v14, v6, 16, 1
	v_add3_u32 v9, v8, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v111, v138, v111 :: v_dual_mul_f32 v100, v125, v100
	v_dual_mul_f32 v63, v63, v104 :: v_dual_mul_f32 v70, v150, v70
	v_dual_mul_f32 v99, v126, v99 :: v_dual_mul_f32 v68, v152, v68
	v_dual_mul_f32 v69, v151, v69 :: v_dual_mul_f32 v30, v129, v30
	v_dual_mul_f32 v29, v130, v29 :: v_dual_mul_f32 v26, v133, v26
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
	v_bfe_u32 v42, v113, 16, 1
	v_bfe_u32 v43, v112, 16, 1
	v_bfe_u32 v45, v110, 16, 1
	v_bfe_u32 v46, v109, 16, 1
	v_bfe_u32 v105, v102, 16, 1
	v_bfe_u32 v106, v101, 16, 1
	v_bfe_u32 v123, v32, 16, 1
	v_bfe_u32 v124, v31, 16, 1
	v_bfe_u32 v127, v28, 16, 1
	v_bfe_u32 v128, v27, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s3
	v_cmp_o_f32_e64 s3, v7, v7
	v_add3_u32 v7, v6, v14, 0x7fff
	v_cmp_o_f32_e64 s4, v6, v6
	v_bfe_u32 v6, v5, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v9, v4, 16, 1
	v_bfe_u32 v44, v111, 16, 1
	v_bfe_u32 v47, v108, 16, 1
	v_bfe_u32 v103, v63, 16, 1
	v_bfe_u32 v104, v64, 16, 1
	v_bfe_u32 v107, v100, 16, 1
	v_bfe_u32 v114, v99, 16, 1
	v_bfe_u32 v125, v30, 16, 1
	v_bfe_u32 v126, v29, 16, 1
	v_bfe_u32 v129, v26, 16, 1
	v_bfe_u32 v130, v25, 16, 1
	v_bfe_u32 v131, v24, 16, 1
	v_bfe_u32 v132, v23, 16, 1
	v_bfe_u32 v133, v22, 16, 1
	v_bfe_u32 v134, v21, 16, 1
	v_bfe_u32 v135, v20, 16, 1
	v_bfe_u32 v136, v19, 16, 1
	v_bfe_u32 v137, v18, 16, 1
	v_bfe_u32 v138, v17, 16, 1
	v_bfe_u32 v115, v98, 16, 1
	v_bfe_u32 v116, v97, 16, 1
	v_bfe_u32 v117, v96, 16, 1
	v_bfe_u32 v118, v95, 16, 1
	v_bfe_u32 v119, v70, 16, 1
	v_bfe_u32 v120, v69, 16, 1
	v_bfe_u32 v121, v68, 16, 1
	v_bfe_u32 v122, v50, 16, 1
	v_bfe_u32 v139, v16, 16, 1
	v_bfe_u32 v140, v15, 16, 1
	v_cmp_o_f32_e64 s5, v55, v55
	v_cmp_o_f32_e64 s6, v56, v56
	v_cmp_o_f32_e64 s7, v57, v57
	v_cmp_o_f32_e64 s8, v58, v58
	v_cmp_o_f32_e64 s9, v59, v59
	v_cmp_o_f32_e64 s10, v60, v60
	v_cmp_o_f32_e64 s11, v113, v113
	v_cmp_o_f32_e64 s12, v112, v112
	v_cmp_o_f32_e64 s14, v110, v110
	v_cmp_o_f32_e64 s15, v109, v109
	v_cmp_o_f32_e64 s18, v61, v61
	v_cmp_o_f32_e64 s19, v62, v62
	v_cmp_o_f32_e64 s22, v102, v102
	v_cmp_o_f32_e64 s23, v101, v101
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
	v_add3_u32 v42, v113, v42, 0x7fff
	v_add3_u32 v43, v112, v43, 0x7fff
	v_add3_u32 v45, v110, v45, 0x7fff
	v_add3_u32 v46, v109, v46, 0x7fff
	v_add3_u32 v54, v102, v105, 0x7fff
	v_add3_u32 v55, v101, v106, 0x7fff
	v_add3_u32 v32, v32, v123, 0x7fff
	v_add3_u32 v31, v31, v124, 0x7fff
	v_add3_u32 v28, v28, v127, 0x7fff
	v_add3_u32 v27, v27, v128, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	v_add3_u32 v6, v5, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_bfe_u32 v5, v3, 16, 1
	v_add3_u32 v9, v4, v9, 0x7fff
	v_bfe_u32 v12, v2, 16, 1
	v_cmp_o_f32_e64 s3, v4, v4
	v_bfe_u32 v4, v1, 16, 1
	v_cmp_o_f32_e64 s13, v111, v111
	v_cmp_o_f32_e64 s16, v108, v108
	v_add3_u32 v44, v111, v44, 0x7fff
	v_add3_u32 v47, v108, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v63, v63
	v_cmp_o_f32_e64 s21, v64, v64
	v_cmp_o_f32_e64 s24, v100, v100
	v_cmp_o_f32_e64 s25, v99, v99
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
	v_add3_u32 v52, v63, v103, 0x7fff
	v_add3_u32 v53, v64, v104, 0x7fff
	v_add3_u32 v56, v100, v107, 0x7fff
	v_add3_u32 v57, v99, v114, 0x7fff
	v_add3_u32 v30, v30, v125, 0x7fff
	v_add3_u32 v29, v29, v126, 0x7fff
	v_add3_u32 v26, v26, v129, 0x7fff
	v_add3_u32 v25, v25, v130, 0x7fff
	v_add3_u32 v24, v24, v131, 0x7fff
	v_add3_u32 v23, v23, v132, 0x7fff
	v_add3_u32 v22, v22, v133, 0x7fff
	v_add3_u32 v21, v21, v134, 0x7fff
	v_add3_u32 v20, v20, v135, 0x7fff
	v_add3_u32 v19, v19, v136, 0x7fff
	v_add3_u32 v18, v18, v137, 0x7fff
	v_add3_u32 v17, v17, v138, 0x7fff
	v_cmp_o_f32_e64 s26, v98, v98
	v_cmp_o_f32_e64 s27, v97, v97
	v_cmp_o_f32_e64 s28, v96, v96
	v_cmp_o_f32_e64 s29, v95, v95
	v_cmp_o_f32_e64 s30, v70, v70
	v_cmp_o_f32_e64 s31, v69, v69
	v_cmp_o_f32_e64 s33, v68, v68
	v_cmp_o_f32_e64 s34, v50, v50
	v_cmp_o_f32_e64 s51, v16, v16
	v_cmp_o_f32_e64 s52, v15, v15
	v_add3_u32 v58, v98, v115, 0x7fff
	v_add3_u32 v59, v97, v116, 0x7fff
	v_add3_u32 v60, v96, v117, 0x7fff
	v_add3_u32 v61, v95, v118, 0x7fff
	v_add3_u32 v62, v70, v119, 0x7fff
	v_add3_u32 v63, v69, v120, 0x7fff
	v_add3_u32 v64, v68, v121, 0x7fff
	v_add3_u32 v50, v50, v122, 0x7fff
	v_add3_u32 v16, v16, v139, 0x7fff
	v_add3_u32 v15, v15, v140, 0x7fff
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
	v_permlanex16_b32 v4, v4, s87, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s87, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v12, s87, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v20, s87, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v27, s87, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v16, s87, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v22, v44, v42, s0
	v_permlanex16_b32 v13, v24, s87, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v25, s87, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v19, s87, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v17, s87, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v26, v47, v45, s0
	v_cndmask_b32_e64 v30, v48, v46, s0
	v_permlanex16_b32 v15, v28, s87, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v32, s87, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v11, s87, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v10, s87, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v1, s87, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v2, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v4, v3, v88
	v_perm_b32 v2, v4, v3, v89
	v_perm_b32 v3, v6, v5, v88
	v_perm_b32 v4, v6, v5, v89
	v_perm_b32 v5, v7, v9, v88
	v_perm_b32 v6, v7, v9, v89
	v_perm_b32 v9, v12, v18, v88
	v_perm_b32 v10, v12, v18, v89
	v_perm_b32 v17, v20, v33, v88
	v_perm_b32 v18, v20, v33, v89
	v_add_lshl_u32 v33, s70, v81, 1
	v_perm_b32 v7, v8, v14, v88
	v_perm_b32 v8, v8, v14, v89
	v_perm_b32 v11, v13, v22, v88
	v_perm_b32 v12, v13, v22, v89
	v_perm_b32 v19, v21, v31, v88
	v_perm_b32 v20, v21, v31, v89
	v_perm_b32 v21, v23, v29, v88
	v_perm_b32 v22, v23, v29, v89
	v_perm_b32 v23, v24, v34, v88
	v_perm_b32 v24, v24, v34, v89
	v_add_lshl_u32 v34, s70, v82, 1
	v_perm_b32 v13, v15, v26, v88
	v_perm_b32 v14, v15, v26, v89
	v_perm_b32 v15, v16, v30, v88
	v_perm_b32 v16, v16, v30, v89
	v_perm_b32 v25, v27, v35, v88
	v_perm_b32 v26, v27, v35, v89
	v_add_lshl_u32 v35, s70, v83, 1
	v_perm_b32 v27, v28, v36, v88
	v_perm_b32 v28, v28, v36, v89
	v_add_lshl_u32 v36, s70, v84, 1
	s_clause 0x3
	buffer_store_b128 v[1:4], v33, s[60:63], 0 offen
	buffer_store_b128 v[5:8], v33, s[60:63], 0 offen offset:512
	buffer_store_b128 v[9:12], v34, s[60:63], 0 offen
	buffer_store_b128 v[13:16], v35, s[60:63], 0 offen
	v_add_lshl_u32 v1, s70, v85, 1
	v_add_lshl_u32 v2, s70, v86, 1
	v_perm_b32 v29, v32, v37, v88
	v_perm_b32 v30, v32, v37, v89
	v_perm_b32 v31, v39, v38, v88
	v_perm_b32 v32, v39, v38, v89
	v_add_lshl_u32 v3, s70, v87, 1
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
	s_mul_hi_u32 s5, s3, s85
	s_xor_b32 s4, s4, s84
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
	s_lshl_b32 s4, s3, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s3, s3, s80
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s5, s58, s4
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s9, s2, s3
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s7, s5, 4
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s5, s7
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v23, s6
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v28, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v23
	v_mov_b32_e32 v23, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	s_mul_i32 s8, s8, s6
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	s_mul_hi_u32 s3, s6, s8
	s_abs_i32 s8, s9
	s_add_i32 s6, s6, s3
	s_xor_b32 s3, s9, s7
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s3, s3, 31
	s_mul_i32 s10, s6, s5
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	s_sub_i32 s8, s8, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s8, s5
	s_cmp_ge_u32 s8, s5
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s8, s11, s8
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s8, s5
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	s_cselect_b32 s5, s10, s6
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	s_xor_b32 s6, s5, s3
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	s_sub_i32 s5, s6, s3
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s7, s5, s7
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	s_sub_i32 s7, s9, s7
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s7, s7, s4
	.loc	1 226 13 is_stmt 1              ; generate_amdgcn.py:226:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s4, s7, 6
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v4, s4, v71
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_lshl_b32 s6, s6, 9
	s_lshl_b32 s3, s3, 9
	v_or_b32_e32 v2, s6, v77
	v_or_b32_e32 v3, s6, v73
	v_mad_u64_u32 v[67:68], null, s81, v4, v[65:66]
	v_mov_b32_e32 v4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v2, s3, v2
	v_subrev_nc_u32_e32 v3, s3, v3
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mad_u64_u32 v[68:69], null, s81, v2, v[66:67]
	v_mad_u64_u32 v[69:70], null, s81, v3, v[66:67]
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
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
	s_mov_b32 s6, s86
	s_mov_b32 s7, s83
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 229 27 is_stmt 1              ; generate_amdgcn.py:229:27
	v_add_nc_u32_e32 v70, s6, v66
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_add_nc_u32_e32 v95, s6, v67
	.loc	1 229 27                        ; generate_amdgcn.py:229:27
	v_cmp_lt_i32_e32 vcc_lo, s6, v78
	.loc	1 237 34                        ; generate_amdgcn.py:237:34
	v_add_nc_u32_e32 v96, s6, v69
	.loc	1 237 26 is_stmt 0              ; generate_amdgcn.py:237:26
	v_add_nc_u32_e32 v97, s6, v68
	.loc	1 230 27 is_stmt 1              ; generate_amdgcn.py:230:27
	v_cmp_gt_i32_e64 s3, s81, v70
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	s_mov_b32 s70, s66
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_cndmask_b32_e32 v70, 0x80000000, v95, vcc_lo
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	s_mov_b32 s71, s67
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_add_i32 s7, s7, -1
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	v_cndmask_b32_e64 v95, 0x80000000, v96, s3
	v_cndmask_b32_e64 v97, 0x80000000, v97, s3
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_add_i32 s6, s6, 16
	s_cmp_lg_u32 s7, 0
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	s_clause 0x1
	buffer_load_b64 v[95:96], v95, s[68:71], 0 offen
	buffer_load_b64 v[99:100], v97, s[68:71], 0 offen
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	buffer_load_u16 v70, v70, s[64:67], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v114, v79, v96
	ds_bpermute_b32 v113, v80, v95
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v90, v70
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	ds_bpermute_b32 v70, v79, v95
	ds_bpermute_b32 v115, v80, v96
	ds_bpermute_b32 v117, v79, v99
	ds_bpermute_b32 v118, v79, v100
	ds_bpermute_b32 v119, v80, v99
	ds_bpermute_b32 v120, v80, v100
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[95:98], v91 offset1:32
	ds_load_2addr_b64 v[99:102], v91 offset0:64 offset1:96
	ds_load_2addr_b64 v[103:106], v92 offset1:32
	ds_load_2addr_b64 v[107:110], v92 offset0:64 offset1:96
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	v_cndmask_b32_e64 v111, v113, v70, s0
	v_cndmask_b32_e64 v112, v115, v114, s0
	v_cndmask_b32_e64 v114, v114, v115, s0
	v_cndmask_b32_e64 v113, v70, v113, s0
	v_cndmask_b32_e64 v115, v119, v117, s0
	v_cndmask_b32_e64 v116, v120, v118, s0
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[111:112], v[99:100], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[111:112], v[95:96], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[111:112], v[97:98], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[111:112], v[101:102], v[49:56] neg_lo:[1,1,0]
	.loc	1 237 26                        ; generate_amdgcn.py:237:26
	v_cndmask_b32_e64 v111, v117, v119, s0
	v_cndmask_b32_e64 v112, v118, v120, s0
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[97:98], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[115:116], v[99:100], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[115:116], v[101:102], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[103:104], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[105:106], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[113:114], v[107:108], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[113:114], v[109:110], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[111:112], v[103:104], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[111:112], v[105:106], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[111:112], v[107:108], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[111:112], v[109:110], v[57:64] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v122, v1
	v_cvt_f32_i32_e32 v121, v2
	v_cvt_f32_i32_e32 v120, v3
	v_cvt_f32_i32_e32 v119, v4
	v_cvt_f32_i32_e32 v118, v5
	v_cvt_f32_i32_e32 v117, v6
	v_cvt_f32_i32_e32 v116, v7
	v_cvt_f32_i32_e32 v115, v8
	v_cvt_f32_i32_e32 v114, v9
	v_cvt_f32_i32_e32 v113, v10
	v_cvt_f32_i32_e32 v112, v11
	v_cvt_f32_i32_e32 v111, v12
	v_cvt_f32_i32_e32 v110, v13
	v_cvt_f32_i32_e32 v109, v14
	v_cvt_f32_i32_e32 v108, v15
	v_cvt_f32_i32_e32 v107, v16
	v_cvt_f32_i32_e32 v106, v17
	v_cvt_f32_i32_e32 v105, v18
	v_cvt_f32_i32_e32 v104, v19
	v_cvt_f32_i32_e32 v103, v20
	v_cvt_f32_i32_e32 v102, v21
	v_cvt_f32_i32_e32 v101, v22
	v_cvt_f32_i32_e32 v100, v23
	v_cvt_f32_i32_e32 v99, v24
	v_cvt_f32_i32_e32 v98, v25
	v_cvt_f32_i32_e32 v97, v26
	v_cvt_f32_i32_e32 v96, v27
	v_cvt_f32_i32_e32 v95, v28
	v_cvt_f32_i32_e32 v70, v29
	v_cvt_f32_i32_e32 v69, v30
	v_cvt_f32_i32_e32 v68, v31
	v_cvt_f32_i32_e32 v67, v32
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
.LBB0_7:                                ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp15:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 156
		.amdhsa_next_free_sgpr 88
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
		.amdhsa_inst_pref_size 50
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.num_vgpr, 156
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.numbered_sgpr, 88
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6332
; TotalNumSgprs: 90
; NumVgprs: 156
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 90
; NumVGPRsForWavesPerEU: 156
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
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
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     90
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_persistent_bm64_bn512_bk32_gm4_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     156
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
