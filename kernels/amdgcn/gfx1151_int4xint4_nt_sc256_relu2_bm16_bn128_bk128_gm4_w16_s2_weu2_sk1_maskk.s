	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
	v_dual_mov_b32 v71, v0 :: v_dual_mov_b32 v2, 0
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b32 s5, s[0:1], 0x38
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
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
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v22, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s4
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	s_sub_i32 s6, s6, s10
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s8, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s9, s8
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s9, s7, 4
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v19, 15, v71
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s9
	s_xor_b32 s6, s2, s9
	s_cvt_f32_u32 s10, s7
	s_sub_i32 s11, 0, s7
	s_ashr_i32 s6, s6, 31
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v72, 16, v71
	v_rcp_iflag_f32_e32 v0, s10
	v_mov_b32_e32 v66, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v0
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s4, s10, s11
	s_abs_i32 s11, s2
	s_add_i32 s10, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s11, s10
	s_mul_i32 s10, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s10, s11, s10
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
	v_dual_mov_b32 v205, 0 :: v_dual_lshlrev_b32 v2, 3, v71
	v_dual_mov_b32 v172, 0 :: v_dual_lshlrev_b32 v3, 1, v71
	.loc	1 155 39 is_stmt 1              ; generate_amdgcn.py:155:39
	s_lshl_b32 s3, s3, 6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v203, 0 :: v_dual_and_b32 v0, 56, v2
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s0, s5, 31
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s1, s2, 31
.Ltmp15:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v13, s3, v0
	v_dual_mov_b32 v202, 0 :: v_dual_and_b32 v1, 62, v3
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s5, s5, s0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s1, 24
.Ltmp17:
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v4, 3, v71
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s2, s0
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v16, 64, v13
	v_cmp_gt_i32_e64 s0, 0x80, v13
.Ltmp19:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshrrev_b32_e32 v13, 3, v72
	v_or_b32_e32 v14, s3, v1
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s5, s5, 1
	v_lshrrev_b32_e32 v6, 1, v71
	v_dual_mov_b32 v201, 0 :: v_dual_and_b32 v8, 56, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v18, s5, v1
	v_lshl_or_b32 v4, s7, 7, v4
	v_dual_mov_b32 v196, 0 :: v_dual_and_b32 v13, 2, v13
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v17, 64, v14
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v14
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v14, s33, v19
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v5, 5, v71
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s2, 8
	v_dual_mov_b32 v199, 0 :: v_dual_and_b32 v6, 56, v6
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v18, off offset:68
	scratch_store_b32 off, v71, off offset:112
	scratch_store_b32 off, v13, off offset:76
	v_or_b32_e32 v13, 64, v4
	v_mul_lo_u32 v14, s34, v14
	v_dual_mov_b32 v204, 0 :: v_dual_lshlrev_b32 v7, 2, v71
	s_lshl_b32 s8, s7, 8
	s_lshl_b32 s7, s6, 8
	s_lshl_b32 s6, s6, 7
	v_xor_b32_e32 v2, v2, v6
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v5, s33, v5
	v_subrev_nc_u32_e32 v13, s6, v13
	v_subrev_nc_u32_e32 v4, s6, v4
	v_dual_mov_b32 v200, 0 :: v_dual_and_b32 v7, 56, v7
	v_sub_nc_u32_e32 v18, s5, v0
	v_cmp_gt_i32_e64 s1, 0x80, v17
	v_cmp_gt_i32_e64 s2, 0x80, v16
	v_dual_mov_b32 v193, 0 :: v_dual_lshlrev_b32 v166, 1, v14
	v_mad_u64_u32 v[16:17], null, s5, v5, v[1:2]
	v_mad_u64_u32 v[13:14], null, s5, v13, v[0:1]
	v_mad_u64_u32 v[0:1], null, s5, v4, v[0:1]
	v_lshl_or_b32 v7, v19, 6, v7
	v_xor_b32_e32 v3, v3, v8
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b32 off, v18, off offset:72
	scratch_store_b64 off, v[16:17], off offset:80
	scratch_store_b64 off, v[13:14], off offset:88
	v_xor_b32_e32 v6, 8, v7
	v_xor_b32_e32 v8, 16, v7
	scratch_store_b64 off, v[0:1], off offset:96 ; 8-byte Folded Spill
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v0, 0, v3
	v_xor_b32_e32 v9, 24, v7
	v_xor_b32_e32 v10, 32, v7
	v_xor_b32_e32 v11, 40, v7
	v_xor_b32_e32 v12, 48, v7
	v_xor_b32_e32 v15, 56, v7
	s_sub_i32 s35, s8, s7
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v72, off offset:116
	scratch_store_b32 off, v0, off offset:104
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v0, 0, v2
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v178, 0, v7
	v_dual_mov_b32 v181, 0 :: v_dual_add_nc_u32 v180, 0, v6
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v182, 0, v8
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v1, s4
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v183, 0, v9
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v184, 0, v10
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v185, 0, v11
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v186, 0, v12
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v188, 0, v15
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	s_mov_b32 s27, 0x31027000
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_lshl_b32 s36, s23, 1
	s_add_i32 s37, s3, 64
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
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v19, off offset:120
	scratch_store_b32 off, v0, off offset:108
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_clause 0x4                            ; 32-byte Folded Reload
	scratch_load_b64 v[9:10], off, off offset:96
	scratch_load_b32 v17, off, off offset:72
	scratch_load_b64 v[10:11], off, off offset:80
	scratch_load_b32 v0, off, off offset:68
	scratch_load_b64 v[11:12], off, off offset:88
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s4, s37, 64
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v56, off offset:64
	scratch_store_b32 off, v55, off offset:60
	scratch_store_b32 off, v54, off offset:56
	scratch_store_b32 off, v53, off offset:52
	scratch_store_b32 off, v52, off offset:48
	scratch_store_b32 off, v51, off offset:44
	scratch_store_b32 off, v50, off offset:40
	scratch_store_b32 off, v49, off offset:36
	scratch_store_b32 off, v48, off offset:32
	scratch_store_b32 off, v47, off offset:28
	scratch_store_b32 off, v46, off offset:24
	scratch_store_b32 off, v45, off offset:20
	scratch_store_b32 off, v44, off offset:16
	scratch_store_b32 off, v43, off offset:12
	scratch_store_b32 off, v42, off offset:8
	scratch_store_b32 off, v41, off offset:4
	scratch_store_b32 off, v40, off
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s34, s34, -1
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v13, s37, v9
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(3)
	v_cmp_lt_i32_e64 s3, s4, v17
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v14, s37, v10
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(1)
	v_cmp_lt_i32_e64 s4, s4, v0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s37, v11
	.loc	1 164 34 is_stmt 0              ; generate_amdgcn.py:164:34
	v_subrev_nc_u32_e32 v9, 64, v13
	.loc	1 156 26 is_stmt 1              ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, s0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_subrev_nc_u32_e32 v10, 64, v14
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, s4, vcc_lo
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_subrev_nc_u32_e32 v11, 64, v15
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s4, s37, v17
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s37, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v16, v10, s[24:27], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[9:10], v9, s[12:15], 0 offen
	buffer_load_b64 v[11:12], v11, s[12:15], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v106, off, off offset:108
	scratch_load_b32 v105, off, off offset:104
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s37, 0x80
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b64 v106, v[9:10], v[11:12] offset1:8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v14, s3
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s4, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v105, v16 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v10, 0x80000000, v13, s3
	v_cndmask_b32_e64 v11, 0x80000000, v15, s3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v128, v9, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[124:125], v10, s[12:15], 0 offen
	buffer_load_b64 v[126:127], v11, s[12:15], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[108:109], v178 offset:8192
	ds_load_b64 v[110:111], v180 offset:8192
	ds_load_b64 v[112:113], v182 offset:8192
	ds_load_b64 v[114:115], v183 offset:8192
	ds_load_b64 v[116:117], v184 offset:8192
	ds_load_b64 v[118:119], v185 offset:8192
	ds_load_b64 v[120:121], v186 offset:8192
	ds_load_b64 v[122:123], v188 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[214:217], v178 offset1:2
	ds_load_2addr_stride64_b64 v[73:76], v178 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[41:44], v178 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[9:12], v178 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[218:221], v180 offset1:2
	ds_load_2addr_stride64_b64 v[77:80], v180 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[45:48], v180 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[13:16], v180 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[222:225], v182 offset1:2
	ds_load_2addr_stride64_b64 v[81:84], v182 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[49:52], v182 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[17:20], v182 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[226:229], v183 offset1:2
	ds_load_2addr_stride64_b64 v[85:88], v183 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[53:56], v183 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[21:24], v183 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[230:233], v184 offset1:2
	ds_load_2addr_stride64_b64 v[89:92], v184 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[57:60], v184 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[25:28], v184 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[234:237], v185 offset1:2
	ds_load_2addr_stride64_b64 v[93:96], v185 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[61:64], v185 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[29:32], v185 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[238:241], v186 offset1:2
	ds_load_2addr_stride64_b64 v[97:100], v186 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[65:68], v186 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[33:36], v186 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[242:245], v188 offset1:2
	ds_load_2addr_stride64_b64 v[101:104], v188 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[69:72], v188 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[37:40], v188 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(31)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[214:215], v[108:109], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v106, v[124:125], v[126:127] offset1:8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b16 v105, v128 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[218:219], v[110:111], v[206:213] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[250:253], v180 offset1:2
	ds_load_2addr_stride64_b64 v[126:129], v182 offset1:2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[222:223], v[112:113], v[206:213] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[130:133], v183 offset1:2
	ds_load_2addr_stride64_b64 v[138:141], v185 offset1:2
	ds_load_2addr_stride64_b64 v[142:145], v186 offset1:2
	ds_load_2addr_stride64_b64 v[146:149], v188 offset1:2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[226:227], v[114:115], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[230:231], v[116:117], v[206:213] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[124:125], v178 offset:8192
	ds_load_b64 v[222:223], v180 offset:8192
	ds_load_b64 v[226:227], v182 offset:8192
	ds_load_b64 v[230:231], v183 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[246:249], v178 offset1:2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[234:235], v[118:119], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[238:239], v[120:121], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[242:243], v[122:123], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[246:247], v[124:125], v[206:213] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[234:235], v184 offset:8192
	ds_load_b64 v[238:239], v185 offset:8192
	ds_load_b64 v[242:243], v186 offset:8192
	ds_load_b64 v[246:247], v188 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[134:137], v184 offset1:2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[250:251], v[222:223], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[126:127], v[226:227], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[130:131], v[230:231], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[134:135], v[234:235], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[138:139], v[238:239], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[142:143], v[242:243], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[146:147], v[246:247], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v250, v206
	v_cvt_f32_i32_e32 v251, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v163, v208
	v_cvt_f32_i32_e32 v105, v209
	v_cvt_f32_i32_e32 v254, v210
	v_cvt_f32_i32_e32 v255, v211
	v_cvt_f32_i32_e32 v0, v212
	v_cvt_f32_i32_e32 v106, v213
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[216:217], v[108:109], v[1:8] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[214:217], v186 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[220:221], v[110:111], v[206:213] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[218:221], v188 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[224:225], v[112:113], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[228:229], v[114:115], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[232:233], v[116:117], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[236:237], v[118:119], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[240:241], v[120:121], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[244:245], v[122:123], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[248:249], v[124:125], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[252:253], v[222:223], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[128:129], v[226:227], v[206:213] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[126:129], v178 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[132:133], v[230:231], v[206:213] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[130:133], v180 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[136:137], v[234:235], v[206:213] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[134:137], v182 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[140:141], v[238:239], v[206:213] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[138:141], v183 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[144:145], v[242:243], v[206:213] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[142:145], v184 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[148:149], v[246:247], v[206:213] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[146:149], v185 offset0:4 offset1:6
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v224, v206
	v_cvt_f32_i32_e32 v225, v207
	v_cvt_f32_i32_e32 v228, v208
	v_cvt_f32_i32_e32 v229, v209
	v_cvt_f32_i32_e32 v232, v210
	v_cvt_f32_i32_e32 v233, v211
	v_cvt_f32_i32_e32 v236, v212
	v_cvt_f32_i32_e32 v237, v213
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[73:74], v[108:109], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[77:78], v[110:111], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[81:82], v[112:113], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[85:86], v[114:115], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[89:90], v[116:117], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[93:94], v[118:119], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[97:98], v[120:121], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[101:102], v[122:123], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[126:127], v[124:125], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[130:131], v[222:223], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[134:135], v[226:227], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[138:139], v[230:231], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[142:143], v[234:235], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[146:147], v[238:239], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[214:215], v[242:243], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[218:219], v[246:247], v[206:213] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v134, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v135, v207
	v_cvt_f32_i32_e32 v138, v208
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v139, v209
	v_cvt_f32_i32_e32 v142, v210
	v_cvt_f32_i32_e32 v143, v211
	v_cvt_f32_i32_e32 v146, v212
	v_cvt_f32_i32_e32 v147, v213
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[75:76], v[108:109], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[79:80], v[110:111], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[41:42], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[206:213], v[83:84], v[112:113], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[45:46], v[110:111], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[81:84], v178 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[87:88], v[114:115], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[49:50], v[112:113], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[85:88], v180 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[91:92], v[116:117], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[53:54], v[114:115], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[89:92], v182 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[95:96], v[118:119], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[57:58], v[116:117], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[93:96], v183 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[99:100], v[120:121], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[61:62], v[118:119], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[97:100], v184 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[103:104], v[122:123], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[65:66], v[120:121], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[101:104], v185 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[128:129], v[124:125], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[69:70], v[122:123], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[126:129], v186 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[132:133], v[222:223], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[81:82], v[124:125], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[130:133], v188 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[206:213], v[136:137], v[226:227], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[85:86], v[222:223], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[140:141], v[230:231], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[89:90], v[226:227], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[144:145], v[234:235], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[93:94], v[230:231], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[148:149], v[238:239], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[97:98], v[234:235], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[216:217], v[242:243], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[101:102], v[238:239], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[220:221], v[246:247], v[206:213] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[126:127], v[242:243], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v136, v206
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[130:131], v[246:247], v[73:80] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v137, v207
	v_cvt_f32_i32_e32 v140, v208
	v_cvt_f32_i32_e32 v141, v209
	v_cvt_f32_i32_e32 v144, v210
	v_cvt_f32_i32_e32 v89, v73
	v_cvt_f32_i32_e32 v90, v74
	v_cvt_f32_i32_e32 v93, v75
	v_cvt_f32_i32_e32 v94, v76
	v_cvt_f32_i32_e32 v97, v77
	v_cvt_f32_i32_e32 v98, v78
	v_cvt_f32_i32_e32 v101, v79
	v_cvt_f32_i32_e32 v102, v80
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[43:44], v[108:109], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v145, v211
	v_cvt_f32_i32_e32 v148, v212
	v_cvt_f32_i32_e32 v149, v213
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[47:48], v[110:111], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[51:52], v[112:113], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[55:56], v[114:115], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[59:60], v[116:117], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[13:14], v[110:111], v[49:56] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[57:60], v178 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[63:64], v[118:119], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[17:18], v[112:113], v[49:56] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[61:64], v180 offset0:12 offset1:14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v18, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[67:68], v[120:121], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[21:22], v[114:115], v[49:56] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[65:68], v182 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[71:72], v[122:123], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[25:26], v[116:117], v[49:56] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[69:72], v183 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[83:84], v[124:125], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[29:30], v[118:119], v[49:56] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[81:84], v186 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[87:88], v[222:223], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[33:34], v[120:121], v[49:56] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[85:88], v188 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[91:92], v[226:227], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[37:38], v[122:123], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[95:96], v[230:231], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[124:125], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[99:100], v[234:235], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[61:62], v[222:223], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[103:104], v[238:239], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[226:227], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[128:129], v[242:243], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[230:231], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[132:133], v[246:247], v[73:80] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v48, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v47, v74
	v_cvt_f32_i32_e32 v46, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v45, v76
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[73:76], v184 offset0:12 offset1:14
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v44, v77
	v_cvt_f32_i32_e32 v43, v78
	v_cvt_f32_i32_e32 v42, v79
	v_cvt_f32_i32_e32 v41, v80
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[77:80], v185 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[73:74], v[234:235], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[77:78], v[238:239], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[242:243], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[85:86], v[246:247], v[49:56] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v34, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v33, v50
	v_cvt_f32_i32_e32 v30, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v29, v52
	v_cvt_f32_i32_e32 v26, v53
	v_cvt_f32_i32_e32 v25, v54
	v_cvt_f32_i32_e32 v22, v55
	v_cvt_f32_i32_e32 v21, v56
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[49:56], v[11:12], v[108:109], v[1:8] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v11, v166, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v166, 2, v166
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[49:56], v[15:16], v[110:111], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[19:20], v[112:113], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[23:24], v[114:115], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[27:28], v[116:117], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[31:32], v[118:119], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[35:36], v[120:121], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[39:40], v[122:123], v[49:56] neg_lo:[1,1,0]
	scratch_load_b32 v40, off, off          ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[49:56], v[59:60], v[124:125], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[63:64], v[222:223], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[67:68], v[226:227], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[71:72], v[230:231], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[75:76], v[234:235], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[79:80], v[238:239], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[83:84], v[242:243], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[87:88], v[246:247], v[49:56] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v56
	scratch_load_b32 v56, off, off offset:64 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v17, v49
	scratch_load_b32 v49, off, off offset:36 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v16, v50
	scratch_load_b32 v50, off, off offset:40 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v15, v51
	scratch_load_b32 v51, off, off offset:44 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v14, v52
	scratch_load_b32 v52, off, off offset:48 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v13, v53
	scratch_load_b32 v53, off, off offset:52 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v12, v54
	scratch_load_b32 v54, off, off offset:56 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v10, v55
	scratch_load_b32 v55, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v18, s35, v18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s35, s35, s36
	s_cmp_lg_u32 s34, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v19, v18, s[16:19], 0 offen
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:4
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:8
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:12
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:16
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:20
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:24
	buffer_load_u16 v32, v18, s[16:19], 0 offen offset:28
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v35, v250, v11
	v_mul_f32_e32 v0, v0, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v172, v35, v19 :: v_dual_lshlrev_b32 v19, 16, v20
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v251, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v205, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v19, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v163, v11
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v204, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v105, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v203, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v19, 16, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v254, v11
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v202, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v255, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v201, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v200, v0, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v19, v106, v11 :: v_dual_lshlrev_b32 v0, 16, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v32, v224, v11 :: v_dual_fmac_f32 v199, v19, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v18, s[16:19], 0 offen offset:32
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:36
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:40
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:44
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:48
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:52
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:56
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:60
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v198, v32, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v225, v11
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v197, v19, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v19, v228, v11 :: v_dual_lshlrev_b32 v0, 16, v20
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v196, v19, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v229, v11
	v_mul_f32_e32 v32, v134, v11
	v_mul_f32_e32 v10, v10, v11
	v_mul_f32_e32 v17, v17, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v195, v19, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v19, v232, v11 :: v_dual_lshlrev_b32 v0, 16, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v194, v19, v0 :: v_dual_mul_f32 v19, v233, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v193, v19, v0
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v19, v236, v11 :: v_dual_lshlrev_b32 v0, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v192, v19, v0 :: v_dual_mul_f32 v19, v237, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v191, v19, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v18, s[16:19], 0 offen offset:64
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:68
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:72
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:76
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:80
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:84
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:88
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:92
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v190, v32, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v135, v11
	v_dual_mul_f32 v32, v136, v11 :: v_dual_fmac_f32 v189, v19, v0
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v19, v138, v11 :: v_dual_lshlrev_b32 v0, 16, v20
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v187, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v139, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v181, v19, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v19, v142, v11 :: v_dual_lshlrev_b32 v0, 16, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v179, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v143, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v177, v19, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v19, v146, v11 :: v_dual_lshlrev_b32 v0, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v175, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v31
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v147, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v173, v19, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v18, s[16:19], 0 offen offset:96
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:100
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:104
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:108
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:112
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:116
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:120
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:124
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v171, v32, v0 :: v_dual_lshlrev_b32 v0, 16, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v137, v11
	v_mul_f32_e32 v32, v89, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v170, v19, v0 :: v_dual_mul_f32 v19, v140, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v0, 16, v20
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v169, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v23
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v141, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v168, v19, v0 :: v_dual_mul_f32 v19, v144, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v167, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v27
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v145, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v165, v19, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v19, v148, v11 :: v_dual_lshlrev_b32 v0, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v164, v19, v0 :: v_dual_mul_f32 v19, v149, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v162, v19, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v18, s[16:19], 0 offen offset:128
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:132
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:136
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:140
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:144
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:148
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:152
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:156
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v161, v32, v0 :: v_dual_lshlrev_b32 v0, 16, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v90, v11
	v_mul_f32_e32 v32, v48, v11
	scratch_load_b32 v48, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v160, v19, v0 :: v_dual_mul_f32 v19, v93, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v20
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v159, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v23
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v94, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v158, v19, v0 :: v_dual_mul_f32 v19, v97, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 16, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v157, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v27
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v98, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v156, v19, v0 :: v_dual_mul_f32 v19, v101, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v0, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v155, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v31
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v102, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v154, v19, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v18, s[16:19], 0 offen offset:160
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:164
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:168
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:172
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:176
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:180
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:184
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:188
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v153, v32, v0 :: v_dual_lshlrev_b32 v0, 16, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v47, v11
	v_mul_f32_e32 v32, v34, v11
	scratch_load_b32 v47, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v152, v19, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v19, v46, v11 :: v_dual_lshlrev_b32 v0, 16, v20
	scratch_load_b32 v46, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v151, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v45, v11
	scratch_load_b32 v45, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v150, v19, v0 :: v_dual_mul_f32 v19, v44, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v24
	scratch_load_b32 v44, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v176, v19, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v0, 16, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v43, v11
	scratch_load_b32 v43, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v174, v19, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v19, v42, v11 :: v_dual_lshlrev_b32 v0, 16, v28
	scratch_load_b32 v42, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v107, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v31
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v41, v11
	scratch_load_b32 v41, off, off offset:4 ; 4-byte Folded Reload
	v_mul_f32_e32 v12, v12, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v56, v19, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v18, s[16:19], 0 offen offset:192
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:196
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:200
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:204
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:208
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:212
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:216
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:220
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v55, v32, v0 :: v_dual_lshlrev_b32 v0, 16, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v33, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v54, v19, v0 :: v_dual_mul_f32 v19, v30, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v0, 16, v20
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v53, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v23
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v29, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v52, v19, v0 :: v_dual_mul_f32 v19, v26, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v51, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v27
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v25, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v50, v19, v0 :: v_dual_mul_f32 v19, v22, v11
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v49, v19, v0 :: v_dual_lshlrev_b32 v0, 16, v31
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v21, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v48, v19, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v0, v18, s[16:19], 0 offen offset:224
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:228
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:232
	buffer_load_u16 v21, v18, s[16:19], 0 offen offset:236
	buffer_load_u16 v22, v18, s[16:19], 0 offen offset:240
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:244
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:248
	buffer_load_u16 v18, v18, s[16:19], 0 offen offset:252
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v15, v15, v11
	v_mul_f32_e32 v16, v16, v11
	v_mul_f32_e32 v13, v13, v11
	v_mul_f32_e32 v14, v14, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v47, v17, v0 :: v_dual_lshlrev_b32 v0, 16, v19
	v_fmac_f32_e32 v46, v16, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v0, 16, v20
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v45, v15, v0 :: v_dual_lshlrev_b32 v0, 16, v21
	v_fmac_f32_e32 v44, v14, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v22
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v43, v13, v0 :: v_dual_lshlrev_b32 v0, 16, v23
	v_fmac_f32_e32 v42, v12, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v41, v10, v0 :: v_dual_mul_f32 v0, v9, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v18
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v40, v0, v9
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v34, v159, v159 :: v_dual_max_f32 v35, v158, v158
	v_dual_max_f32 v36, v157, v157 :: v_dual_max_f32 v37, v156, v156
	v_max_f32_e32 v38, v155, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v68, 0, v34 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v69, 0, v36 :: v_dual_max_f32 v70, 0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v71, 0, v38
	v_dual_max_f32 v34, v154, v154 :: v_dual_max_f32 v37, v152, v152
	v_dual_max_f32 v36, v153, v153 :: v_dual_max_f32 v39, v150, v150
	v_max_f32_e32 v38, v151, v151
	v_max_f32_e32 v72, 0, v34
	v_max_f32_e32 v34, v176, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v73, 0, v36 :: v_dual_max_f32 v74, 0, v37
	v_dual_max_f32 v75, 0, v38 :: v_dual_max_f32 v76, 0, v39
	v_dual_max_f32 v37, v107, v107 :: v_dual_max_f32 v36, v174, v174
	v_dual_max_f32 v39, v55, v55 :: v_dual_max_f32 v38, v56, v56
	v_dual_max_f32 v16, v190, v190 :: v_dual_max_f32 v17, v189, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v79, 0, v37 :: v_dual_max_f32 v78, 0, v36
	v_dual_max_f32 v81, 0, v39 :: v_dual_max_f32 v80, 0, v38
	v_dual_max_f32 v37, v52, v52 :: v_dual_max_f32 v38, v51, v51
	v_max_f32_e32 v39, v50, v50
	v_dual_max_f32 v4, v202, v202 :: v_dual_max_f32 v5, v201, v201
	v_max_f32_e32 v8, v198, v198
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v19, v181, v181
	v_dual_max_f32 v24, v171, v171 :: v_dual_max_f32 v25, v170, v170
	v_dual_max_f32 v26, v169, v169 :: v_dual_max_f32 v27, v168, v168
	v_dual_max_f32 v28, v167, v167 :: v_dual_max_f32 v77, 0, v34
	v_dual_max_f32 v86, 0, v39 :: v_dual_max_f32 v39, v45, v45
	v_dual_max_f32 v36, v53, v53 :: v_dual_max_f32 v85, 0, v38
	v_dual_max_f32 v34, v54, v54 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v11, v195, v195
	v_dual_max_f32 v10, v196, v196 :: v_dual_max_f32 v13, v193, v193
	v_dual_max_f32 v18, v187, v187 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v20, v179, v179 :: v_dual_max_f32 v23, v173, v173
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v24, 0, v24
	v_max_f32_e32 v27, 0, v27
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v29, v165, v165 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v31, v162, v162 :: v_dual_max_f32 v30, v164, v164
	v_dual_max_f32 v83, 0, v36 :: v_dual_max_f32 v82, 0, v34
	v_dual_max_f32 v34, v49, v49 :: v_dual_max_f32 v91, 0, v39
	v_dual_max_f32 v84, 0, v37 :: v_dual_max_f32 v37, v47, v47
	v_dual_max_f32 v38, v46, v46 :: v_dual_max_f32 v39, v40, v40
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v36, v48, v48 :: v_dual_max_f32 v89, 0, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v96, 0, v39 :: v_dual_mul_f32 v57, v10, v10
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v50, v17, v17 :: v_dual_mul_f32 v39, v28, v28
	v_mul_f32_e32 v48, v19, v19
	v_dual_mul_f32 v40, v27, v27 :: v_dual_mul_f32 v27, v72, v72
	v_mul_f32_e32 v28, v71, v71
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v71, off, off offset:112
	scratch_load_b32 v72, off, off offset:116
	scratch_load_b32 v19, off, off offset:120
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v0, v172, v172 :: v_dual_max_f32 v1, v205, v205
	v_dual_max_f32 v2, v204, v204 :: v_dual_max_f32 v3, v203, v203
	v_dual_max_f32 v6, v200, v200 :: v_dual_max_f32 v7, v199, v199
	v_max_f32_e32 v4, 0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v9, v197, v197
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v12, v194, v194
	v_dual_max_f32 v14, v192, v192 :: v_dual_max_f32 v15, v191, v191
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v21, v177, v177
	v_max_f32_e32 v22, v175, v175
	v_dual_max_f32 v32, v161, v161 :: v_dual_max_f32 v33, v160, v160
	v_max_f32_e32 v87, 0, v34
	v_max_f32_e32 v90, 0, v38
	v_dual_max_f32 v34, v44, v44 :: v_dual_mul_f32 v67, v1, v1
	v_dual_max_f32 v37, v42, v42 :: v_dual_max_f32 v38, v41, v41
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v63, v4, v4
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v88, 0, v36
	v_dual_max_f32 v36, v43, v43 :: v_dual_mul_f32 v65, v2, v2
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_max_f32_e32 v15, 0, v15
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v92, 0, v34
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v59, v8, v8
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v93, 0, v36 :: v_dual_max_f32 v94, 0, v37
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v61, v6, v6
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v95, 0, v38 :: v_dual_mul_f32 v66, v0, v0
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v53, v14, v14 :: v_dual_mul_f32 v64, v3, v3
	v_dual_mul_f32 v55, v12, v12 :: v_dual_mul_f32 v62, v5, v5
	v_dual_mul_f32 v51, v16, v16 :: v_dual_mul_f32 v60, v7, v7
	v_dual_mul_f32 v49, v18, v18 :: v_dual_mul_f32 v58, v9, v9
	v_dual_mul_f32 v47, v20, v20 :: v_dual_mul_f32 v56, v11, v11
	v_dual_mul_f32 v45, v22, v22 :: v_dual_mul_f32 v54, v13, v13
	v_dual_mul_f32 v43, v24, v24 :: v_dual_mul_f32 v52, v15, v15
	v_dual_mul_f32 v41, v26, v26 :: v_dual_mul_f32 v46, v21, v21
	v_dual_mul_f32 v44, v23, v23 :: v_dual_mul_f32 v33, v33, v33
	v_mul_f32_e32 v42, v25, v25
	v_dual_mul_f32 v38, v29, v29 :: v_dual_mul_f32 v25, v74, v74
	v_dual_mul_f32 v37, v30, v30 :: v_dual_mul_f32 v36, v31, v31
	v_dual_mul_f32 v21, v77, v77 :: v_dual_mul_f32 v34, v32, v32
	v_dual_mul_f32 v15, v82, v82 :: v_dual_mul_f32 v30, v68, v68
	v_mul_f32_e32 v13, v85, v85
	v_dual_mul_f32 v29, v35, v35 :: v_dual_mul_f32 v32, v69, v69
	v_mul_f32_e32 v17, v80, v80
	v_dual_mul_f32 v31, v70, v70 :: v_dual_mul_f32 v26, v73, v73
	v_dual_mul_f32 v9, v88, v88 :: v_dual_mul_f32 v24, v75, v75
	v_dual_mul_f32 v7, v90, v90 :: v_dual_mul_f32 v22, v76, v76
	v_dual_mul_f32 v5, v93, v93 :: v_dual_mul_f32 v20, v78, v78
	v_dual_mul_f32 v3, v92, v92 :: v_dual_mul_f32 v18, v79, v79
	v_dual_mul_f32 v1, v96, v96 :: v_dual_mul_f32 v16, v81, v81
	v_mul_f32_e32 v14, v83, v83
	v_dual_mul_f32 v12, v84, v84 :: v_dual_mul_f32 v11, v86, v86
	v_mul_f32_e32 v10, v87, v87
	v_mul_f32_e32 v8, v89, v89
	v_mul_f32_e32 v6, v91, v91
	v_mul_f32_e32 v4, v94, v94
	v_mul_f32_e32 v2, v95, v95
.LBB0_4:                                ; %._crit_edge
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v35.h, 0
	v_mov_b16_e32 v23.l, v66.h
	v_mov_b16_e32 v35.l, v67.h
	s_waitcnt vmcnt(1)
	v_cmp_eq_u32_e32 vcc_lo, 0, v72
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v0, s23, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.h, v35.h
	v_mov_b16_e32 v68.l, v65.h
	v_and_b32_e32 v69, 1, v35
	v_mov_b16_e32 v35.l, v64.h
	v_mov_b16_e32 v68.h, v35.h
	v_and_b32_e32 v70, 1, v23
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	s_lshl_b32 s0, s22, 7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s23
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v19, 1, v72
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v23, s33, s0, v0
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_add3_u32 v66, v66, v70, 0x7fff
	v_add3_u32 v0, v67, v69, 0x7fff
	v_and_b32_e32 v68, 1, v68
	v_mov_b16_e32 v69.l, v63.h
	v_mov_b16_e32 v69.h, v35.h
	v_mov_b16_e32 v0.l, v66.h
	v_and_b32_e32 v67, 1, v35
	v_mov_b16_e32 v35.l, v62.h
	v_add3_u32 v65, v65, v68, 0x7fff
	v_mov_b16_e32 v68.l, v61.h
	v_mov_b16_e32 v68.h, v35.h
	v_add3_u32 v64, v64, v67, 0x7fff
	v_and_b32_e32 v66, 1, v35
	v_mov_b16_e32 v35.l, v60.h
	v_mov_b16_e32 v64.l, v65.h
	s_mov_b32 s0, 0x76543210
	s_and_b32 s21, s21, 0xffff
	v_add3_u32 v62, v62, v66, 0x7fff
	v_and_b32_e32 v66, 1, v68
	v_and_b32_e32 v65, 1, v35
	v_mov_b16_e32 v35.l, v58.h
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_add3_u32 v61, v61, v66, 0x7fff
	v_add3_u32 v60, v60, v65, 0x7fff
	v_mov_b16_e32 v66.l, v57.h
	v_mov_b16_e32 v66.h, v35.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v60.l, v61.h
	v_and_b32_e32 v67, 1, v69
	v_add3_u32 v63, v63, v67, 0x7fff
	v_mov_b16_e32 v67.l, v59.h
	v_mov_b16_e32 v67.h, v35.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v62.l, v63.h
	v_and_b32_e32 v63, 1, v35
	v_mov_b16_e32 v35.l, v56.h
	v_add3_u32 v58, v58, v63, 0x7fff
	v_and_b32_e32 v63, 1, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v61, 1, v35
	v_mov_b16_e32 v35.l, v54.h
	v_add3_u32 v57, v57, v63, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v56, v56, v61, 0x7fff
	v_mov_b16_e32 v63.l, v53.h
	v_mov_b16_e32 v63.h, v35.h
	v_mov_b16_e32 v56.l, v57.h
	v_and_b32_e32 v65, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v59, v59, v65, 0x7fff
	v_mov_b16_e32 v65.l, v55.h
	v_mov_b16_e32 v65.h, v35.h
	v_mov_b16_e32 v58.l, v59.h
	v_and_b32_e32 v59, 1, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v61, 1, v65
	v_mov_b16_e32 v35.l, v52.h
	v_add3_u32 v54, v54, v59, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v55, v55, v61, 0x7fff
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
	v_mov_b16_e32 v35.l, v29.h
	v_mov_b16_e32 v43.l, v30.h
	v_mov_b16_e32 v43.h, v35.h
	v_mov_b16_e32 v36.l, v37.h
	v_add3_u32 v34, v34, v41, 0x7fff
	v_add3_u32 v33, v33, v39, 0x7fff
	v_and_b32_e32 v37, 1, v35
	v_and_b32_e32 v39, 1, v43
	v_mov_b16_e32 v35.l, v31.h
	v_mov_b16_e32 v41.l, v32.h
	v_mov_b16_e32 v41.h, v35.h
	v_mov_b16_e32 v33.l, v34.h
	v_add3_u32 v30, v30, v39, 0x7fff
	v_and_b32_e32 v34, 1, v35
	v_mov_b16_e32 v39.l, v28.h
	v_mov_b16_e32 v39.h, v35.h
	v_add3_u32 v29, v29, v37, 0x7fff
	v_and_b32_e32 v37, 1, v41
	v_mov_b16_e32 v35.l, v27.h
	v_add3_u32 v31, v31, v34, 0x7fff
	v_and_b32_e32 v34, 1, v39
	v_mov_b16_e32 v29.l, v30.h
	v_add3_u32 v30, v32, v37, 0x7fff
	v_and_b32_e32 v32, 1, v35
	v_mov_b16_e32 v35.l, v25.h
	v_mov_b16_e32 v37.l, v26.h
	v_mov_b16_e32 v37.h, v35.h
	v_add3_u32 v28, v28, v34, 0x7fff
	v_mov_b16_e32 v31.l, v30.h
	v_add3_u32 v27, v27, v32, 0x7fff
	v_and_b32_e32 v30, 1, v35
	v_mov_b16_e32 v34.l, v24.h
	v_mov_b16_e32 v34.h, v35.h
	v_mov_b16_e32 v35.l, v22.h
	v_mov_b16_e32 v27.l, v28.h
	v_and_b32_e32 v32, 1, v37
	v_add3_u32 v25, v25, v30, 0x7fff
	v_and_b32_e32 v30, 1, v34
	v_and_b32_e32 v28, 1, v35
	v_dual_cndmask_b32 v34, v31, v33 :: v_dual_cndmask_b32 v31, v33, v31
	v_cndmask_b32_e32 v33, v27, v29, vcc_lo
	v_cndmask_b32_e32 v27, v29, v27, vcc_lo
	v_add3_u32 v26, v26, v32, 0x7fff
	v_mov_b16_e32 v32.l, v21.h
	v_mov_b16_e32 v32.h, v35.h
	v_mov_b16_e32 v35.l, v20.h
	v_add3_u32 v24, v24, v30, 0x7fff
	v_mov_b16_e32 v30.l, v18.h
	v_mov_b16_e32 v30.h, v35.h
	v_add3_u32 v22, v22, v28, 0x7fff
	v_and_b32_e32 v28, 1, v32
	v_mov_b16_e32 v25.l, v26.h
	v_and_b32_e32 v26, 1, v35
	v_mov_b16_e32 v35.l, v17.h
	v_mov_b16_e32 v22.l, v24.h
	v_and_b32_e32 v24, 1, v30
	v_add3_u32 v21, v21, v28, 0x7fff
	v_mov_b16_e32 v28.l, v16.h
	v_mov_b16_e32 v28.h, v35.h
	v_add3_u32 v20, v20, v26, 0x7fff
	v_and_b32_e32 v26, 1, v35
	v_add3_u32 v18, v18, v24, 0x7fff
	v_mov_b16_e32 v35.l, v15.h
	v_mov_b16_e32 v20.l, v21.h
	v_and_b32_e32 v21, 1, v28
	v_mov_b16_e32 v24.l, v14.h
	v_mov_b16_e32 v24.h, v35.h
	v_add3_u32 v17, v17, v26, 0x7fff
	v_mov_b16_e32 v17.l, v18.h
	v_and_b32_e32 v18, 1, v35
	v_mov_b16_e32 v35.l, v12.h
	v_add3_u32 v16, v16, v21, 0x7fff
	v_and_b32_e32 v21, 1, v24
	v_mov_b16_e32 v24.l, v13.h
	v_add3_u32 v15, v15, v18, 0x7fff
	v_and_b32_e32 v18, 1, v35
	v_mov_b16_e32 v35.l, v11.h
	v_add3_u32 v14, v14, v21, 0x7fff
	v_and_b32_e32 v21, 1, v24
	v_mov_b16_e32 v15.l, v16.h
	v_add3_u32 v12, v12, v18, 0x7fff
	v_mov_b16_e32 v16.l, v10.h
	v_mov_b16_e32 v12.l, v14.h
	v_and_b32_e32 v14, 1, v35
	v_mov_b16_e32 v16.h, v35.h
	v_mov_b16_e32 v35.l, v9.h
	v_mov_b16_e32 v18.l, v8.h
	v_mov_b16_e32 v18.h, v35.h
	v_add3_u32 v13, v13, v21, 0x7fff
	v_add3_u32 v11, v11, v14, 0x7fff
	v_and_b32_e32 v14, 1, v16
	v_and_b32_e32 v16, 1, v35
	v_mov_b16_e32 v35.l, v7.h
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v11.l, v13.h
	v_add3_u32 v10, v10, v14, 0x7fff
	v_mov_b16_e32 v14.l, v6.h
	v_and_b32_e32 v13, 1, v35
	v_add3_u32 v8, v8, v18, 0x7fff
	v_mov_b16_e32 v35.l, v3.h
	v_mov_b16_e32 v14.h, v35.h
	v_add3_u32 v9, v9, v16, 0x7fff
	v_add3_u32 v7, v7, v13, 0x7fff
	v_mov_b16_e32 v13.l, v5.h
	v_mov_b16_e32 v13.h, v35.h
	v_mov_b16_e32 v9.l, v10.h
	v_mov_b16_e32 v7.l, v8.h
	v_and_b32_e32 v8, 1, v35
	v_and_b32_e32 v10, 1, v14
	v_mov_b16_e32 v35.l, v4.h
	v_mov_b16_e32 v14.l, v2.h
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v3, v3, v8, 0x7fff
	v_add3_u32 v6, v6, v10, 0x7fff
	v_and_b32_e32 v10, 1, v35
	v_mov_b16_e32 v35.l, v1.h
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v5, v5, v13, 0x7fff
	v_mov_b16_e32 v3.l, v6.h
	v_add3_u32 v4, v4, v10, 0x7fff
	v_and_b32_e32 v6, 1, v35
	v_add3_u32 v2, v2, v14, 0x7fff
	v_mov_b16_e32 v4.l, v5.h
	v_cndmask_b32_e32 v30, v36, v40, vcc_lo
	v_cndmask_b32_e32 v32, v40, v36, vcc_lo
	v_add3_u32 v1, v1, v6, 0x7fff
	v_mov_b16_e32 v1.l, v2.h
	v_cndmask_b32_e32 v2, v62, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v62, vcc_lo
	v_dual_cndmask_b32 v36, v9, v12 :: v_dual_cndmask_b32 v9, v12, v9
	v_dual_cndmask_b32 v37, v4, v7 :: v_dual_cndmask_b32 v4, v7, v4
	v_mov_b32_e32 v7, 0x5410
	v_mov_b32_e32 v12, 0x7632
	v_cndmask_b32_e32 v26, v38, v42, vcc_lo
	v_cndmask_b32_e32 v28, v42, v38, vcc_lo
	v_dual_cndmask_b32 v38, v1, v3 :: v_dual_cndmask_b32 v1, v3, v1
	v_permlanex16_b32 v3, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v0, 0x1054, v7, vcc_lo
	v_cndmask_b32_e32 v7, 0x3276, v12, vcc_lo
	v_dual_cndmask_b32 v29, v20, v25 :: v_dual_cndmask_b32 v20, v25, v20
	v_cndmask_b32_e32 v6, v64, v60, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v7, v7, 8, v7
	v_cndmask_b32_e32 v10, v58, v54, vcc_lo
	v_cndmask_b32_e32 v24, v48, v44, vcc_lo
	v_cndmask_b32_e32 v14, v56, v52, vcc_lo
	v_and_b32_e32 v0, 0x540054, v0
	v_dual_cndmask_b32 v18, v50, v46 :: v_dual_and_b32 v7, 0x760076, v7
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v5, v60, v64, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v7, v7, 4, v7
	v_dual_cndmask_b32 v8, v54, v58 :: v_dual_cndmask_b32 v21, v44, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v35, v17, v22 :: v_dual_and_b32 v40, 0x5040504, v0
	v_and_b32_e32 v41, 0x7060706, v7
	v_dual_cndmask_b32 v17, v22, v17 :: v_dual_cndmask_b32 v22, v11, v15
	v_cndmask_b32_e32 v11, v15, v11, vcc_lo
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v28, v20, v29, v40
	v_perm_b32 v29, v20, v29, v41
	v_and_b32_e32 v20, 0x1e0, v71
	v_permlanex16_b32 v39, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v3, v2, v40
	v_perm_b32 v1, v3, v2, v41
	v_perm_b32 v2, v6, v5, v40
	v_perm_b32 v3, v6, v5, v41
	v_perm_b32 v4, v10, v8, v40
	v_perm_b32 v5, v10, v8, v41
	v_perm_b32 v10, v15, v21, v40
	v_perm_b32 v11, v15, v21, v41
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v21, v23, v19, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_cndmask_b32 v13, v52, v56 :: v_dual_cndmask_b32 v16, v46, v50
	v_permlanex16_b32 v27, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v19, 32, v21
	v_add_nc_u32_e32 v20, 64, v21
	v_permlanex16_b32 v24, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v12, v13, v40
	v_perm_b32 v7, v12, v13, v41
	v_perm_b32 v12, v18, v26, v40
	v_perm_b32 v13, v18, v26, v41
	v_perm_b32 v26, v27, v33, v40
	v_perm_b32 v27, v27, v33, v41
	v_perm_b32 v32, v39, v22, v40
	v_perm_b32 v33, v39, v22, v41
	v_dual_cndmask_b32 v22, 0x80000000, v21 :: v_dual_cndmask_b32 v23, 0x80000000, v19
	v_permlanex16_b32 v42, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v8, v14, v16, v40
	v_perm_b32 v9, v14, v16, v41
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[0:3], v22, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v23, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v20, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v21
	v_permlanex16_b32 v25, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v1, 0x80, v21
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v2, 0xa0, v21
	v_add_nc_u32_e32 v3, 0xc0, v21
	v_add_nc_u32_e32 v4, 0xe0, v21
	v_perm_b32 v14, v24, v30, v40
	v_perm_b32 v15, v24, v30, v41
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v24, v25, v34, v40
	v_perm_b32 v25, v25, v34, v41
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_perm_b32 v30, v17, v35, v40
	v_perm_b32 v31, v17, v35, v41
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_perm_b32 v34, v42, v36, v40
	v_perm_b32 v35, v42, v36, v41
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_perm_b32 v16, v43, v37, v40
	v_perm_b32 v17, v43, v37, v41
	v_perm_b32 v18, v44, v38, v40
	v_perm_b32 v19, v44, v38, v41
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[20:23], 0 offen
	buffer_store_b128 v[24:27], v1, s[20:23], 0 offen
	buffer_store_b128 v[28:31], v2, s[20:23], 0 offen
	buffer_store_b128 v[32:35], v3, s[20:23], 0 offen
	buffer_store_b128 v[16:19], v4, s[20:23], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 128
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
		.amdhsa_next_free_sgpr 38
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 128
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9480
; TotalNumSgprs: 40
; NumVgprs: 256
; ScratchSize: 128
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 40
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 128
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 31
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
