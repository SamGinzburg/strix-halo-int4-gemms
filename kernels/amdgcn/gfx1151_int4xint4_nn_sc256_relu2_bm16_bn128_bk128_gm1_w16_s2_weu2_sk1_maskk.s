	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b32 s5, s[0:1], 0x38
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s22, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s4
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v19, s7
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v19
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	s_sub_i32 s8, s6, s10
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s9, s8
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s4, s8, s4
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s9, s6, 1
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s9
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s10, 0, s7
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v68, 15, v0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v19, s6
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v72, 16, v0
	v_mov_b32_e32 v66, 0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_readfirstlane_b32 s6, v19
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s10, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s6, s10
	s_abs_i32 s10, s2
	s_add_i32 s6, s6, s4
	s_mul_hi_u32 s4, s10, s6
	s_xor_b32 s6, s2, s9
	s_mul_i32 s11, s4, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s10, s7
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s4, s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s4, s6
	s_sub_i32 s22, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s22, s9
	s_sub_i32 s4, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s5, 0xff
.Ltmp13:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s4, 4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_i32 s2, 0x100
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v184, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	v_dual_mov_b32 v182, 0 :: v_dual_lshlrev_b32 v1, 2, v0
	.loc	1 144 24 is_stmt 1              ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v2, 3, v0
	s_load_b256 s[12:19], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s0, s2, 31
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v183, 0 :: v_dual_and_b32 v6, 56, v1
	v_dual_mov_b32 v180, 0 :: v_dual_and_b32 v1, 62, v3
.Ltmp15:
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s3, s3, 6
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s5, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s0, 24
	v_dual_mov_b32 v181, 0 :: v_dual_and_b32 v8, 56, v2
.Ltmp17:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v22, s3, v2
	v_sub_nc_u32_e32 v108, s5, v2
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v2, s33, v68
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s2, s0
.Ltmp19:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v23, s3, v1
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s2, 8
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v25, 64, v22
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_mul_lo_u32 v2, s34, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v26, 64, v23
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v23
	v_lshrrev_b32_e32 v23, 3, v72
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v5, 5, v0
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v4, 4, v0
	v_or_b32_e32 v15, 0x3f0, v0
	v_or_b32_e32 v16, 0x7f0, v0
	v_or_b32_e32 v17, 0xbf0, v0
	v_or_b32_e32 v18, 0xff0, v0
	v_or_b32_e32 v19, 0x13f0, v0
	v_or_b32_e32 v20, 0x17f0, v0
	v_or_b32_e32 v21, 0x1bf0, v0
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v24, 0x1ff0, v0
	v_cmp_gt_i32_e64 s0, 0x80, v22
	v_dual_mov_b32 v173, 0 :: v_dual_and_b32 v0, 2, v23
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_mul_lo_u32 v23, s23, v25
	v_mul_lo_u32 v22, s23, v22
	v_dual_mov_b32 v171, 0 :: v_dual_lshlrev_b32 v130, 1, v2
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v2, s33, v5
	v_dual_mov_b32 v178, 0 :: v_dual_and_b32 v7, 0x70, v4
	v_lshl_or_b32 v6, v68, 6, v6
	v_sub_nc_u32_e32 v107, s5, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v72, off offset:16
	scratch_store_b32 off, v0, off
	s_add_i32 s37, s3, 64
	s_lshl_b32 s3, s7, 7
	v_mad_u64_u32 v[0:1], null, s5, v2, v[1:2]
	v_add3_u32 v5, v23, s3, v7
	v_add3_u32 v7, v22, s3, v7
	v_xor_b32_e32 v3, v3, v8
	v_xor_b32_e32 v8, 8, v6
	v_xor_b32_e32 v9, 16, v6
	v_xor_b32_e32 v10, 24, v6
	v_xor_b32_e32 v11, 32, v6
	v_xor_b32_e32 v12, 40, v6
	v_xor_b32_e32 v13, 48, v6
	v_xor_b32_e32 v14, 56, v6
	s_lshl_b32 s8, s7, 8
	s_lshl_b32 s9, s6, 8
	s_lshl_b32 s6, s6, 7
	s_sub_i32 s35, s8, s9
	v_subrev_nc_u32_e32 v136, s6, v5
	v_subrev_nc_u32_e32 v138, s6, v7
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v68, off offset:20
	scratch_store_b64 off, v[0:1], off offset:4
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v143, 0, v3
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v145, 0, v4
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v146, 0, v6
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v147, 0, v8
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v1, s4
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v96, 0, v68
	v_cmp_gt_i32_e64 s1, 0x80, v26
	v_cmp_gt_i32_e64 s2, 0x80, v25
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v148, 0, v9
	v_dual_mov_b32 v168, 0 :: v_dual_add_nc_u32 v149, 0, v10
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v151, 0, v11
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v153, 0, v12
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v155, 0, v13
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v157, 0, v14
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v159, 0, v15
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v160, 0, v16
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v161, 0, v17
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v162, 0, v18
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v163, 0, v19
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v165, 0, v20
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v167, 0, v21
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v169, 0, v24
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_lshl_b32 s36, s23, 1
	s_lshl_b32 s38, s23, 7
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	scratch_load_b64 v[9:10], off, off offset:4 ; 8-byte Folded Reload
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s4, s37, 64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s34, s34, -1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s4, v107
	v_cmp_lt_i32_e64 s4, s4, v108
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s4, s4, s0
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s37, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v9, 64, v13
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s37, v107
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v14, v9, s[24:27], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v138, s4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s4, s37, v108
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, s1
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v138, s38, v138
	s_addk_i32 s37, 0x80
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[9:12], v9, s[12:15], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, s4, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v143, v14 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v145, v[9:12]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v13, s3
	buffer_load_u16 v185, v9, s[24:27], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v136, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[92:93], v146 offset:8192
	ds_load_b64 v[90:91], v147 offset:8192
	ds_load_b64 v[88:89], v148 offset:8192
	ds_load_b64 v[86:87], v149 offset:8192
	ds_load_b64 v[84:85], v151 offset:8192
	ds_load_b64 v[82:83], v153 offset:8192
	ds_load_b64 v[80:81], v155 offset:8192
	ds_load_b64 v[78:79], v157 offset:8192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v136, s38, v136
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[73:76], v9, s[12:15], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v96 offset:640
	ds_load_u8 v10, v96 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:896
	ds_load_u8 v11, v96 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v10, 16, v9
	ds_load_u8 v11, v96 offset:128
	ds_load_u8 v13, v96
	ds_load_u8 v14, v96 offset:16
	ds_load_u8 v10, v96 offset:32
	ds_load_u8 v9, v96 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:384
	ds_load_u8 v15, v96 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[57:64], v[11:12], v[92:93], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:1664
	ds_load_u8 v12, v96 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1920
	ds_load_u8 v13, v96 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:1152
	ds_load_u8 v13, v96 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:1408
	ds_load_u8 v15, v96 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[57:64], v[11:12], v[90:91], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:2688
	ds_load_u8 v12, v96 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2944
	ds_load_u8 v13, v96 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:2176
	ds_load_u8 v13, v96 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:2432
	ds_load_u8 v15, v96 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[57:64], v[11:12], v[88:89], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:3712
	ds_load_u8 v12, v96 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3968
	ds_load_u8 v13, v96 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:3200
	ds_load_u8 v13, v96 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:3456
	ds_load_u8 v15, v96 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[57:64], v[11:12], v[86:87], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:4736
	ds_load_u8 v12, v96 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:4992
	ds_load_u8 v13, v96 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:4224
	ds_load_u8 v13, v96 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:4480
	ds_load_u8 v15, v96 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[57:64], v[11:12], v[84:85], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:5760
	ds_load_u8 v12, v96 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:6016
	ds_load_u8 v13, v96 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:5248
	ds_load_u8 v13, v96 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:5504
	ds_load_u8 v15, v96 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[57:64], v[11:12], v[82:83], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:6784
	ds_load_u8 v12, v96 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:7040
	ds_load_u8 v13, v96 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:6272
	ds_load_u8 v13, v96 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:6528
	ds_load_u8 v15, v96 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[57:64], v[11:12], v[80:81], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:7808
	ds_load_u8 v12, v96 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:8064
	ds_load_u8 v13, v96 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:7296
	ds_load_u8 v13, v96 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:7552
	ds_load_u8 v15, v96 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[57:64], v[11:12], v[78:79], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:656
	ds_load_u8 v12, v96 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:912
	ds_load_u8 v13, v96 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:400
	ds_load_u8 v14, v96 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[49:56], v[11:12], v[92:93], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:1680
	ds_load_u8 v12, v96 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:1936
	ds_load_u8 v13, v96 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:1168
	ds_load_u8 v13, v96 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:1424
	ds_load_u8 v14, v96 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[49:56], v[11:12], v[90:91], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:2704
	ds_load_u8 v12, v96 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:2960
	ds_load_u8 v13, v96 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:2192
	ds_load_u8 v13, v96 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:2448
	ds_load_u8 v14, v96 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[49:56], v[11:12], v[88:89], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:3728
	ds_load_u8 v12, v96 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:3984
	ds_load_u8 v13, v96 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:3216
	ds_load_u8 v13, v96 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:3472
	ds_load_u8 v14, v96 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[49:56], v[11:12], v[86:87], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:4752
	ds_load_u8 v12, v96 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:5008
	ds_load_u8 v13, v96 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:4240
	ds_load_u8 v13, v96 offset:4112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:4496
	ds_load_u8 v14, v96 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[49:56], v[11:12], v[84:85], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:5776
	ds_load_u8 v12, v96 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:6032
	ds_load_u8 v13, v96 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:5264
	ds_load_u8 v13, v96 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:5520
	ds_load_u8 v14, v96 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[49:56], v[11:12], v[82:83], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:6800
	ds_load_u8 v12, v96 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:7056
	ds_load_u8 v13, v96 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:6288
	ds_load_u8 v13, v96 offset:6160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:6544
	ds_load_u8 v14, v96 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[49:56], v[11:12], v[80:81], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:7824
	ds_load_u8 v12, v96 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:8080
	ds_load_u8 v13, v96 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v12, 16, v11
	ds_load_u8 v11, v96 offset:7312
	ds_load_u8 v13, v96 offset:7184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v96 offset:7568
	ds_load_u8 v14, v96 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v13, 16, v11
	v_wmma_i32_16x16x16_iu4 v[49:56], v[11:12], v[78:79], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v11, v96 offset:672
	ds_load_u8 v12, v96 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v96 offset:928
	ds_load_u8 v13, v96 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v12, 16, v11
	ds_load_u8 v12, v96 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v12, 0xc0c0004
	ds_load_u8 v12, v96 offset:416
	ds_load_u8 v13, v96 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[41:48], v[10:11], v[92:93], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v10, v96 offset:1696
	ds_load_u8 v11, v96 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:1952
	ds_load_u8 v12, v96 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v96 offset:1184
	ds_load_u8 v12, v96 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v96 offset:1440
	ds_load_u8 v13, v96 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[41:48], v[10:11], v[90:91], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v10, v96 offset:2720
	ds_load_u8 v11, v96 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:2976
	ds_load_u8 v12, v96 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v96 offset:2208
	ds_load_u8 v12, v96 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v96 offset:2464
	ds_load_u8 v13, v96 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[41:48], v[10:11], v[88:89], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v10, v96 offset:3744
	ds_load_u8 v11, v96 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:4000
	ds_load_u8 v12, v96 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v96 offset:3232
	ds_load_u8 v12, v96 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v96 offset:3488
	ds_load_u8 v13, v96 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[41:48], v[10:11], v[86:87], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v10, v96 offset:4768
	ds_load_u8 v11, v96 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:5024
	ds_load_u8 v12, v96 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v96 offset:4256
	ds_load_u8 v12, v96 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v96 offset:4512
	ds_load_u8 v13, v96 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[41:48], v[10:11], v[84:85], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v10, v96 offset:5792
	ds_load_u8 v11, v96 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:6048
	ds_load_u8 v12, v96 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v96 offset:5280
	ds_load_u8 v12, v96 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v96 offset:5536
	ds_load_u8 v13, v96 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[41:48], v[10:11], v[82:83], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v10, v96 offset:6816
	ds_load_u8 v11, v96 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:7072
	ds_load_u8 v12, v96 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v96 offset:6304
	ds_load_u8 v12, v96 offset:6176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v96 offset:6560
	ds_load_u8 v13, v96 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[41:48], v[10:11], v[80:81], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v10, v96 offset:7840
	ds_load_u8 v11, v96 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:8096
	ds_load_u8 v12, v96 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v96 offset:7328
	ds_load_u8 v12, v96 offset:7200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v96 offset:7584
	ds_load_u8 v13, v96 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v10
	v_wmma_i32_16x16x16_iu4 v[41:48], v[10:11], v[78:79], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v10, v96 offset:688
	ds_load_u8 v11, v96 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v96 offset:944
	ds_load_u8 v12, v96 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v11, 16, v10
	ds_load_u8 v11, v96 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v11, 0xc0c0004
	ds_load_u8 v11, v96 offset:432
	ds_load_u8 v12, v96 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[92:93], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:1712
	ds_load_u8 v10, v96 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:1968
	ds_load_u8 v11, v96 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:1200
	ds_load_u8 v11, v96 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:1456
	ds_load_u8 v12, v96 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[90:91], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:2736
	ds_load_u8 v10, v96 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:2992
	ds_load_u8 v11, v96 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:2224
	ds_load_u8 v11, v96 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:2480
	ds_load_u8 v12, v96 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[88:89], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:3760
	ds_load_u8 v10, v96 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:4016
	ds_load_u8 v11, v96 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:3248
	ds_load_u8 v11, v96 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:3504
	ds_load_u8 v12, v96 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[86:87], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:4784
	ds_load_u8 v10, v96 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:5040
	ds_load_u8 v11, v96 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:4272
	ds_load_u8 v11, v96 offset:4144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:4528
	ds_load_u8 v12, v96 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[84:85], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:5808
	ds_load_u8 v10, v96 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:6064
	ds_load_u8 v11, v96 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:5296
	ds_load_u8 v11, v96 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:5552
	ds_load_u8 v12, v96 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[82:83], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:6832
	ds_load_u8 v10, v96 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:7088
	ds_load_u8 v11, v96 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:6320
	ds_load_u8 v11, v96 offset:6192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:6576
	ds_load_u8 v12, v96 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[80:81], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:7856
	ds_load_u8 v10, v96 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:8112
	ds_load_u8 v11, v96 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:7344
	ds_load_u8 v11, v96 offset:7216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:7600
	ds_load_u8 v12, v96 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[78:79], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:704
	ds_load_u8 v10, v96 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:960
	ds_load_u8 v11, v96 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:192
	ds_load_u8 v11, v96 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:448
	ds_load_u8 v12, v96 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[92:93], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:1728
	ds_load_u8 v10, v96 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:1984
	ds_load_u8 v11, v96 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:1216
	ds_load_u8 v11, v96 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:1472
	ds_load_u8 v12, v96 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[90:91], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:2752
	ds_load_u8 v10, v96 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:3008
	ds_load_u8 v11, v96 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:2240
	ds_load_u8 v11, v96 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:2496
	ds_load_u8 v12, v96 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[88:89], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:3776
	ds_load_u8 v10, v96 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:4032
	ds_load_u8 v11, v96 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:3264
	ds_load_u8 v11, v96 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:3520
	ds_load_u8 v12, v96 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[86:87], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:4800
	ds_load_u8 v10, v96 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:5056
	ds_load_u8 v11, v96 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:4288
	ds_load_u8 v11, v96 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:4544
	ds_load_u8 v12, v96 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[84:85], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:5824
	ds_load_u8 v10, v96 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:6080
	ds_load_u8 v11, v96 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:5312
	ds_load_u8 v11, v96 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:5568
	ds_load_u8 v12, v96 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[82:83], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:6848
	ds_load_u8 v10, v96 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:7104
	ds_load_u8 v11, v96 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:6336
	ds_load_u8 v11, v96 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:6592
	ds_load_u8 v12, v96 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[80:81], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:7872
	ds_load_u8 v10, v96 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:8128
	ds_load_u8 v11, v96 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v96 offset:7360
	ds_load_u8 v11, v96 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v96 offset:7616
	ds_load_u8 v12, v96 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[78:79], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v9, v96 offset:720
	ds_load_u8 v10, v96 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:976
	ds_load_u8 v11, v96 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v96 offset:208
	ds_load_u8 v10, v96 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v96 offset:464
	ds_load_u8 v11, v96 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[92:93], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v96 offset:1744
	ds_load_u8 v26, v96 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v96 offset:2000
	ds_load_u8 v27, v96 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v96 offset:1232
	ds_load_u8 v27, v96 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v96 offset:1488
	ds_load_u8 v28, v96 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[90:91], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v96 offset:2768
	ds_load_u8 v26, v96 offset:2640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v96 offset:3024
	ds_load_u8 v27, v96 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v96 offset:2256
	ds_load_u8 v27, v96 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v96 offset:2512
	ds_load_u8 v28, v96 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[88:89], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v96 offset:3792
	ds_load_u8 v26, v96 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v96 offset:4048
	ds_load_u8 v27, v96 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v96 offset:3280
	ds_load_u8 v27, v96 offset:3152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v96 offset:3536
	ds_load_u8 v28, v96 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[86:87], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v96 offset:4816
	ds_load_u8 v26, v96 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v96 offset:5072
	ds_load_u8 v27, v96 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v96 offset:4304
	ds_load_u8 v27, v96 offset:4176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v96 offset:4560
	ds_load_u8 v28, v96 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[84:85], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v96 offset:5840
	ds_load_u8 v26, v96 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v96 offset:6096
	ds_load_u8 v27, v96 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v96 offset:5328
	ds_load_u8 v27, v96 offset:5200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v96 offset:5584
	ds_load_u8 v28, v96 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[82:83], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v96 offset:6864
	ds_load_u8 v26, v96 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v96 offset:7120
	ds_load_u8 v27, v96 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v96 offset:6352
	ds_load_u8 v27, v96 offset:6224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v96 offset:6608
	ds_load_u8 v28, v96 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[80:81], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v96 offset:7888
	ds_load_u8 v26, v96 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v96 offset:8144
	ds_load_u8 v27, v96 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v96 offset:7376
	ds_load_u8 v27, v96 offset:7248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v96 offset:7632
	ds_load_u8 v28, v96 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[78:79], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v96 offset:736
	ds_load_u8 v26, v96 offset:608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v96 offset:992
	ds_load_u8 v27, v96 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v26, 16, v25
	ds_load_u8 v25, v96 offset:224
	ds_load_u8 v26, v96 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v96 offset:480
	ds_load_u8 v27, v96 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[92:93], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v65, v96 offset:1760
	ds_load_u8 v66, v96 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v96 offset:2016
	ds_load_u8 v67, v96 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v96 offset:1248
	ds_load_u8 v67, v96 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v96 offset:1504
	ds_load_u8 v68, v96 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[90:91], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v96 offset:2784
	ds_load_u8 v66, v96 offset:2656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v96 offset:3040
	ds_load_u8 v67, v96 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v96 offset:2272
	ds_load_u8 v67, v96 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v96 offset:2528
	ds_load_u8 v68, v96 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[88:89], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v96 offset:3808
	ds_load_u8 v66, v96 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v96 offset:4064
	ds_load_u8 v67, v96 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v96 offset:3296
	ds_load_u8 v67, v96 offset:3168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v96 offset:3552
	ds_load_u8 v68, v96 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[86:87], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v96 offset:4832
	ds_load_u8 v66, v96 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v96 offset:5088
	ds_load_u8 v67, v96 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v96 offset:4320
	ds_load_u8 v67, v96 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v96 offset:4576
	ds_load_u8 v68, v96 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[84:85], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v96 offset:5856
	ds_load_u8 v66, v96 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v96 offset:6112
	ds_load_u8 v67, v96 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v96 offset:5344
	ds_load_u8 v67, v96 offset:5216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v96 offset:5600
	ds_load_u8 v68, v96 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[82:83], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v96 offset:6880
	ds_load_u8 v66, v96 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v96 offset:7136
	ds_load_u8 v67, v96 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v96 offset:6368
	ds_load_u8 v67, v96 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v96 offset:6624
	ds_load_u8 v68, v96 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[80:81], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v96 offset:7904
	ds_load_u8 v66, v96 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v96 offset:8160
	ds_load_u8 v67, v96 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v96 offset:7392
	ds_load_u8 v67, v96 offset:7264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v96 offset:7648
	ds_load_u8 v68, v96 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[78:79], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v65, v96 offset:240
	ds_load_u8 v66, v96 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v96 offset:496
	ds_load_u8 v67, v96 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v186, v66, 16, v65
	ds_load_u8 v65, v96 offset:752
	ds_load_u8 v66, v96 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v159
	ds_load_u8 v67, v96 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v187, v66, 16, v65
	v_wmma_i32_16x16x16_iu4 v[65:72], v[186:187], v[92:93], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:1264
	ds_load_u8 v93, v96 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:1520
	ds_load_u8 v186, v96 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v186, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v93, 16, v92
	ds_load_u8 v93, v96 offset:1776
	ds_load_u8 v186, v96 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v186, v93, 0xc0c0004
	ds_load_u8 v186, v160
	ds_load_u8 v187, v96 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v186, 16, v93
	v_wmma_i32_16x16x16_iu4 v[65:72], v[92:93], v[90:91], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:2288
	ds_load_u8 v91, v96 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:2544
	ds_load_u8 v92, v96 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v91, 16, v90
	ds_load_u8 v91, v96 offset:2800
	ds_load_u8 v92, v96 offset:2672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v161
	ds_load_u8 v93, v96 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v92, 16, v91
	v_wmma_i32_16x16x16_iu4 v[65:72], v[90:91], v[88:89], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v88, v96 offset:3312
	ds_load_u8 v89, v96 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v96 offset:3568
	ds_load_u8 v90, v96 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v89, 16, v88
	ds_load_u8 v89, v96 offset:3824
	ds_load_u8 v90, v96 offset:3696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v162
	ds_load_u8 v91, v96 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v90, 16, v89
	v_wmma_i32_16x16x16_iu4 v[65:72], v[88:89], v[86:87], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v86, v96 offset:4336
	ds_load_u8 v87, v96 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v96 offset:4592
	ds_load_u8 v88, v96 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v87, 16, v86
	ds_load_u8 v87, v96 offset:4848
	ds_load_u8 v88, v96 offset:4720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v163
	ds_load_u8 v89, v96 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v87, v88, 16, v87
	v_wmma_i32_16x16x16_iu4 v[65:72], v[86:87], v[84:85], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v84, v96 offset:5360
	ds_load_u8 v85, v96 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v96 offset:5616
	ds_load_u8 v86, v96 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v85, 16, v84
	ds_load_u8 v85, v96 offset:5872
	ds_load_u8 v86, v96 offset:5744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v165
	ds_load_u8 v87, v96 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v86, 16, v85
	v_wmma_i32_16x16x16_iu4 v[65:72], v[84:85], v[82:83], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v82, v96 offset:6384
	ds_load_u8 v83, v96 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v96 offset:6640
	ds_load_u8 v84, v96 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v83, 16, v82
	ds_load_u8 v83, v96 offset:6896
	ds_load_u8 v84, v96 offset:6768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v167
	ds_load_u8 v85, v96 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v84, 16, v83
	v_wmma_i32_16x16x16_iu4 v[65:72], v[82:83], v[80:81], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v80, v96 offset:7408
	ds_load_u8 v81, v96 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v96 offset:7664
	ds_load_u8 v82, v96 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v81, 16, v80
	ds_load_u8 v81, v96 offset:7920
	ds_load_u8 v82, v96 offset:7792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v169
	ds_load_u8 v83, v96 offset:8048
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v143, v185 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v145, v[73:76]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v82, 16, v81
	v_wmma_i32_16x16x16_iu4 v[65:72], v[80:81], v[78:79], v[65:72] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[88:89], v146 offset:8192
	ds_load_b64 v[86:87], v147 offset:8192
	ds_load_b64 v[84:85], v148 offset:8192
	ds_load_b64 v[82:83], v149 offset:8192
	ds_load_b64 v[80:81], v151 offset:8192
	ds_load_b64 v[78:79], v153 offset:8192
	ds_load_b64 v[75:76], v155 offset:8192
	ds_load_b64 v[73:74], v157 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v90, v96 offset:640
	ds_load_u8 v91, v96 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:896
	ds_load_u8 v92, v96 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v91, 16, v90
	ds_load_u8 v92, v96 offset:128
	ds_load_u8 v185, v96
	ds_load_u8 v186, v96 offset:16
	ds_load_u8 v91, v96 offset:32
	ds_load_u8 v90, v96 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:384
	ds_load_u8 v187, v96 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v187, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[57:64], v[92:93], v[88:89], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:1664
	ds_load_u8 v93, v96 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:1920
	ds_load_u8 v185, v96 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:1152
	ds_load_u8 v185, v96 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:1408
	ds_load_u8 v187, v96 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v187, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[57:64], v[92:93], v[86:87], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:2688
	ds_load_u8 v93, v96 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:2944
	ds_load_u8 v185, v96 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:2176
	ds_load_u8 v185, v96 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:2432
	ds_load_u8 v187, v96 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v187, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[57:64], v[92:93], v[84:85], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:3712
	ds_load_u8 v93, v96 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:3968
	ds_load_u8 v185, v96 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:3200
	ds_load_u8 v185, v96 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:3456
	ds_load_u8 v187, v96 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v187, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[57:64], v[92:93], v[82:83], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:4736
	ds_load_u8 v93, v96 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:4992
	ds_load_u8 v185, v96 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:4224
	ds_load_u8 v185, v96 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:4480
	ds_load_u8 v187, v96 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v187, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[57:64], v[92:93], v[80:81], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:5760
	ds_load_u8 v93, v96 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:6016
	ds_load_u8 v185, v96 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:5248
	ds_load_u8 v185, v96 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:5504
	ds_load_u8 v187, v96 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v187, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[57:64], v[92:93], v[78:79], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:6784
	ds_load_u8 v93, v96 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:7040
	ds_load_u8 v185, v96 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:6272
	ds_load_u8 v185, v96 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:6528
	ds_load_u8 v187, v96 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v187, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[57:64], v[92:93], v[75:76], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:7808
	ds_load_u8 v93, v96 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:8064
	ds_load_u8 v185, v96 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:7296
	ds_load_u8 v185, v96 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:7552
	ds_load_u8 v187, v96 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v187, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[57:64], v[92:93], v[73:74], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:656
	ds_load_u8 v93, v96 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:912
	ds_load_u8 v185, v96 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v186, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:400
	ds_load_u8 v186, v96 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[49:56], v[92:93], v[88:89], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:1680
	ds_load_u8 v93, v96 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:1936
	ds_load_u8 v185, v96 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:1168
	ds_load_u8 v185, v96 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:1424
	ds_load_u8 v186, v96 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[49:56], v[92:93], v[86:87], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:2704
	ds_load_u8 v93, v96 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:2960
	ds_load_u8 v185, v96 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:2192
	ds_load_u8 v185, v96 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:2448
	ds_load_u8 v186, v96 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[49:56], v[92:93], v[84:85], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:3728
	ds_load_u8 v93, v96 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:3984
	ds_load_u8 v185, v96 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:3216
	ds_load_u8 v185, v96 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:3472
	ds_load_u8 v186, v96 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[49:56], v[92:93], v[82:83], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:4752
	ds_load_u8 v93, v96 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:5008
	ds_load_u8 v185, v96 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:4240
	ds_load_u8 v185, v96 offset:4112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:4496
	ds_load_u8 v186, v96 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[49:56], v[92:93], v[80:81], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:5776
	ds_load_u8 v93, v96 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:6032
	ds_load_u8 v185, v96 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:5264
	ds_load_u8 v185, v96 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:5520
	ds_load_u8 v186, v96 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[49:56], v[92:93], v[78:79], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:6800
	ds_load_u8 v93, v96 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:7056
	ds_load_u8 v185, v96 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:6288
	ds_load_u8 v185, v96 offset:6160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:6544
	ds_load_u8 v186, v96 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[49:56], v[92:93], v[75:76], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:7824
	ds_load_u8 v93, v96 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:8080
	ds_load_u8 v185, v96 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v93, 16, v92
	ds_load_u8 v92, v96 offset:7312
	ds_load_u8 v185, v96 offset:7184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v185, v92, 0xc0c0004
	ds_load_u8 v185, v96 offset:7568
	ds_load_u8 v186, v96 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v185, 16, v92
	v_wmma_i32_16x16x16_iu4 v[49:56], v[92:93], v[73:74], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v92, v96 offset:672
	ds_load_u8 v93, v96 offset:544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v96 offset:928
	ds_load_u8 v185, v96 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v93, 16, v92
	ds_load_u8 v93, v96 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v91, v93, 0xc0c0004
	ds_load_u8 v93, v96 offset:416
	ds_load_u8 v185, v96 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v93, 16, v91
	v_wmma_i32_16x16x16_iu4 v[41:48], v[91:92], v[88:89], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v91, v96 offset:1696
	ds_load_u8 v92, v96 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v96 offset:1952
	ds_load_u8 v93, v96 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v96 offset:1184
	ds_load_u8 v93, v96 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v93, v91, 0xc0c0004
	ds_load_u8 v93, v96 offset:1440
	ds_load_u8 v185, v96 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v93, 16, v91
	v_wmma_i32_16x16x16_iu4 v[41:48], v[91:92], v[86:87], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v91, v96 offset:2720
	ds_load_u8 v92, v96 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v96 offset:2976
	ds_load_u8 v93, v96 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v96 offset:2208
	ds_load_u8 v93, v96 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v93, v91, 0xc0c0004
	ds_load_u8 v93, v96 offset:2464
	ds_load_u8 v185, v96 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v93, 16, v91
	v_wmma_i32_16x16x16_iu4 v[41:48], v[91:92], v[84:85], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v91, v96 offset:3744
	ds_load_u8 v92, v96 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v96 offset:4000
	ds_load_u8 v93, v96 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v96 offset:3232
	ds_load_u8 v93, v96 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v93, v91, 0xc0c0004
	ds_load_u8 v93, v96 offset:3488
	ds_load_u8 v185, v96 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v93, 16, v91
	v_wmma_i32_16x16x16_iu4 v[41:48], v[91:92], v[82:83], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v91, v96 offset:4768
	ds_load_u8 v92, v96 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v96 offset:5024
	ds_load_u8 v93, v96 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v96 offset:4256
	ds_load_u8 v93, v96 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v93, v91, 0xc0c0004
	ds_load_u8 v93, v96 offset:4512
	ds_load_u8 v185, v96 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v93, 16, v91
	v_wmma_i32_16x16x16_iu4 v[41:48], v[91:92], v[80:81], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v91, v96 offset:5792
	ds_load_u8 v92, v96 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v96 offset:6048
	ds_load_u8 v93, v96 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v96 offset:5280
	ds_load_u8 v93, v96 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v93, v91, 0xc0c0004
	ds_load_u8 v93, v96 offset:5536
	ds_load_u8 v185, v96 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v93, 16, v91
	v_wmma_i32_16x16x16_iu4 v[41:48], v[91:92], v[78:79], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v91, v96 offset:6816
	ds_load_u8 v92, v96 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v96 offset:7072
	ds_load_u8 v93, v96 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v96 offset:6304
	ds_load_u8 v93, v96 offset:6176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v93, v91, 0xc0c0004
	ds_load_u8 v93, v96 offset:6560
	ds_load_u8 v185, v96 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v93, 16, v91
	v_wmma_i32_16x16x16_iu4 v[41:48], v[91:92], v[75:76], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v91, v96 offset:7840
	ds_load_u8 v92, v96 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v96 offset:8096
	ds_load_u8 v93, v96 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v96 offset:7328
	ds_load_u8 v93, v96 offset:7200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v93, v91, 0xc0c0004
	ds_load_u8 v93, v96 offset:7584
	ds_load_u8 v185, v96 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v185, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v93, 16, v91
	v_wmma_i32_16x16x16_iu4 v[41:48], v[91:92], v[73:74], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v91, v96 offset:688
	ds_load_u8 v92, v96 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v96 offset:944
	ds_load_u8 v93, v96 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v92, 16, v91
	ds_load_u8 v92, v96 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v90, v92, 0xc0c0004
	ds_load_u8 v92, v96 offset:432
	ds_load_u8 v93, v96 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[33:40], v[90:91], v[88:89], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:1712
	ds_load_u8 v91, v96 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:1968
	ds_load_u8 v92, v96 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:1200
	ds_load_u8 v92, v96 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:1456
	ds_load_u8 v93, v96 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[33:40], v[90:91], v[86:87], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:2736
	ds_load_u8 v91, v96 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:2992
	ds_load_u8 v92, v96 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:2224
	ds_load_u8 v92, v96 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:2480
	ds_load_u8 v93, v96 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[33:40], v[90:91], v[84:85], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:3760
	ds_load_u8 v91, v96 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:4016
	ds_load_u8 v92, v96 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:3248
	ds_load_u8 v92, v96 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:3504
	ds_load_u8 v93, v96 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[33:40], v[90:91], v[82:83], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:4784
	ds_load_u8 v91, v96 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:5040
	ds_load_u8 v92, v96 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:4272
	ds_load_u8 v92, v96 offset:4144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:4528
	ds_load_u8 v93, v96 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[33:40], v[90:91], v[80:81], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:5808
	ds_load_u8 v91, v96 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:6064
	ds_load_u8 v92, v96 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:5296
	ds_load_u8 v92, v96 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:5552
	ds_load_u8 v93, v96 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[33:40], v[90:91], v[78:79], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:6832
	ds_load_u8 v91, v96 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:7088
	ds_load_u8 v92, v96 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:6320
	ds_load_u8 v92, v96 offset:6192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:6576
	ds_load_u8 v93, v96 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[33:40], v[90:91], v[75:76], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:7856
	ds_load_u8 v91, v96 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:8112
	ds_load_u8 v92, v96 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:7344
	ds_load_u8 v92, v96 offset:7216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:7600
	ds_load_u8 v93, v96 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[33:40], v[90:91], v[73:74], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:704
	ds_load_u8 v91, v96 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:960
	ds_load_u8 v92, v96 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:192
	ds_load_u8 v92, v96 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:448
	ds_load_u8 v93, v96 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[88:89], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:1728
	ds_load_u8 v91, v96 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:1984
	ds_load_u8 v92, v96 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:1216
	ds_load_u8 v92, v96 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:1472
	ds_load_u8 v93, v96 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[86:87], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:2752
	ds_load_u8 v91, v96 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:3008
	ds_load_u8 v92, v96 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:2240
	ds_load_u8 v92, v96 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:2496
	ds_load_u8 v93, v96 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[84:85], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:3776
	ds_load_u8 v91, v96 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:4032
	ds_load_u8 v92, v96 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:3264
	ds_load_u8 v92, v96 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:3520
	ds_load_u8 v93, v96 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[82:83], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:4800
	ds_load_u8 v91, v96 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:5056
	ds_load_u8 v92, v96 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:4288
	ds_load_u8 v92, v96 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:4544
	ds_load_u8 v93, v96 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[80:81], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:5824
	ds_load_u8 v91, v96 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:6080
	ds_load_u8 v92, v96 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:5312
	ds_load_u8 v92, v96 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:5568
	ds_load_u8 v93, v96 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[78:79], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:6848
	ds_load_u8 v91, v96 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:7104
	ds_load_u8 v92, v96 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:6336
	ds_load_u8 v92, v96 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:6592
	ds_load_u8 v93, v96 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[75:76], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:7872
	ds_load_u8 v91, v96 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:8128
	ds_load_u8 v92, v96 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:7360
	ds_load_u8 v92, v96 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:7616
	ds_load_u8 v93, v96 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[73:74], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:720
	ds_load_u8 v91, v96 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:976
	ds_load_u8 v92, v96 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:208
	ds_load_u8 v92, v96 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:464
	ds_load_u8 v93, v96 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[88:89], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:1744
	ds_load_u8 v91, v96 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:2000
	ds_load_u8 v92, v96 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:1232
	ds_load_u8 v92, v96 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:1488
	ds_load_u8 v93, v96 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[86:87], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:2768
	ds_load_u8 v91, v96 offset:2640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:3024
	ds_load_u8 v92, v96 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:2256
	ds_load_u8 v92, v96 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:2512
	ds_load_u8 v93, v96 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[84:85], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:3792
	ds_load_u8 v91, v96 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:4048
	ds_load_u8 v92, v96 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:3280
	ds_load_u8 v92, v96 offset:3152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:3536
	ds_load_u8 v93, v96 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[82:83], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:4816
	ds_load_u8 v91, v96 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:5072
	ds_load_u8 v92, v96 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:4304
	ds_load_u8 v92, v96 offset:4176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:4560
	ds_load_u8 v93, v96 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[80:81], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:5840
	ds_load_u8 v91, v96 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:6096
	ds_load_u8 v92, v96 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:5328
	ds_load_u8 v92, v96 offset:5200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:5584
	ds_load_u8 v93, v96 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[78:79], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:6864
	ds_load_u8 v91, v96 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:7120
	ds_load_u8 v92, v96 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:6352
	ds_load_u8 v92, v96 offset:6224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:6608
	ds_load_u8 v93, v96 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[75:76], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:7888
	ds_load_u8 v91, v96 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:8144
	ds_load_u8 v92, v96 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:7376
	ds_load_u8 v92, v96 offset:7248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:7632
	ds_load_u8 v93, v96 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[73:74], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:736
	ds_load_u8 v91, v96 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:992
	ds_load_u8 v92, v96 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:224
	ds_load_u8 v92, v96 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:480
	ds_load_u8 v93, v96 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[88:89], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:1760
	ds_load_u8 v91, v96 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:2016
	ds_load_u8 v92, v96 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:1248
	ds_load_u8 v92, v96 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:1504
	ds_load_u8 v93, v96 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[86:87], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:2784
	ds_load_u8 v91, v96 offset:2656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:3040
	ds_load_u8 v92, v96 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:2272
	ds_load_u8 v92, v96 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:2528
	ds_load_u8 v93, v96 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[84:85], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:3808
	ds_load_u8 v91, v96 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:4064
	ds_load_u8 v92, v96 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:3296
	ds_load_u8 v92, v96 offset:3168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:3552
	ds_load_u8 v93, v96 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[82:83], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:4832
	ds_load_u8 v91, v96 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:5088
	ds_load_u8 v92, v96 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:4320
	ds_load_u8 v92, v96 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:4576
	ds_load_u8 v93, v96 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[80:81], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:5856
	ds_load_u8 v91, v96 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:6112
	ds_load_u8 v92, v96 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:5344
	ds_load_u8 v92, v96 offset:5216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:5600
	ds_load_u8 v93, v96 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[78:79], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:6880
	ds_load_u8 v91, v96 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:7136
	ds_load_u8 v92, v96 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:6368
	ds_load_u8 v92, v96 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:6624
	ds_load_u8 v93, v96 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[75:76], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:7904
	ds_load_u8 v91, v96 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:8160
	ds_load_u8 v92, v96 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v96 offset:7392
	ds_load_u8 v92, v96 offset:7264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v96 offset:7648
	ds_load_u8 v93, v96 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[73:74], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v90, v96 offset:240
	ds_load_u8 v91, v96 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v96 offset:496
	ds_load_u8 v92, v96 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v91, 16, v90
	ds_load_u8 v91, v96 offset:752
	ds_load_u8 v92, v96 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v159
	ds_load_u8 v93, v96 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v92, 16, v91
	v_wmma_i32_16x16x16_iu4 v[65:72], v[90:91], v[88:89], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v88, v96 offset:1264
	ds_load_u8 v89, v96 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v96 offset:1520
	ds_load_u8 v90, v96 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v89, 16, v88
	ds_load_u8 v89, v96 offset:1776
	ds_load_u8 v90, v96 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v160
	ds_load_u8 v91, v96 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v90, 16, v89
	v_wmma_i32_16x16x16_iu4 v[65:72], v[88:89], v[86:87], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v86, v96 offset:2288
	ds_load_u8 v87, v96 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v96 offset:2544
	ds_load_u8 v88, v96 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v87, 16, v86
	ds_load_u8 v87, v96 offset:2800
	ds_load_u8 v88, v96 offset:2672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v161
	ds_load_u8 v89, v96 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v87, v88, 16, v87
	v_wmma_i32_16x16x16_iu4 v[65:72], v[86:87], v[84:85], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v84, v96 offset:3312
	ds_load_u8 v85, v96 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v96 offset:3568
	ds_load_u8 v86, v96 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v85, 16, v84
	ds_load_u8 v85, v96 offset:3824
	ds_load_u8 v86, v96 offset:3696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v162
	ds_load_u8 v87, v96 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v86, 16, v85
	v_wmma_i32_16x16x16_iu4 v[65:72], v[84:85], v[82:83], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v82, v96 offset:4336
	ds_load_u8 v83, v96 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v96 offset:4592
	ds_load_u8 v84, v96 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v83, 16, v82
	ds_load_u8 v83, v96 offset:4848
	ds_load_u8 v84, v96 offset:4720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v163
	ds_load_u8 v85, v96 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v84, 16, v83
	v_wmma_i32_16x16x16_iu4 v[65:72], v[82:83], v[80:81], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v80, v96 offset:5360
	ds_load_u8 v81, v96 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v96 offset:5616
	ds_load_u8 v82, v96 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v81, 16, v80
	ds_load_u8 v81, v96 offset:5872
	ds_load_u8 v82, v96 offset:5744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v165
	ds_load_u8 v83, v96 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v82, 16, v81
	v_wmma_i32_16x16x16_iu4 v[65:72], v[80:81], v[78:79], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v78, v96 offset:6384
	ds_load_u8 v79, v96 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v96 offset:6640
	ds_load_u8 v80, v96 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v79, 16, v78
	ds_load_u8 v79, v96 offset:6896
	ds_load_u8 v80, v96 offset:6768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v167
	ds_load_u8 v81, v96 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v80, 16, v79
	v_wmma_i32_16x16x16_iu4 v[65:72], v[78:79], v[75:76], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v75, v96 offset:7408
	ds_load_u8 v76, v96 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v96 offset:7664
	ds_load_u8 v78, v96 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v78, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v76, 16, v75
	ds_load_u8 v76, v96 offset:7920
	ds_load_u8 v78, v96 offset:7792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v78, v76, 0xc0c0004
	ds_load_u8 v78, v169
	ds_load_u8 v79, v96 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v78, 16, v76
	v_wmma_i32_16x16x16_iu4 v[65:72], v[75:76], v[73:74], v[65:72] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v73, v130, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v130, 2, v130
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v229, 16, v73
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v73, s35, v0
	s_clause 0x1f
	buffer_load_u16 v74, v73, s[16:19], 0 offen
	buffer_load_u16 v75, v73, s[16:19], 0 offen offset:4
	buffer_load_u16 v76, v73, s[16:19], 0 offen offset:8
	buffer_load_u16 v78, v73, s[16:19], 0 offen offset:12
	buffer_load_u16 v79, v73, s[16:19], 0 offen offset:16
	buffer_load_u16 v80, v73, s[16:19], 0 offen offset:20
	buffer_load_u16 v81, v73, s[16:19], 0 offen offset:24
	buffer_load_u16 v82, v73, s[16:19], 0 offen offset:28
	buffer_load_u16 v83, v73, s[16:19], 0 offen offset:32
	buffer_load_u16 v84, v73, s[16:19], 0 offen offset:36
	buffer_load_u16 v85, v73, s[16:19], 0 offen offset:40
	buffer_load_u16 v86, v73, s[16:19], 0 offen offset:44
	buffer_load_u16 v87, v73, s[16:19], 0 offen offset:48
	buffer_load_u16 v88, v73, s[16:19], 0 offen offset:52
	buffer_load_u16 v89, v73, s[16:19], 0 offen offset:56
	buffer_load_u16 v90, v73, s[16:19], 0 offen offset:60
	buffer_load_u16 v91, v73, s[16:19], 0 offen offset:64
	buffer_load_u16 v92, v73, s[16:19], 0 offen offset:68
	buffer_load_u16 v93, v73, s[16:19], 0 offen offset:72
	buffer_load_u16 v185, v73, s[16:19], 0 offen offset:76
	buffer_load_u16 v186, v73, s[16:19], 0 offen offset:80
	buffer_load_u16 v187, v73, s[16:19], 0 offen offset:84
	buffer_load_u16 v188, v73, s[16:19], 0 offen offset:88
	buffer_load_u16 v189, v73, s[16:19], 0 offen offset:92
	buffer_load_u16 v190, v73, s[16:19], 0 offen offset:96
	buffer_load_u16 v191, v73, s[16:19], 0 offen offset:100
	buffer_load_u16 v192, v73, s[16:19], 0 offen offset:104
	buffer_load_u16 v193, v73, s[16:19], 0 offen offset:108
	buffer_load_u16 v194, v73, s[16:19], 0 offen offset:112
	buffer_load_u16 v195, v73, s[16:19], 0 offen offset:116
	buffer_load_u16 v196, v73, s[16:19], 0 offen offset:120
	buffer_load_u16 v197, v73, s[16:19], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v230, v73, s[16:19], 0 offen offset:128
	buffer_load_u16 v231, v73, s[16:19], 0 offen offset:132
	buffer_load_u16 v232, v73, s[16:19], 0 offen offset:136
	buffer_load_u16 v233, v73, s[16:19], 0 offen offset:140
	buffer_load_u16 v234, v73, s[16:19], 0 offen offset:144
	buffer_load_u16 v235, v73, s[16:19], 0 offen offset:148
	buffer_load_u16 v236, v73, s[16:19], 0 offen offset:152
	buffer_load_u16 v237, v73, s[16:19], 0 offen offset:156
	buffer_load_u16 v238, v73, s[16:19], 0 offen offset:160
	buffer_load_u16 v239, v73, s[16:19], 0 offen offset:164
	buffer_load_u16 v240, v73, s[16:19], 0 offen offset:168
	buffer_load_u16 v241, v73, s[16:19], 0 offen offset:172
	buffer_load_u16 v242, v73, s[16:19], 0 offen offset:176
	buffer_load_u16 v243, v73, s[16:19], 0 offen offset:180
	buffer_load_u16 v244, v73, s[16:19], 0 offen offset:184
	buffer_load_u16 v245, v73, s[16:19], 0 offen offset:188
	buffer_load_u16 v246, v73, s[16:19], 0 offen offset:192
	buffer_load_u16 v247, v73, s[16:19], 0 offen offset:196
	buffer_load_u16 v248, v73, s[16:19], 0 offen offset:200
	buffer_load_u16 v249, v73, s[16:19], 0 offen offset:204
	buffer_load_u16 v250, v73, s[16:19], 0 offen offset:208
	buffer_load_u16 v251, v73, s[16:19], 0 offen offset:212
	buffer_load_u16 v252, v73, s[16:19], 0 offen offset:216
	buffer_load_u16 v253, v73, s[16:19], 0 offen offset:220
	buffer_load_u16 v254, v73, s[16:19], 0 offen offset:224
	buffer_load_u16 v255, v73, s[16:19], 0 offen offset:228
	buffer_load_u16 v94, v73, s[16:19], 0 offen offset:232
	buffer_load_u16 v95, v73, s[16:19], 0 offen offset:236
	buffer_load_u16 v119, v73, s[16:19], 0 offen offset:240
	buffer_load_u16 v0, v73, s[16:19], 0 offen offset:244
	buffer_load_u16 v77, v73, s[16:19], 0 offen offset:248
	buffer_load_u16 v73, v73, s[16:19], 0 offen offset:252
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v62, v62, v229
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s35, s35, s36
	s_cmp_lg_u32 s34, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v225, 16, v78
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v223, 16, v80
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v180, v62, v223
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v61, v61, v229 :: v_dual_lshlrev_b32 v224, 16, v79
	v_dual_mul_f32 v57, v57, v229 :: v_dual_lshlrev_b32 v228, 16, v74
	v_dual_mul_f32 v60, v60, v229 :: v_dual_lshlrev_b32 v227, 16, v75
	v_dual_mul_f32 v59, v59, v229 :: v_dual_lshlrev_b32 v226, 16, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(57)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v137, v57, v228 :: v_dual_lshlrev_b32 v222, 16, v81
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(55)
	v_dual_mul_f32 v63, v63, v229 :: v_dual_lshlrev_b32 v220, 16, v83
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(49)
	v_dual_fmac_f32 v181, v61, v224 :: v_dual_lshlrev_b32 v214, 16, v89
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v213, 16, v90
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(42)
	v_dual_mul_f32 v46, v46, v229 :: v_dual_lshlrev_b32 v207, 16, v187
	s_waitcnt vmcnt(41)
	v_dual_mul_f32 v55, v55, v229 :: v_dual_lshlrev_b32 v206, 16, v188
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v202, 16, v192
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v200, 16, v194
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v199, 16, v195
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(33)
	v_dual_mul_f32 v47, v47, v229 :: v_dual_lshlrev_b32 v198, 16, v196
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v196, 16, v230
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v195, 16, v231
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v194, 16, v232
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v192, 16, v234
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v230, v30
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v188, 16, v238
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v187, 16, v239
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v231, v31
	v_cvt_f32_i32_e32 v232, v32
	v_mul_f32_e32 v234, v42, v229
	v_mul_f32_e32 v42, v39, v229
	v_mul_f32_e32 v39, v18, v229
	v_dual_mul_f32 v50, v50, v229 :: v_dual_lshlrev_b32 v221, 16, v82
	v_dual_mul_f32 v52, v52, v229 :: v_dual_lshlrev_b32 v219, 16, v84
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v183, v59, v226 :: v_dual_lshlrev_b32 v218, 16, v85
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v54, v54, v229 :: v_dual_lshlrev_b32 v217, 16, v86
	v_dual_mul_f32 v49, v49, v229 :: v_dual_lshlrev_b32 v216, 16, v87
	v_dual_mul_f32 v56, v56, v229 :: v_dual_lshlrev_b32 v215, 16, v88
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v79, 16, v94
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v78, 16, v95
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v76, 16, v119
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v75, 16, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v171, v55, v214 :: v_dual_lshlrev_b32 v74, 16, v77
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v25
	v_cvt_f32_i32_e32 v77, v26
	v_cvt_f32_i32_e32 v94, v27
	v_cvt_f32_i32_e32 v95, v28
	v_cvt_f32_i32_e32 v119, v29
	v_dual_mul_f32 v51, v51, v229 :: v_dual_lshlrev_b32 v212, 16, v91
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v211, 16, v92
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v179, v63, v222 :: v_dual_lshlrev_b32 v210, 16, v93
	v_dual_fmac_f32 v176, v50, v219 :: v_dual_lshlrev_b32 v209, 16, v185
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v53, v53, v229 :: v_dual_lshlrev_b32 v208, 16, v186
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v172, v54, v215 :: v_dual_lshlrev_b32 v205, 16, v189
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v204, 16, v190
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v48, v48, v229 :: v_dual_lshlrev_b32 v203, 16, v191
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v201, 16, v193
	v_lshlrev_b32_e32 v191, 16, v235
	v_lshlrev_b32_e32 v190, 16, v236
	v_lshlrev_b32_e32 v189, 16, v237
	v_lshlrev_b32_e32 v186, 16, v240
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v154, v46, v207 :: v_dual_lshlrev_b32 v185, 16, v241
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v93, 16, v242
	v_lshlrev_b32_e32 v92, 16, v243
	v_lshlrev_b32_e32 v91, 16, v244
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v177, v49, v220 :: v_dual_lshlrev_b32 v90, 16, v245
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v89, 16, v246
	v_lshlrev_b32_e32 v88, 16, v247
	v_lshlrev_b32_e32 v87, 16, v248
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v175, v51, v218 :: v_dual_lshlrev_b32 v86, 16, v249
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v32, v9, v229 :: v_dual_lshlrev_b32 v85, 16, v250
	v_dual_mul_f32 v31, v10, v229 :: v_dual_lshlrev_b32 v84, 16, v251
	v_dual_mul_f32 v30, v11, v229 :: v_dual_lshlrev_b32 v83, 16, v252
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v173, v53, v216 :: v_dual_lshlrev_b32 v82, 16, v253
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v28, v13, v229 :: v_dual_lshlrev_b32 v81, 16, v254
	v_dual_mul_f32 v29, v12, v229 :: v_dual_lshlrev_b32 v80, 16, v255
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v152, v47, v206 :: v_dual_lshlrev_b32 v73, 16, v73
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v58, v58, v229
	v_mul_f32_e32 v64, v64, v229
	v_mul_f32_e32 v235, v43, v229
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v193, 16, v233
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v233, v41, v229
	v_mul_f32_e32 v236, v44, v229
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v166, v234, v211 :: v_dual_lshlrev_b32 v197, 16, v197
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v237, v45, v229
	v_mul_f32_e32 v238, v33, v229
	v_mul_f32_e32 v239, v34, v229
	v_mul_f32_e32 v240, v35, v229
	v_mul_f32_e32 v45, v36, v229
	v_mul_f32_e32 v44, v37, v229
	v_mul_f32_e32 v43, v38, v229
	v_mul_f32_e32 v41, v40, v229
	v_mul_f32_e32 v40, v17, v229
	v_mul_f32_e32 v38, v19, v229
	v_mul_f32_e32 v37, v20, v229
	v_mul_f32_e32 v36, v21, v229
	v_mul_f32_e32 v35, v22, v229
	v_mul_f32_e32 v34, v23, v229
	v_mul_f32_e32 v33, v24, v229
	v_mul_f32_e32 v27, v14, v229
	v_mul_f32_e32 v26, v15, v229
	v_mul_f32_e32 v25, v16, v229
	v_mul_f32_e32 v24, v0, v229
	v_dual_mul_f32 v23, v77, v229 :: v_dual_fmac_f32 v144, v238, v204
	v_dual_mul_f32 v22, v94, v229 :: v_dual_fmac_f32 v141, v240, v202
	v_dual_mul_f32 v21, v95, v229 :: v_dual_fmac_f32 v134, v42, v198
	v_dual_mul_f32 v20, v119, v229 :: v_dual_fmac_f32 v139, v44, v200
	v_dual_mul_f32 v19, v230, v229 :: v_dual_fmac_f32 v142, v239, v203
	v_dual_mul_f32 v18, v231, v229 :: v_dual_fmac_f32 v129, v38, v194
	v_dual_mul_f32 v17, v232, v229 :: v_dual_fmac_f32 v126, v35, v191
	v_dual_mul_f32 v16, v65, v229 :: v_dual_fmac_f32 v135, v43, v199
	v_dual_mul_f32 v15, v66, v229 :: v_dual_fmac_f32 v132, v40, v196
	v_dual_mul_f32 v14, v67, v229 :: v_dual_fmac_f32 v127, v36, v192
	v_dual_mul_f32 v13, v68, v229 :: v_dual_fmac_f32 v122, v31, v187
	v_dual_mul_f32 v12, v69, v229 :: v_dual_fmac_f32 v131, v39, v195
	v_mul_f32_e32 v11, v70, v229
	v_dual_mul_f32 v10, v71, v229 :: v_dual_fmac_f32 v125, v34, v190
	v_dual_mul_f32 v9, v72, v229 :: v_dual_fmac_f32 v116, v26, v91
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v184, v58, v227
	v_dual_fmac_f32 v182, v60, v225 :: v_dual_fmac_f32 v121, v30, v186
	v_dual_fmac_f32 v178, v64, v221 :: v_dual_fmac_f32 v117, v27, v92
	v_dual_fmac_f32 v174, v52, v217 :: v_dual_fmac_f32 v115, v25, v90
	v_dual_fmac_f32 v170, v56, v213 :: v_dual_fmac_f32 v113, v23, v88
	v_fmac_f32_e32 v168, v233, v212
	v_fmac_f32_e32 v164, v235, v210
	v_dual_fmac_f32 v158, v236, v209 :: v_dual_fmac_f32 v111, v21, v86
	v_fmac_f32_e32 v156, v237, v208
	v_dual_fmac_f32 v150, v48, v205 :: v_dual_fmac_f32 v109, v19, v84
	v_dual_fmac_f32 v140, v45, v201 :: v_dual_fmac_f32 v123, v32, v188
	v_dual_fmac_f32 v133, v41, v197 :: v_dual_fmac_f32 v112, v22, v87
	v_dual_fmac_f32 v128, v37, v193 :: v_dual_fmac_f32 v103, v15, v80
	v_fmac_f32_e32 v120, v29, v185
	v_dual_fmac_f32 v118, v28, v93 :: v_dual_fmac_f32 v105, v17, v82
	v_dual_fmac_f32 v114, v24, v89 :: v_dual_fmac_f32 v101, v13, v78
	v_fmac_f32_e32 v110, v20, v85
	v_dual_fmac_f32 v106, v18, v83 :: v_dual_fmac_f32 v97, v9, v73
	v_fmac_f32_e32 v104, v16, v81
	v_fmac_f32_e32 v102, v14, v79
	v_fmac_f32_e32 v100, v12, v76
	v_dual_fmac_f32 v124, v33, v189 :: v_dual_fmac_f32 v99, v11, v75
	v_fmac_f32_e32 v98, v10, v74
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v34, v129, v129 :: v_dual_max_f32 v35, v128, v128
	v_dual_max_f32 v36, v127, v127 :: v_dual_max_f32 v37, v126, v126
	v_max_f32_e32 v38, v125, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v68, 0, v34 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v69, 0, v36 :: v_dual_max_f32 v70, 0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v71, 0, v38 :: v_dual_max_f32 v34, v124, v124
	v_dual_max_f32 v37, v122, v122 :: v_dual_max_f32 v36, v123, v123
	v_dual_max_f32 v39, v120, v120 :: v_dual_max_f32 v38, v121, v121
	v_max_f32_e32 v72, 0, v34
	v_dual_max_f32 v4, v181, v181 :: v_dual_max_f32 v5, v180, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v73, 0, v36 :: v_dual_max_f32 v74, 0, v37
	v_max_f32_e32 v75, 0, v38
	v_dual_max_f32 v37, v116, v116 :: v_dual_max_f32 v76, 0, v39
	v_max_f32_e32 v39, v114, v114
	v_max_f32_e32 v34, v118, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v38, v115, v115 :: v_dual_max_f32 v79, 0, v37
	v_dual_max_f32 v36, v117, v117 :: v_dual_max_f32 v81, 0, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v77, 0, v34
	v_max_f32_e32 v37, v111, v111
	v_dual_max_f32 v39, v109, v109 :: v_dual_max_f32 v78, 0, v36
	v_max_f32_e32 v80, 0, v38
	v_max_f32_e32 v38, v110, v110
	v_dual_max_f32 v24, v144, v144 :: v_dual_max_f32 v25, v142, v142
	v_max_f32_e32 v28, v139, v139
	v_dual_max_f32 v84, 0, v37 :: v_dual_max_f32 v37, v104, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v36, v112, v112 :: v_dual_max_f32 v85, 0, v38
	v_max_f32_e32 v34, v113, v113
	v_dual_max_f32 v0, v137, v137 :: v_dual_max_f32 v1, v184, v184
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v20, v156, v156 :: v_dual_max_f32 v21, v154, v154
	v_dual_max_f32 v26, v141, v141 :: v_dual_max_f32 v27, v140, v140
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v31, v133, v133 :: v_dual_max_f32 v30, v134, v134
	v_max_f32_e32 v33, v131, v131
	v_dual_max_f32 v83, 0, v36 :: v_dual_max_f32 v82, 0, v34
	v_dual_max_f32 v89, 0, v37 :: v_dual_max_f32 v34, v106, v106
	v_max_f32_e32 v86, 0, v39
	v_dual_max_f32 v36, v105, v105 :: v_dual_max_f32 v37, v99, v99
	v_dual_max_f32 v38, v103, v103 :: v_dual_max_f32 v39, v102, v102
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v14, v171, v171 :: v_dual_max_f32 v15, v170, v170
	v_dual_max_f32 v16, v168, v168 :: v_dual_max_f32 v17, v166, v166
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_max_f32_e32 v91, 0, v39
	v_dual_max_f32 v39, v97, v97 :: v_dual_max_f32 v90, 0, v38
	v_dual_max_f32 v38, v98, v98 :: v_dual_mul_f32 v63, v4, v4
	v_max_f32_e32 v88, 0, v36
	v_dual_max_f32 v36, v100, v100 :: v_dual_mul_f32 v67, v1, v1
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v17, 0, v17
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v66, v0, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v93, 0, v36 :: v_dual_mul_f32 v46, v21, v21
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v40, v27, v27 :: v_dual_mul_f32 v27, v72, v72
	v_dual_mul_f32 v36, v31, v31 :: v_dual_mul_f32 v31, v68, v68
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:12
	scratch_load_b32 v72, off, off offset:16
	scratch_load_b32 v68, off, off offset:20
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v2, v183, v183 :: v_dual_max_f32 v3, v182, v182
	v_dual_max_f32 v6, v179, v179 :: v_dual_max_f32 v7, v178, v178
	v_max_f32_e32 v8, v177, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v9, v176, v176
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v11, v174, v174 :: v_dual_max_f32 v10, v175, v175
	v_dual_max_f32 v13, v172, v172 :: v_dual_max_f32 v12, v173, v173
	v_dual_max_f32 v18, v164, v164 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v19, v158, v158
	v_dual_max_f32 v22, v152, v152 :: v_dual_max_f32 v23, v150, v150
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v29, v135, v135
	v_dual_max_f32 v32, v132, v132 :: v_dual_max_f32 v87, 0, v34
	v_dual_max_f32 v34, v101, v101 :: v_dual_mul_f32 v65, v2, v2
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v22, 0, v22
	v_max_f32_e32 v23, 0, v23
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v92, 0, v34
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v59, v8, v8 :: v_dual_max_f32 v94, 0, v37
	v_mul_f32_e32 v61, v6, v6
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v95, 0, v38 :: v_dual_max_f32 v96, 0, v39
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v57, v10, v10 :: v_dual_mul_f32 v64, v3, v3
	v_dual_mul_f32 v55, v12, v12 :: v_dual_mul_f32 v62, v5, v5
	v_dual_mul_f32 v51, v16, v16 :: v_dual_mul_f32 v60, v7, v7
	v_dual_mul_f32 v49, v18, v18 :: v_dual_mul_f32 v58, v9, v9
	v_dual_mul_f32 v47, v20, v20 :: v_dual_mul_f32 v56, v11, v11
	v_dual_mul_f32 v45, v22, v22 :: v_dual_mul_f32 v54, v13, v13
	v_mul_f32_e32 v43, v24, v24
	v_dual_mul_f32 v53, v14, v14 :: v_dual_mul_f32 v52, v15, v15
	v_dual_mul_f32 v41, v26, v26 :: v_dual_mul_f32 v50, v17, v17
	v_dual_mul_f32 v39, v28, v28 :: v_dual_mul_f32 v48, v19, v19
	v_dual_mul_f32 v37, v30, v30 :: v_dual_mul_f32 v44, v23, v23
	v_mul_f32_e32 v33, v33, v33
	v_mul_f32_e32 v42, v25, v25
	v_dual_mul_f32 v38, v29, v29 :: v_dual_mul_f32 v25, v74, v74
	v_dual_mul_f32 v34, v32, v32 :: v_dual_mul_f32 v21, v77, v77
	v_dual_mul_f32 v30, v35, v35 :: v_dual_mul_f32 v17, v80, v80
	v_dual_mul_f32 v32, v69, v69 :: v_dual_mul_f32 v15, v82, v82
	v_dual_mul_f32 v29, v70, v70 :: v_dual_mul_f32 v28, v71, v71
	v_mul_f32_e32 v13, v85, v85
	v_dual_mul_f32 v26, v73, v73 :: v_dual_mul_f32 v11, v86, v86
	v_dual_mul_f32 v24, v75, v75 :: v_dual_mul_f32 v9, v88, v88
	v_dual_mul_f32 v23, v76, v76 :: v_dual_mul_f32 v20, v78, v78
	v_dual_mul_f32 v5, v93, v93 :: v_dual_mul_f32 v18, v79, v79
	v_dual_mul_f32 v7, v90, v90 :: v_dual_mul_f32 v16, v81, v81
	v_dual_mul_f32 v3, v94, v94 :: v_dual_mul_f32 v14, v83, v83
	v_mul_f32_e32 v1, v96, v96
	v_mul_f32_e32 v12, v84, v84
	v_mul_f32_e32 v10, v87, v87
	v_mul_f32_e32 v8, v89, v89
	v_mul_f32_e32 v6, v91, v91
	v_mul_f32_e32 v4, v92, v92
	v_mul_f32_e32 v2, v95, v95
.LBB0_4:                                ; %._crit_edge
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v35.h, 0
	v_mov_b16_e32 v35.l, v67.h
	v_mov_b16_e32 v22.l, v66.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v71, s23, v68
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v72
	v_mov_b16_e32 v22.h, v35.h
	v_and_b32_e32 v69, 1, v35
	v_mov_b16_e32 v35.l, v64.h
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	s_lshl_b32 s0, s22, 7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s23
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v70, 1, v22
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v22, s33, s0, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v71, v67, v69, 0x7fff
	v_and_b32_e32 v67, 1, v35
	v_mov_b16_e32 v35.l, v62.h
	v_add3_u32 v66, v66, v70, 0x7fff
	v_mov_b16_e32 v69.l, v63.h
	v_mov_b16_e32 v69.h, v35.h
	v_add3_u32 v64, v64, v67, 0x7fff
	v_mov_b16_e32 v68.l, v65.h
	v_mov_b16_e32 v71.l, v66.h
	v_and_b32_e32 v66, 1, v35
	v_mov_b16_e32 v68.h, v35.h
	v_mov_b16_e32 v35.l, v60.h
	s_mov_b32 s0, 0x76543210
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v19, 1, v72
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v62, v62, v66, 0x7fff
	v_and_b32_e32 v67, 1, v69
	v_and_b32_e32 v0, 0x1e0, v0
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_add3_u32 v63, v63, v67, 0x7fff
	v_mov_b16_e32 v67.l, v59.h
	v_mov_b16_e32 v67.h, v35.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v62.l, v63.h
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v65, v65, v68, 0x7fff
	v_mov_b16_e32 v68.l, v61.h
	v_mov_b16_e32 v68.h, v35.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v64.l, v65.h
	v_and_b32_e32 v65, 1, v35
	v_and_b32_e32 v66, 1, v68
	v_mov_b16_e32 v35.l, v58.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v60, v60, v65, 0x7fff
	v_add3_u32 v61, v61, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v63, 1, v35
	v_and_b32_e32 v65, 1, v67
	v_mov_b16_e32 v35.l, v56.h
	v_mov_b16_e32 v66.l, v57.h
	v_mov_b16_e32 v66.h, v35.h
	v_mov_b16_e32 v60.l, v61.h
	v_add3_u32 v59, v59, v65, 0x7fff
	v_add3_u32 v58, v58, v63, 0x7fff
	v_and_b32_e32 v61, 1, v35
	v_and_b32_e32 v63, 1, v66
	v_mov_b16_e32 v35.l, v54.h
	v_mov_b16_e32 v65.l, v55.h
	v_mov_b16_e32 v65.h, v35.h
	v_mov_b16_e32 v58.l, v59.h
	v_add3_u32 v57, v57, v63, 0x7fff
	v_add3_u32 v56, v56, v61, 0x7fff
	v_and_b32_e32 v59, 1, v35
	v_and_b32_e32 v61, 1, v65
	v_mov_b16_e32 v35.l, v52.h
	v_mov_b16_e32 v63.l, v53.h
	v_mov_b16_e32 v63.h, v35.h
	v_mov_b16_e32 v56.l, v57.h
	v_add3_u32 v55, v55, v61, 0x7fff
	v_add3_u32 v54, v54, v59, 0x7fff
	v_and_b32_e32 v57, 1, v35
	v_and_b32_e32 v59, 1, v63
	v_mov_b16_e32 v35.l, v50.h
	v_mov_b16_e32 v61.l, v51.h
	v_mov_b16_e32 v61.h, v35.h
	v_mov_b16_e32 v54.l, v55.h
	v_add3_u32 v53, v53, v59, 0x7fff
	v_add3_u32 v52, v52, v57, 0x7fff
	v_and_b32_e32 v55, 1, v35
	v_and_b32_e32 v57, 1, v61
	v_mov_b16_e32 v35.l, v48.h
	v_mov_b16_e32 v59.l, v49.h
	v_mov_b16_e32 v59.h, v35.h
	v_mov_b16_e32 v52.l, v53.h
	v_add3_u32 v51, v51, v57, 0x7fff
	v_add3_u32 v50, v50, v55, 0x7fff
	v_and_b32_e32 v53, 1, v35
	v_and_b32_e32 v55, 1, v59
	v_mov_b16_e32 v35.l, v46.h
	v_mov_b16_e32 v57.l, v47.h
	v_mov_b16_e32 v57.h, v35.h
	v_mov_b16_e32 v50.l, v51.h
	v_add3_u32 v49, v49, v55, 0x7fff
	v_add3_u32 v48, v48, v53, 0x7fff
	v_and_b32_e32 v51, 1, v35
	v_and_b32_e32 v53, 1, v57
	v_mov_b16_e32 v35.l, v44.h
	v_mov_b16_e32 v55.l, v45.h
	v_mov_b16_e32 v55.h, v35.h
	v_mov_b16_e32 v48.l, v49.h
	v_add3_u32 v47, v47, v53, 0x7fff
	v_add3_u32 v46, v46, v51, 0x7fff
	v_and_b32_e32 v49, 1, v35
	v_and_b32_e32 v51, 1, v55
	v_mov_b16_e32 v35.l, v42.h
	v_mov_b16_e32 v53.l, v43.h
	v_mov_b16_e32 v53.h, v35.h
	v_mov_b16_e32 v46.l, v47.h
	v_add3_u32 v45, v45, v51, 0x7fff
	v_add3_u32 v44, v44, v49, 0x7fff
	v_and_b32_e32 v47, 1, v35
	v_and_b32_e32 v49, 1, v53
	v_mov_b16_e32 v35.l, v40.h
	v_mov_b16_e32 v51.l, v41.h
	v_mov_b16_e32 v51.h, v35.h
	v_mov_b16_e32 v44.l, v45.h
	v_add3_u32 v43, v43, v49, 0x7fff
	v_add3_u32 v42, v42, v47, 0x7fff
	v_and_b32_e32 v45, 1, v35
	v_and_b32_e32 v47, 1, v51
	v_mov_b16_e32 v35.l, v38.h
	v_mov_b16_e32 v49.l, v39.h
	v_mov_b16_e32 v49.h, v35.h
	v_mov_b16_e32 v42.l, v43.h
	v_add3_u32 v41, v41, v47, 0x7fff
	v_add3_u32 v40, v40, v45, 0x7fff
	v_and_b32_e32 v43, 1, v35
	v_and_b32_e32 v45, 1, v49
	v_mov_b16_e32 v35.l, v36.h
	v_mov_b16_e32 v47.l, v37.h
	v_mov_b16_e32 v47.h, v35.h
	v_mov_b16_e32 v40.l, v41.h
	v_add3_u32 v39, v39, v45, 0x7fff
	v_add3_u32 v38, v38, v43, 0x7fff
	v_and_b32_e32 v41, 1, v35
	v_and_b32_e32 v43, 1, v47
	v_mov_b16_e32 v35.l, v33.h
	v_mov_b16_e32 v45.l, v34.h
	v_mov_b16_e32 v45.h, v35.h
	v_mov_b16_e32 v38.l, v39.h
	v_add3_u32 v37, v37, v43, 0x7fff
	v_add3_u32 v36, v36, v41, 0x7fff
	v_and_b32_e32 v39, 1, v35
	v_and_b32_e32 v41, 1, v45
	v_mov_b16_e32 v35.l, v30.h
	v_mov_b16_e32 v43.l, v31.h
	v_mov_b16_e32 v43.h, v35.h
	v_mov_b16_e32 v36.l, v37.h
	v_add3_u32 v34, v34, v41, 0x7fff
	v_add3_u32 v33, v33, v39, 0x7fff
	v_and_b32_e32 v37, 1, v35
	v_and_b32_e32 v39, 1, v43
	v_mov_b16_e32 v35.l, v29.h
	v_mov_b16_e32 v41.l, v32.h
	v_mov_b16_e32 v41.h, v35.h
	v_mov_b16_e32 v33.l, v34.h
	v_add3_u32 v31, v31, v39, 0x7fff
	v_add3_u32 v30, v30, v37, 0x7fff
	v_and_b32_e32 v34, 1, v35
	v_and_b32_e32 v37, 1, v41
	v_mov_b16_e32 v35.l, v27.h
	v_mov_b16_e32 v39.l, v28.h
	v_mov_b16_e32 v39.h, v35.h
	v_mov_b16_e32 v30.l, v31.h
	v_add3_u32 v31, v32, v37, 0x7fff
	v_and_b32_e32 v32, 1, v35
	v_add3_u32 v29, v29, v34, 0x7fff
	v_mov_b16_e32 v35.l, v25.h
	v_mov_b16_e32 v37.l, v26.h
	v_mov_b16_e32 v37.h, v35.h
	v_add3_u32 v27, v27, v32, 0x7fff
	v_and_b32_e32 v34, 1, v39
	v_mov_b16_e32 v29.l, v31.h
	v_and_b32_e32 v31, 1, v35
	v_mov_b16_e32 v35.l, v23.h
	v_cndmask_b32_e32 v41, v71, v62, vcc_lo
	v_add3_u32 v28, v28, v34, 0x7fff
	v_mov_b16_e32 v34.l, v24.h
	v_mov_b16_e32 v34.h, v35.h
	v_add3_u32 v25, v25, v31, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v27.l, v28.h
	v_and_b32_e32 v32, 1, v37
	v_and_b32_e32 v31, 1, v34
	v_and_b32_e32 v28, 1, v35
	v_mov_b16_e32 v35.l, v20.h
	v_cndmask_b32_e32 v34, v29, v33, vcc_lo
	v_cndmask_b32_e32 v29, v33, v29, vcc_lo
	v_cndmask_b32_e32 v33, v27, v30, vcc_lo
	v_cndmask_b32_e32 v27, v30, v27, vcc_lo
	v_add3_u32 v26, v26, v32, 0x7fff
	v_add3_u32 v24, v24, v31, 0x7fff
	v_mov_b16_e32 v31.l, v18.h
	v_mov_b16_e32 v31.h, v35.h
	v_add3_u32 v23, v23, v28, 0x7fff
	v_mov_b16_e32 v25.l, v26.h
	v_and_b32_e32 v26, 1, v35
	v_mov_b16_e32 v35.l, v17.h
	v_mov_b16_e32 v23.l, v24.h
	v_and_b32_e32 v24, 1, v31
	v_mov_b16_e32 v32.l, v21.h
	v_add3_u32 v20, v20, v26, 0x7fff
	v_and_b32_e32 v26, 1, v35
	v_mov_b16_e32 v32.h, v35.h
	v_add3_u32 v18, v18, v24, 0x7fff
	v_mov_b16_e32 v35.l, v15.h
	v_mov_b16_e32 v24.l, v14.h
	v_add3_u32 v17, v17, v26, 0x7fff
	v_mov_b16_e32 v24.h, v35.h
	v_mov_b16_e32 v17.l, v18.h
	v_and_b32_e32 v28, 1, v32
	v_and_b32_e32 v18, 1, v35
	v_mov_b16_e32 v35.l, v12.h
	v_cndmask_b32_e32 v31, v36, v40, vcc_lo
	v_cndmask_b32_e32 v32, v40, v36, vcc_lo
	v_add3_u32 v21, v21, v28, 0x7fff
	v_mov_b16_e32 v28.l, v16.h
	v_mov_b16_e32 v28.h, v35.h
	v_add3_u32 v15, v15, v18, 0x7fff
	v_and_b32_e32 v18, 1, v35
	v_mov_b16_e32 v20.l, v21.h
	v_mov_b16_e32 v35.l, v11.h
	v_dual_cndmask_b32 v26, v38, v42 :: v_dual_and_b32 v21, 1, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v12, v12, v18, 0x7fff
	v_mov_b16_e32 v18.l, v8.h
	v_mov_b16_e32 v18.h, v35.h
	v_add3_u32 v16, v16, v21, 0x7fff
	v_and_b32_e32 v21, 1, v24
	v_mov_b16_e32 v24.l, v13.h
	v_mov_b16_e32 v16.l, v10.h
	v_cndmask_b32_e32 v28, v42, v38, vcc_lo
	v_mov_b16_e32 v15.l, v16.h
	v_add3_u32 v14, v14, v21, 0x7fff
	v_and_b32_e32 v21, 1, v24
	v_mov_b16_e32 v16.h, v35.h
	v_cndmask_b32_e32 v24, v48, v44, vcc_lo
	v_cndmask_b32_e32 v30, v20, v25, vcc_lo
	v_mov_b16_e32 v12.l, v14.h
	v_and_b32_e32 v14, 1, v35
	v_add3_u32 v13, v13, v21, 0x7fff
	v_mov_b16_e32 v35.l, v9.h
	v_cndmask_b32_e32 v21, v44, v48, vcc_lo
	v_cndmask_b32_e32 v20, v25, v20, vcc_lo
	v_add3_u32 v11, v11, v14, 0x7fff
	v_mov_b16_e32 v11.l, v13.h
	v_and_b32_e32 v14, 1, v16
	v_and_b32_e32 v16, 1, v35
	v_mov_b16_e32 v35.l, v7.h
	v_permlanex16_b32 v25, v41, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v36, v11, v15, vcc_lo
	v_cndmask_b32_e32 v11, v15, v11, vcc_lo
	v_add3_u32 v10, v10, v14, 0x7fff
	v_and_b32_e32 v13, 1, v35
	v_mov_b16_e32 v35.l, v4.h
	v_mov_b16_e32 v14.l, v6.h
	v_mov_b16_e32 v14.h, v35.h
	v_add3_u32 v9, v9, v16, 0x7fff
	v_add3_u32 v7, v7, v13, 0x7fff
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v13.l, v5.h
	v_mov_b16_e32 v13.h, v35.h
	v_mov_b16_e32 v9.l, v10.h
	v_and_b32_e32 v10, 1, v14
	v_add3_u32 v8, v8, v18, 0x7fff
	v_mov_b16_e32 v14.l, v2.h
	v_and_b32_e32 v13, 1, v13
	v_cndmask_b32_e32 v37, v9, v12, vcc_lo
	v_add3_u32 v6, v6, v10, 0x7fff
	v_mov_b16_e32 v7.l, v8.h
	v_and_b32_e32 v8, 1, v35
	v_mov_b16_e32 v35.l, v3.h
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v5, v5, v13, 0x7fff
	v_cndmask_b32_e32 v9, v12, v9, vcc_lo
	v_add3_u32 v4, v4, v8, 0x7fff
	v_and_b32_e32 v10, 1, v35
	v_mov_b16_e32 v35.l, v1.h
	v_mov_b16_e32 v4.l, v6.h
	v_add3_u32 v2, v2, v14, 0x7fff
	v_mov_b32_e32 v12, 0x7632
	v_add3_u32 v3, v3, v10, 0x7fff
	v_and_b32_e32 v6, 1, v35
	v_mov_b16_e32 v3.l, v5.h
	v_cndmask_b32_e32 v10, v58, v54, vcc_lo
	v_cndmask_b32_e32 v14, v56, v52, vcc_lo
	v_cndmask_b32_e32 v5, v60, v64, vcc_lo
	v_add3_u32 v1, v1, v6, 0x7fff
	v_mov_b16_e32 v1.l, v2.h
	v_cndmask_b32_e32 v38, v3, v7, vcc_lo
	v_cndmask_b32_e32 v3, v7, v3, vcc_lo
	v_dual_mov_b32 v7, 0x5410 :: v_dual_cndmask_b32 v6, v64, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v39, v1, v4, vcc_lo
	v_dual_cndmask_b32 v1, v4, v1 :: v_dual_cndmask_b32 v8, v54, v58
	v_cndmask_b32_e32 v4, 0x1054, v7, vcc_lo
	v_cndmask_b32_e32 v7, 0x3276, v12, vcc_lo
	v_cndmask_b32_e32 v13, v52, v56, vcc_lo
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v7, v7, 8, v7
	v_permlanex16_b32 v12, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v18, v50, v46, vcc_lo
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v7, 0x760076, v7
	v_cndmask_b32_e32 v35, v17, v23, vcc_lo
	v_cndmask_b32_e32 v17, v23, v17, vcc_lo
	v_permlanex16_b32 v23, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v7, v7, 4, v7
	v_permlanex16_b32 v32, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v2, v62, v71, vcc_lo
	v_and_b32_e32 v40, 0x5040504, v4
	v_dual_cndmask_b32 v16, v46, v50 :: v_dual_and_b32 v41, 0x7060706, v7
	v_permlanex16_b32 v14, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v28, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v3, v6, v5, v40
	v_perm_b32 v4, v6, v5, v41
	v_perm_b32 v5, v10, v8, v40
	v_perm_b32 v6, v10, v8, v41
	v_perm_b32 v7, v12, v13, v40
	v_perm_b32 v8, v12, v13, v41
	v_perm_b32 v11, v15, v21, v40
	v_perm_b32 v12, v15, v21, v41
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v21, v22, v19, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_permlanex16_b32 v27, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v0, 32, v21
	v_permlanex16_b32 v42, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v25, v2, v40
	v_perm_b32 v2, v25, v2, v41
	v_perm_b32 v9, v14, v16, v40
	v_perm_b32 v10, v14, v16, v41
	v_perm_b32 v13, v18, v26, v40
	v_perm_b32 v14, v18, v26, v41
	v_perm_b32 v25, v27, v33, v40
	v_perm_b32 v26, v27, v33, v41
	v_perm_b32 v27, v20, v30, v40
	v_perm_b32 v28, v20, v30, v41
	v_add_nc_u32_e32 v20, 64, v21
	v_cndmask_b32_e32 v22, 0x80000000, v21, vcc_lo
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_permlanex16_b32 v24, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v29, v17, v35, v40
	v_perm_b32 v30, v17, v35, v41
	v_cndmask_b32_e32 v35, 0x80000000, v20, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[1:4], v22, s[20:23], 0 offen
	buffer_store_b128 v[5:8], v0, s[20:23], 0 offen
	buffer_store_b128 v[9:12], v35, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v21
	v_add_nc_u32_e32 v1, 0x80, v21
	v_add_nc_u32_e32 v2, 0xa0, v21
	v_add_nc_u32_e32 v3, 0xc0, v21
	v_add_nc_u32_e32 v4, 0xe0, v21
	v_perm_b32 v15, v23, v31, v40
	v_perm_b32 v16, v23, v31, v41
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v23, v24, v34, v40
	v_perm_b32 v24, v24, v34, v41
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_perm_b32 v31, v32, v36, v40
	v_perm_b32 v32, v32, v36, v41
	v_perm_b32 v33, v42, v37, v40
	v_perm_b32 v34, v42, v37, v41
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_perm_b32 v17, v43, v38, v40
	v_perm_b32 v18, v43, v38, v41
	v_perm_b32 v19, v44, v39, v40
	v_perm_b32 v20, v44, v39, v41
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[13:16], v0, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v1, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v2, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v3, s[20:23], 0 offen
	buffer_store_b128 v[17:20], v4, s[20:23], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 28
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_sgpr 39
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 28
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27440
; TotalNumSgprs: 41
; NumVgprs: 256
; ScratchSize: 28
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 41
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
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 28
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 6
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
