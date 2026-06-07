	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
	s_load_b32 s5, s[0:1], 0x38
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
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
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s4
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v148, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v100, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v168, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v108, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v172, 0
	s_sub_i32 s6, s6, s10
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
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
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s9
	s_xor_b32 s6, s2, s9
	s_cvt_f32_u32 s10, s7
	s_sub_i32 s11, 0, s7
	s_ashr_i32 s6, s6, 31
	v_mov_b32_e32 v126, 0
	v_rcp_iflag_f32_e32 v1, s10
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v76, 15, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s10, v1
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v180, 0 :: v_dual_and_b32 v81, 16, v0
	s_mul_f32 s10, s10, 0x4f7ffffe
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v128, 0
	s_cvt_u32_f32 s10, s10
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v182, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	s_mul_hi_u32 s4, s10, s11
	s_abs_i32 s11, s2
	s_add_i32 s10, s10, s4
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	s_mul_hi_u32 s4, s11, s10
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v188, 0
	s_mul_i32 s10, s4, s7
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	s_sub_i32 s10, s11, s10
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s10, s7
	s_cmp_ge_u32 s10, s7
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v190, 0
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s10, s7
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v130, 0
	s_cselect_b32 s4, s11, s4
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v196, 0
	s_xor_b32 s7, s4, s6
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v134, 0
	s_sub_i32 s33, s7, s6
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v192, 0
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s33, s9
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	s_sub_i32 s4, s2, s4
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v200, 0
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s8
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v198, 0
	v_mov_b32_e32 v223, 0
	v_mov_b32_e32 v211, 0
	v_mov_b32_e32 v197, 0
	v_mov_b32_e32 v161, 0
	v_mov_b32_e32 v255, 0
	v_mov_b32_e32 v201, 0
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s5, 0xff
.Ltmp13:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s22, s4, 4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_i32 s2, 0x100
	s_mov_b32 s4, 0
	scratch_store_b32 off, v1, off offset:208 ; 4-byte Folded Spill
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v201, 0 :: v_dual_lshlrev_b32 v2, 3, v0
	v_dual_mov_b32 v198, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v5, 5, v0
	v_lshrrev_b32_e32 v6, 1, v0
	scratch_store_b32 off, v0, off offset:924 ; 4-byte Folded Spill
	v_dual_mov_b32 v224, 0 :: v_dual_lshlrev_b32 v7, 2, v0
	v_dual_mov_b32 v255, 0 :: v_dual_and_b32 v0, 56, v2
	v_dual_mov_b32 v160, 0 :: v_dual_and_b32 v1, 62, v3
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s3, s3, 6
	s_load_b256 s[12:19], s[0:1], 0x0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v14, s3, v0
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s0, s5, 31
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s1, s2, 31
.Ltmp15:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v15, s3, v1
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s5, s5, s0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s1, 24
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v17, 64, v14
	s_add_i32 s2, s2, s0
	v_cmp_gt_i32_e64 s0, 0x80, v14
.Ltmp17:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshrrev_b32_e32 v14, 3, v81
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v18, 64, v15
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v15
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v15, s22, v76
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s5, s5, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v8, 64, v4
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s2, 8
	v_dual_mov_b32 v161, 0 :: v_dual_and_b32 v6, 56, v6
.Ltmp19:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v19, s5, v1
	v_dual_mov_b32 v211, 0 :: v_dual_and_b32 v14, 2, v14
	s_lshl_b32 s8, s7, 8
	s_lshl_b32 s7, s7, 7
	v_mul_lo_u32 v15, s34, v15
	s_add_i32 s38, s3, 64
	s_add_i32 s3, s23, s7
	v_xor_b32_e32 v2, v2, v6
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v19, off offset:800
	scratch_store_b32 off, v76, off offset:932
	scratch_store_b32 off, v14, off offset:808
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v5, s22, v5
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v14, s3, v8
	s_lshl_b32 s10, s6, 8
	s_lshl_b32 s6, s6, 7
	v_cmp_gt_i32_e64 s1, 0x80, v18
	v_cmp_gt_i32_e64 s2, 0x80, v17
	v_dual_mov_b32 v223, 0 :: v_dual_lshlrev_b32 v32, 1, v15
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v15, s3, v4
	v_mad_u64_u32 v[17:18], null, s5, v5, v[1:2]
	v_subrev_nc_u32_e32 v1, s6, v14
	v_or_b32_e32 v5, s7, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v8, s6, v15
	v_dual_mov_b32 v210, 0 :: v_dual_and_b32 v9, 56, v4
	v_mad_u64_u32 v[14:15], null, s5, v1, v[0:1]
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v1, s6, v5
	v_or_b32_e32 v4, s7, v4
	v_sub_nc_u32_e32 v19, s5, v0
	v_xor_b32_e32 v3, v3, v9
	v_dual_mov_b32 v204, 0 :: v_dual_and_b32 v7, 56, v7
	scratch_store_b64 off, v[14:15], off offset:820 ; 8-byte Folded Spill
	v_mad_u64_u32 v[14:15], null, s5, v8, v[0:1]
	v_subrev_nc_u32_e32 v4, s6, v4
	v_lshl_or_b32 v7, v76, 6, v7
	v_mov_b32_e32 v183, 0
	v_mov_b32_e32 v203, 0
	v_mov_b32_e32 v199, 0
	v_mov_b32_e32 v133, 0
	scratch_store_b64 off, v[14:15], off offset:828 ; 8-byte Folded Spill
	v_mad_u64_u32 v[14:15], null, s5, v1, v[0:1]
	v_mad_u64_u32 v[0:1], null, s5, v4, v[0:1]
	v_xor_b32_e32 v6, 8, v7
	v_xor_b32_e32 v9, 16, v7
	v_xor_b32_e32 v10, 24, v7
	v_xor_b32_e32 v11, 32, v7
	v_mov_b32_e32 v193, 0
	v_xor_b32_e32 v12, 40, v7
	scratch_store_b64 off, v[0:1], off offset:844 ; 8-byte Folded Spill
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v0, 0, v3
	v_xor_b32_e32 v13, 48, v7
	v_mov_b32_e32 v195, 0
	v_xor_b32_e32 v16, 56, v7
	scratch_store_b32 off, v0, off offset:852 ; 4-byte Folded Spill
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v0, 0, v2
	v_mov_b32_e32 v191, 0
	v_mov_b32_e32 v129, 0
	s_lshl1_add_u32 s9, s23, s8
	scratch_store_b32 off, v0, off offset:856 ; 4-byte Folded Spill
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v0, 0, v7
	s_sub_i32 s35, s9, s10
	s_sub_i32 s37, s8, s10
	s_mov_b32 s5, s4
	scratch_store_b32 off, v0, off offset:860 ; 4-byte Folded Spill
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v0, 0, v6
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	scratch_store_b32 off, v0, off offset:864 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v9
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_mov_b32_e32 v173, 0
	scratch_store_b32 off, v0, off offset:868 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v10
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v125, 0
	scratch_store_b32 off, v0, off offset:872 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v11
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v127, 0
	scratch_store_b32 off, v0, off offset:876 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v12
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v123, 0
	scratch_store_b32 off, v0, off offset:880 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v13
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v181, 0
	scratch_store_b32 off, v0, off offset:884 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v16
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v177, 0
	scratch_store_b32 off, v0, off offset:888 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b64 off, v[17:18], off offset:812 ; 8-byte Folded Spill
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v175, 0
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b64 off, v[14:15], off offset:836 ; 8-byte Folded Spill
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v109, 0
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v19, off offset:804
	scratch_store_b32 off, v81, off offset:928
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v169, 0
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, s4
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v1, s5
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v3, s7
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v5, s9
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v7, s11
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v2, s6
	v_mov_b32_e32 v4, s8
	v_mov_b32_e32 v6, s10
	s_mov_b32 s27, 0x31027000
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_lshl_b32 s36, s23, 2
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
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:892
	scratch_store_b128 off, v[4:7], off offset:908
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_clause 0x4                            ; 32-byte Folded Reload
	scratch_load_b32 v12, off, off offset:800
	scratch_load_b32 v13, off, off offset:804
	scratch_load_b64 v[0:1], off, off offset:812
	scratch_load_b64 v[4:5], off, off offset:828
	scratch_load_b64 v[5:6], off, off offset:820
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s4, s38, 64
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v32, off offset:692
	scratch_store_b32 off, v201, off offset:688
	scratch_store_b32 off, v255, off offset:684
	scratch_store_b32 off, v224, off offset:8
	scratch_store_b32 off, v198, off offset:680
	scratch_store_b32 off, v197, off offset:676
	scratch_store_b32 off, v194, off offset:672
	scratch_store_b32 off, v223, off offset:668
	scratch_store_b32 off, v211, off offset:664
	scratch_store_b32 off, v161, off offset:660
	scratch_store_b32 off, v160, off offset:656
	scratch_store_b32 off, v210, off offset:652
	scratch_store_b32 off, v204, off offset:648
	scratch_store_b32 off, v159, off offset:644
	scratch_store_b32 off, v156, off offset:640
	scratch_store_b32 off, v203, off offset:636
	scratch_store_b32 off, v185, off offset:632
	scratch_store_b32 off, v142, off offset:628
	scratch_store_b32 off, v136, off offset:4
	scratch_store_b32 off, v193, off offset:624
	scratch_store_b32 off, v188, off offset:620
	scratch_store_b32 off, v135, off offset:616
	scratch_store_b32 off, v134, off offset:612
	scratch_store_b32 off, v196, off offset:608
	scratch_store_b32 off, v195, off offset:604
	scratch_store_b32 off, v133, off offset:600
	scratch_store_b32 off, v132, off offset:596
	scratch_store_b32 off, v187, off offset:592
	scratch_store_b32 off, v192, off offset:588
	scratch_store_b32 off, v131, off offset:584
	scratch_store_b32 off, v130, off offset:580
	scratch_store_b32 off, v191, off offset:576
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v190, off offset:572
	scratch_store_b32 off, v129, off offset:568
	scratch_store_b32 off, v128, off
	scratch_store_b32 off, v189, off offset:564
	scratch_store_b32 off, v170, off offset:560
	scratch_store_b32 off, v127, off offset:556
	scratch_store_b32 off, v126, off offset:552
	scratch_store_b32 off, v182, off offset:548
	scratch_store_b32 off, v181, off offset:544
	scratch_store_b32 off, v125, off offset:540
	scratch_store_b32 off, v124, off offset:536
	scratch_store_b32 off, v176, off offset:532
	scratch_store_b32 off, v145, off offset:528
	scratch_store_b32 off, v123, off offset:524
	scratch_store_b32 off, v122, off offset:520
	scratch_store_b32 off, v178, off offset:516
	scratch_store_b32 off, v121, off offset:512
	scratch_store_b32 off, v120, off offset:508
	scratch_store_b32 off, v177, off offset:504
	scratch_store_b32 off, v180, off offset:500
	scratch_store_b32 off, v119, off offset:496
	scratch_store_b32 off, v118, off offset:492
	scratch_store_b32 off, v179, off offset:488
	scratch_store_b32 off, v169, off offset:484
	scratch_store_b32 off, v117, off offset:480
	scratch_store_b32 off, v116, off offset:476
	scratch_store_b32 off, v115, off offset:472
	scratch_store_b32 off, v114, off offset:468
	scratch_store_b32 off, v175, off offset:464
	scratch_store_b32 off, v174, off offset:460
	scratch_store_b32 off, v113, off offset:456
	scratch_store_b32 off, v112, off offset:452
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v173, off offset:448
	scratch_store_b32 off, v172, off offset:444
	scratch_store_b32 off, v111, off offset:440
	scratch_store_b32 off, v110, off offset:436
	scratch_store_b32 off, v171, off offset:432
	scratch_store_b32 off, v109, off offset:428
	scratch_store_b32 off, v108, off offset:424
	scratch_store_b32 off, v168, off offset:420
	scratch_store_b32 off, v107, off offset:416
	scratch_store_b32 off, v106, off offset:412
	scratch_store_b32 off, v167, off offset:408
	scratch_store_b32 off, v166, off offset:404
	scratch_store_b32 off, v105, off offset:400
	scratch_store_b32 off, v104, off offset:396
	scratch_store_b32 off, v165, off offset:392
	scratch_store_b32 off, v164, off offset:388
	scratch_store_b32 off, v103, off offset:384
	scratch_store_b32 off, v102, off offset:380
	scratch_store_b32 off, v163, off offset:376
	scratch_store_b32 off, v162, off offset:372
	scratch_store_b32 off, v101, off offset:368
	scratch_store_b32 off, v100, off offset:364
	scratch_store_b32 off, v158, off offset:360
	scratch_store_b32 off, v157, off offset:356
	scratch_store_b32 off, v99, off offset:352
	scratch_store_b32 off, v98, off offset:348
	scratch_store_b32 off, v155, off offset:344
	scratch_store_b32 off, v154, off offset:340
	scratch_store_b32 off, v97, off offset:336
	scratch_store_b32 off, v96, off offset:332
	scratch_store_b32 off, v153, off offset:328
	scratch_store_b32 off, v152, off offset:324
	s_clause 0x1a                           ; 108-byte Folded Spill
	scratch_store_b32 off, v95, off offset:320
	scratch_store_b32 off, v94, off offset:316
	scratch_store_b32 off, v151, off offset:312
	scratch_store_b32 off, v150, off offset:308
	scratch_store_b32 off, v93, off offset:304
	scratch_store_b32 off, v92, off offset:300
	scratch_store_b32 off, v149, off offset:296
	scratch_store_b32 off, v148, off offset:292
	scratch_store_b32 off, v91, off offset:288
	scratch_store_b32 off, v90, off offset:284
	scratch_store_b32 off, v147, off offset:280
	scratch_store_b32 off, v146, off offset:276
	scratch_store_b32 off, v89, off offset:272
	scratch_store_b32 off, v88, off offset:268
	scratch_store_b32 off, v144, off offset:264
	scratch_store_b32 off, v87, off offset:260
	scratch_store_b32 off, v86, off offset:256
	scratch_store_b32 off, v143, off offset:252
	scratch_store_b32 off, v141, off offset:248
	scratch_store_b32 off, v85, off offset:244
	scratch_store_b32 off, v84, off offset:240
	scratch_store_b32 off, v140, off offset:236
	scratch_store_b32 off, v139, off offset:232
	scratch_store_b32 off, v83, off offset:228
	scratch_store_b32 off, v82, off offset:224
	scratch_store_b32 off, v138, off offset:220
	scratch_store_b32 off, v137, off offset:216
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s34, s34, -1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(4)
	v_cmp_lt_i32_e64 s3, s4, v12
	s_waitcnt vmcnt(3)
	v_cmp_lt_i32_e64 s4, s4, v13
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v8, s38, v0
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v26, s38, v4
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s38, v5
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s4, s4, s0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_subrev_nc_u32_e32 v0, 64, v8
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	v_subrev_nc_u32_e32 v4, 64, v26
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_subrev_nc_u32_e32 v6, 64, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s38, v12
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v9, v0, s[24:27], 0 offen
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[0:1], off, off offset:844
	scratch_load_b64 v[1:2], off, off offset:836
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s1
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_clause 0x1
	buffer_load_b64 v[4:5], v4, s[12:15], 0 offen
	buffer_load_b64 v[6:7], v6, s[12:15], 0 offen
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v10, s38, v0
	.loc	1 164 26 is_stmt 0              ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v11, s38, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_subrev_nc_u32_e32 v0, 64, v10
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_subrev_nc_u32_e32 v2, 64, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 156 27 is_stmt 1              ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s4, s38, v13
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s38, 0x80
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[0:1], v0, s[12:15], 0 offen
	buffer_load_b64 v[2:3], v2, s[12:15], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v145, off, off offset:852
	scratch_load_b32 v170, off, off offset:856
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s4, s2
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v170, v[0:1], v[2:3] offset1:8
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_store_2addr_stride64_b64 v170, v[4:5], v[6:7] offset0:16 offset1:24
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v0, 0x80000000, v8, s5
	ds_store_b16 v145, v9 offset:16384
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v1, 0x80000000, v10, s3
	v_cndmask_b32_e64 v3, 0x80000000, v11, s3
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x9                            ; 64-byte Folded Reload
	scratch_load_b32 v55, off, off offset:860
	scratch_load_b32 v56, off, off offset:864
	scratch_load_b32 v255, off, off offset:868
	scratch_load_b32 v202, off, off offset:872
	scratch_load_b32 v193, off, off offset:876
	scratch_load_b32 v69, off, off offset:880
	scratch_load_b32 v70, off, off offset:884
	scratch_load_b32 v87, off, off offset:888
	scratch_load_b128 v[184:187], off, off offset:892
	scratch_load_b128 v[188:191], off, off offset:908
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[1:2], v1, s[12:15], 0 offen
	buffer_load_b64 v[253:254], v3, s[12:15], 0 offen
	s_waitcnt vmcnt(11)
	ds_load_2addr_stride64_b64 v[9:12], v55 offset1:2
	ds_load_2addr_stride64_b64 v[13:16], v55 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[17:20], v55 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[27:30], v55 offset0:12 offset1:14
	s_waitcnt vmcnt(10)
	ds_load_2addr_stride64_b64 v[21:24], v56 offset1:2
	ds_load_2addr_stride64_b64 v[31:34], v56 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[39:42], v56 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[43:46], v56 offset0:12 offset1:14
	s_waitcnt vmcnt(9)
	ds_load_2addr_stride64_b64 v[35:38], v255 offset1:2
	ds_load_2addr_stride64_b64 v[47:50], v255 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[57:60], v255 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[61:64], v255 offset0:12 offset1:14
	s_waitcnt vmcnt(8)
	ds_load_2addr_stride64_b64 v[51:54], v202 offset1:2
	ds_load_2addr_stride64_b64 v[71:74], v202 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[75:78], v202 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[89:92], v202 offset0:12 offset1:14
	s_waitcnt vmcnt(7)
	ds_load_2addr_stride64_b64 v[65:68], v193 offset1:2
	ds_load_2addr_stride64_b64 v[93:96], v193 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[105:108], v193 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[109:112], v193 offset0:12 offset1:14
	s_waitcnt vmcnt(6)
	ds_load_2addr_stride64_b64 v[79:82], v69 offset1:2
	ds_load_2addr_stride64_b64 v[121:124], v69 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[125:128], v69 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[129:132], v69 offset0:12 offset1:14
	s_waitcnt vmcnt(5)
	ds_load_2addr_stride64_b64 v[83:86], v70 offset1:2
	ds_load_2addr_stride64_b64 v[133:136], v70 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[137:140], v70 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[162:165], v70 offset0:12 offset1:14
	s_waitcnt vmcnt(4)
	ds_load_2addr_stride64_b64 v[171:174], v87 offset1:2
	ds_load_2addr_stride64_b64 v[205:208], v87 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[209:212], v87 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[213:216], v87 offset0:12 offset1:14
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[146:147], v55 offset:16384
	ds_load_b64 v[148:149], v56 offset:16384
	ds_load_b64 v[150:151], v255 offset:16384
	ds_load_b64 v[152:153], v202 offset:16384
	ds_load_b64 v[154:155], v193 offset:16384
	ds_load_b64 v[156:157], v69 offset:16384
	ds_load_b64 v[158:159], v70 offset:16384
	ds_load_b64 v[160:161], v87 offset:16384
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(2) lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[9:10], v[146:147], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[11:12], v[146:147], v[184:191] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[21:22], v[148:149], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[23:24], v[148:149], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[35:36], v[150:151], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[37:38], v[150:151], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[51:52], v[152:153], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[53:54], v[152:153], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[65:66], v[154:155], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[67:68], v[154:155], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[79:80], v[156:157], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[81:82], v[156:157], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[83:84], v[158:159], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[85:86], v[158:159], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[171:172], v[160:161], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[173:174], v[160:161], v[3:10] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[3:6], off offset:172
	scratch_store_b128 off, v[7:10], off offset:188
	v_wmma_i32_16x16x16_iu4 v[3:10], v[13:14], v[146:147], v[184:191] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[31:32], v[148:149], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[47:48], v[150:151], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[71:72], v[152:153], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[93:94], v[154:155], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[121:122], v[156:157], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[133:134], v[158:159], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[205:206], v[160:161], v[3:10] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[3:6], off offset:140
	scratch_store_b128 off, v[7:10], off offset:156
	v_wmma_i32_16x16x16_iu4 v[3:10], v[15:16], v[146:147], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[33:34], v[148:149], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[49:50], v[150:151], v[3:10] neg_lo:[1,1,0]
	v_mov_b32_e32 v50, v87
	v_mov_b32_e32 v49, v183
	v_wmma_i32_16x16x16_iu4 v[3:10], v[73:74], v[152:153], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[95:96], v[154:155], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[123:124], v[156:157], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[135:136], v[158:159], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[207:208], v[160:161], v[3:10] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[3:6], off offset:108
	scratch_store_b128 off, v[7:10], off offset:124
	v_wmma_i32_16x16x16_iu4 v[3:10], v[17:18], v[146:147], v[184:191] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[39:40], v[148:149], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[27:28], v[146:147], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[57:58], v[150:151], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[43:44], v[148:149], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[75:76], v[152:153], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[61:62], v[150:151], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[105:106], v[154:155], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[152:153], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[125:126], v[156:157], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[109:110], v[154:155], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[137:138], v[158:159], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[156:157], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[209:210], v[160:161], v[3:10] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[3:6], off offset:76
	scratch_store_b128 off, v[7:10], off offset:92
	v_wmma_i32_16x16x16_iu4 v[3:10], v[19:20], v[146:147], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[162:163], v[158:159], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[41:42], v[148:149], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[213:214], v[160:161], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[59:60], v[150:151], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[77:78], v[152:153], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[107:108], v[154:155], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[127:128], v[156:157], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[139:140], v[158:159], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[211:212], v[160:161], v[3:10] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[3:6], off offset:44
	scratch_store_b128 off, v[7:10], off offset:60
	v_wmma_i32_16x16x16_iu4 v[3:10], v[29:30], v[146:147], v[184:191] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[45:46], v[148:149], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[63:64], v[150:151], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[91:92], v[152:153], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[111:112], v[154:155], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[131:132], v[156:157], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[3:10], v[164:165], v[158:159], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[3:10], v[215:216], v[160:161], v[3:10] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[3:6], off offset:12
	scratch_store_b128 off, v[7:10], off offset:28
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e64 v3, 0x80000000, v26, s3
	v_cndmask_b32_e64 v5, 0x80000000, v25, s3
	ds_load_2addr_stride64_b64 v[25:28], v55 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[29:32], v55 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[41:44], v55 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[137:140], v55 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[45:48], v56 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[57:60], v56 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[162:165], v56 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[171:174], v56 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[61:64], v255 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[73:76], v255 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[205:208], v255 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[209:212], v255 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[77:80], v202 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[213:216], v202 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[217:220], v202 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[221:224], v202 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[89:92], v193 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[225:228], v193 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[229:232], v193 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[233:236], v193 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[93:96], v69 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[237:240], v69 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[241:244], v69 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[245:248], v69 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[105:108], v70 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[249:252], v70 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[166:169], v70 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[175:178], v70 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[109:112], v87 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[194:197], v87 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[179:182], v87 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[141:144], v87 offset0:28 offset1:30
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(31)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[25:26], v[146:147], v[184:191] neg_lo:[1,1,0]
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_clause 0x1
	buffer_load_b64 v[3:4], v3, s[12:15], 0 offen
	buffer_load_b64 v[5:6], v5, s[12:15], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[121:128], v[27:28], v[146:147], v[184:191] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(27)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[45:46], v[148:149], v[129:136] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[121:128], v[47:48], v[148:149], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[43:44], v[146:147], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[61:62], v[150:151], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[137:138], v[146:147], v[184:191] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[63:64], v[150:151], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[164:165], v[148:149], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[77:78], v[152:153], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[171:172], v[148:149], v[81:88] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b16 v145, v0 offset:16384
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v170, v[1:2], v[253:254] offset1:8
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v170, v[3:4], v[5:6] offset0:16 offset1:24
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[121:128], v[79:80], v[152:153], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[89:90], v[154:155], v[129:136] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[97:104], v[207:208], v[150:151], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[91:92], v[154:155], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[93:94], v[156:157], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[209:210], v[150:151], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[219:220], v[152:153], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[95:96], v[156:157], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[105:106], v[158:159], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[31:32], v[146:147], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[221:222], v[152:153], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[107:108], v[158:159], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[109:110], v[160:161], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[59:60], v[148:149], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[231:232], v[154:155], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[233:234], v[154:155], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[111:112], v[160:161], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[29:30], v[146:147], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[75:76], v[150:151], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[243:244], v[156:157], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[245:246], v[156:157], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[57:58], v[148:149], v[105:112] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[57:60], off, off offset:172
	scratch_load_b128 v[61:64], off, off offset:188
	v_wmma_i32_16x16x16_iu4 v[89:96], v[215:216], v[152:153], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[168:169], v[158:159], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[175:176], v[158:159], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[73:74], v[150:151], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[41:42], v[146:147], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[139:140], v[146:147], v[184:191] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[213:214], v[152:153], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[162:163], v[148:149], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[227:228], v[154:155], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[173:174], v[148:149], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[181:182], v[160:161], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[225:226], v[154:155], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[205:206], v[150:151], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[239:240], v[156:157], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[211:212], v[150:151], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[141:142], v[160:161], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[237:238], v[156:157], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[217:218], v[152:153], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[251:252], v[158:159], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[223:224], v[152:153], v[41:48] neg_lo:[1,1,0]
	v_mov_b32_e32 v30, v199
	v_wmma_i32_16x16x16_iu4 v[105:112], v[249:250], v[158:159], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[229:230], v[154:155], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[196:197], v[160:161], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[235:236], v[154:155], v[41:48] neg_lo:[1,1,0]
	v_mov_b32_e32 v31, v200
	v_wmma_i32_16x16x16_iu4 v[105:112], v[194:195], v[160:161], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[241:242], v[156:157], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[198:201], v70 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[187:190], v50 offset1:2
	ds_load_2addr_stride64_b64 v[6:9], v50 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[14:17], v50 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[18:21], v50 offset0:12 offset1:14
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[41:48], v[247:248], v[156:157], v[41:48] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[183:186], v70 offset0:8 offset1:10
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[73:80], v[166:167], v[158:159], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[177:178], v[158:159], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[179:180], v[160:161], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[143:144], v[160:161], v[41:48] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[253:254], v55 offset:16384
	ds_load_b64 v[191:192], v56 offset:16384
	ds_load_b64 v[169:170], v255 offset:16384
	ds_load_b64 v[203:204], v202 offset:16384
	ds_load_b64 v[249:250], v193 offset:16384
	ds_load_b64 v[251:252], v69 offset:16384
	ds_load_b64 v[4:5], v70 offset:16384
	ds_load_b64 v[28:29], v50 offset:16384
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[137:140], v55 offset1:2
	ds_load_2addr_stride64_b64 v[141:144], v55 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[145:148], v55 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[149:152], v55 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[153:156], v56 offset1:2
	ds_load_2addr_stride64_b64 v[157:160], v56 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[161:164], v56 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[165:168], v56 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[171:174], v255 offset1:2
	ds_load_2addr_stride64_b64 v[175:178], v255 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[179:182], v255 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[194:197], v255 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[205:208], v202 offset1:2
	ds_load_2addr_stride64_b64 v[209:212], v202 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[213:216], v202 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[217:220], v202 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[221:224], v193 offset1:2
	ds_load_2addr_stride64_b64 v[225:228], v193 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[229:232], v193 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[233:236], v193 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[237:240], v69 offset1:2
	ds_load_2addr_stride64_b64 v[241:244], v69 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[245:248], v69 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[22:25], v69 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[0:3], v70 offset1:2
	ds_load_2addr_stride64_b64 v[10:13], v70 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(25)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[137:138], v[253:254], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[149:150], v[253:254], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(21)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[153:154], v[191:192], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[165:166], v[191:192], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(17)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[171:172], v[169:170], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[194:195], v[169:170], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[205:206], v[203:204], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[217:218], v[203:204], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[221:222], v[249:250], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[233:234], v[249:250], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[237:238], v[251:252], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[22:23], v[251:252], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[0:1], v[4:5], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[198:199], v[4:5], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[187:188], v[28:29], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[18:19], v[28:29], v[33:40] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[33:36], off offset:736
	scratch_store_b128 off, v[37:40], off offset:752
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[139:140], v[253:254], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[155:156], v[191:192], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[173:174], v[169:170], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[207:208], v[203:204], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[223:224], v[249:250], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[239:240], v[251:252], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[2:3], v[4:5], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[189:190], v[28:29], v[57:64] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[57:60], off offset:172
	scratch_store_b128 off, v[61:64], off offset:188
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[57:60], off, off offset:140
	scratch_load_b128 v[61:64], off, off offset:156
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[141:142], v[253:254], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[157:158], v[191:192], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[175:176], v[169:170], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[209:210], v[203:204], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[225:226], v[249:250], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[241:242], v[251:252], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[10:11], v[4:5], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[6:7], v[28:29], v[57:64] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[57:60], off offset:140
	scratch_store_b128 off, v[61:64], off offset:156
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[57:60], off, off offset:108
	scratch_load_b128 v[61:64], off, off offset:124
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[143:144], v[253:254], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[159:160], v[191:192], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[177:178], v[169:170], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[211:212], v[203:204], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[227:228], v[249:250], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[243:244], v[251:252], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[12:13], v[4:5], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[8:9], v[28:29], v[57:64] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[6:9], off, off offset:76
	scratch_load_b128 v[10:13], off, off offset:92
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[57:60], off offset:108
	scratch_store_b128 off, v[61:64], off offset:124
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[145:146], v[253:254], v[6:13] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[161:162], v[191:192], v[6:13] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[6:13], v[179:180], v[169:170], v[6:13] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[213:214], v[203:204], v[6:13] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[6:13], v[229:230], v[249:250], v[6:13] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[245:246], v[251:252], v[6:13] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[6:13], v[183:184], v[4:5], v[6:13] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[14:15], v[28:29], v[6:13] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[6:9], off offset:76
	scratch_store_b128 off, v[10:13], off offset:92
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[6:9], off, off offset:44
	scratch_load_b128 v[10:13], off, off offset:60
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[147:148], v[253:254], v[6:13] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[163:164], v[191:192], v[6:13] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[6:13], v[181:182], v[169:170], v[6:13] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[215:216], v[203:204], v[6:13] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[6:13], v[231:232], v[249:250], v[6:13] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[247:248], v[251:252], v[6:13] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[6:13], v[185:186], v[4:5], v[6:13] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[16:17], v[28:29], v[6:13] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[6:9], off offset:44
	scratch_store_b128 off, v[10:13], off offset:60
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[6:9], off, off offset:12
	scratch_load_b128 v[10:13], off, off offset:28
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[151:152], v[253:254], v[6:13] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[167:168], v[191:192], v[6:13] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[6:13], v[196:197], v[169:170], v[6:13] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[219:220], v[203:204], v[6:13] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[6:13], v[235:236], v[249:250], v[6:13] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[24:25], v[251:252], v[6:13] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[6:13], v[200:201], v[4:5], v[6:13] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[6:13], v[20:21], v[28:29], v[6:13] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[6:9], off offset:12
	scratch_store_b128 off, v[10:13], off offset:28
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_2addr_stride64_b64 v[0:3], v55 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[24:27], v55 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[8:11], v55 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[12:15], v55 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[16:19], v56 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[20:23], v56 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[137:140], v56 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[141:144], v56 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[145:148], v255 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[149:152], v255 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[153:156], v255 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[157:160], v255 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[161:164], v202 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[165:168], v202 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[171:174], v202 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[175:178], v202 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[179:182], v193 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[183:186], v193 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[187:190], v193 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[194:197], v193 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[198:201], v69 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[205:208], v69 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[209:212], v69 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[213:216], v69 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[217:220], v70 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[221:224], v70 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[225:228], v70 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[229:232], v70 offset0:28 offset1:30
	ds_load_2addr_stride64_b64 v[233:236], v50 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[237:240], v50 offset0:20 offset1:22
	ds_load_2addr_stride64_b64 v[241:244], v50 offset0:24 offset1:26
	ds_load_2addr_stride64_b64 v[245:248], v50 offset0:28 offset1:30
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(31)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[0:1], v[253:254], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[2:3], v[253:254], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(30)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[24:25], v[253:254], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[26:27], v[253:254], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(29)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[8:9], v[253:254], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(27)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[16:17], v[191:192], v[129:136] neg_lo:[1,1,0]
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v16, off, off offset:208
	scratch_load_b32 v32, off, off offset:692
	scratch_load_b32 v7, off, off offset:204
	v_wmma_i32_16x16x16_iu4 v[97:104], v[10:11], v[253:254], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[12:13], v[253:254], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[14:15], v[253:254], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[18:19], v[191:192], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(26)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[20:21], v[191:192], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[22:23], v[191:192], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(25)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[137:138], v[191:192], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[139:140], v[191:192], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(24)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[141:142], v[191:192], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[143:144], v[191:192], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(23)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[145:146], v[169:170], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[147:148], v[169:170], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[149:150], v[169:170], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[151:152], v[169:170], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(21)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[153:154], v[169:170], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[155:156], v[169:170], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(20)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[157:158], v[169:170], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[159:160], v[169:170], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(19)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[161:162], v[203:204], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[163:164], v[203:204], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[165:166], v[203:204], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[167:168], v[203:204], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(17)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[171:172], v[203:204], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[173:174], v[203:204], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[175:176], v[203:204], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[177:178], v[203:204], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(15)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[179:180], v[249:250], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[181:182], v[249:250], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[183:184], v[249:250], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[185:186], v[249:250], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[187:188], v[249:250], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[189:190], v[249:250], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[194:195], v[249:250], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[196:197], v[249:250], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[198:199], v[251:252], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[200:201], v[251:252], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[205:206], v[251:252], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[207:208], v[251:252], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[209:210], v[251:252], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[211:212], v[251:252], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[213:214], v[251:252], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[215:216], v[251:252], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[217:218], v[4:5], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[219:220], v[4:5], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[221:222], v[4:5], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[223:224], v[4:5], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[225:226], v[4:5], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[227:228], v[4:5], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[229:230], v[4:5], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[231:232], v[4:5], v[41:48] neg_lo:[1,1,0]
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v5, off, off offset:808
	scratch_load_b32 v255, off, off offset:684
	scratch_load_b32 v185, off, off offset:632
	scratch_load_b32 v193, off, off offset:624
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[233:234], v[28:29], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[235:236], v[28:29], v[121:128] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[237:238], v[28:29], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[239:240], v[28:29], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[245:246], v[28:29], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[243:244], v[28:29], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[247:248], v[28:29], v[41:48] neg_lo:[1,1,0]
	v_dual_mov_b32 v199, v30 :: v_dual_mov_b32 v200, v31
	v_mov_b32_e32 v183, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v57, v97 :: v_dual_mov_b32 v58, v98
	v_dual_mov_b32 v59, v99 :: v_dual_mov_b32 v60, v100
	v_dual_mov_b32 v61, v101 :: v_dual_mov_b32 v62, v102
	v_dual_mov_b32 v63, v103 :: v_dual_mov_b32 v64, v104
	v_dual_mov_b32 v104, v48 :: v_dual_mov_b32 v103, v47
	v_dual_mov_b32 v102, v46 :: v_dual_mov_b32 v101, v45
	v_dual_mov_b32 v100, v44 :: v_dual_mov_b32 v99, v43
	v_dual_mov_b32 v98, v42 :: v_dual_mov_b32 v97, v41
	v_wmma_i32_16x16x16_iu4 v[73:80], v[241:242], v[28:29], v[73:80] neg_lo:[1,1,0]
	s_clause 0xf                            ; 88-byte Folded Reload
	scratch_load_b32 v17, off, off offset:212
	scratch_load_b32 v176, off, off offset:532
	scratch_load_b32 v204, off, off offset:648
	scratch_load_b32 v203, off, off offset:636
	scratch_load_b32 v178, off, off offset:516
	scratch_load_b32 v177, off, off offset:504
	scratch_load_b32 v195, off, off offset:604
	scratch_load_b32 v196, off, off offset:608
	scratch_load_b32 v192, off, off offset:588
	scratch_load_b32 v191, off, off offset:576
	scratch_load_b32 v190, off, off offset:572
	scratch_load_b32 v189, off, off offset:564
	scratch_load_b128 v[49:52], off, off offset:140
	scratch_load_b128 v[53:56], off, off offset:156
	scratch_load_b32 v188, off, off offset:620
	scratch_load_b32 v187, off, off offset:592
	v_dual_mov_b32 v19, v81 :: v_dual_mov_b32 v20, v82
	v_dual_mov_b32 v21, v83 :: v_dual_mov_b32 v22, v84
	v_dual_mov_b32 v23, v85 :: v_dual_mov_b32 v24, v86
	v_dual_mov_b32 v25, v87 :: v_dual_mov_b32 v26, v88
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v182, off, off offset:548
	scratch_load_b32 v181, off, off offset:544
	scratch_load_b32 v170, off, off offset:560
	scratch_load_b32 v169, off, off offset:484
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(25)
	buffer_load_u16 v0, v32, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v32, 2, v32
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v142, 16, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v1, s37, v5
	s_clause 0x1f
	buffer_load_u16 v3, v1, s[16:19], 0 offen
	buffer_load_u16 v4, v1, s[16:19], 0 offen offset:4
	buffer_load_u16 v168, v1, s[16:19], 0 offen offset:8
	buffer_load_u16 v211, v1, s[16:19], 0 offen offset:12
	buffer_load_u16 v163, v1, s[16:19], 0 offen offset:16
	buffer_load_u16 v165, v1, s[16:19], 0 offen offset:20
	buffer_load_u16 v138, v1, s[16:19], 0 offen offset:24
	buffer_load_u16 v179, v1, s[16:19], 0 offen offset:28
	buffer_load_u16 v172, v1, s[16:19], 0 offen offset:32
	buffer_load_u16 v137, v1, s[16:19], 0 offen offset:36
	buffer_load_u16 v250, v1, s[16:19], 0 offen offset:40
	buffer_load_u16 v0, v1, s[16:19], 0 offen offset:44
	buffer_load_u16 v246, v1, s[16:19], 0 offen offset:48
	buffer_load_u16 v139, v1, s[16:19], 0 offen offset:52
	buffer_load_u16 v245, v1, s[16:19], 0 offen offset:56
	buffer_load_u16 v198, v1, s[16:19], 0 offen offset:60
	buffer_load_u16 v2, v1, s[16:19], 0 offen offset:64
	buffer_load_u16 v162, v1, s[16:19], 0 offen offset:68
	buffer_load_u16 v251, v1, s[16:19], 0 offen offset:72
	buffer_load_u16 v219, v1, s[16:19], 0 offen offset:76
	buffer_load_u16 v237, v1, s[16:19], 0 offen offset:80
	buffer_load_u16 v205, v1, s[16:19], 0 offen offset:84
	buffer_load_u16 v216, v1, s[16:19], 0 offen offset:88
	buffer_load_u16 v234, v1, s[16:19], 0 offen offset:92
	buffer_load_u16 v233, v1, s[16:19], 0 offen offset:96
	buffer_load_u16 v215, v1, s[16:19], 0 offen offset:100
	buffer_load_u16 v229, v1, s[16:19], 0 offen offset:104
	buffer_load_u16 v230, v1, s[16:19], 0 offen offset:108
	buffer_load_u16 v239, v1, s[16:19], 0 offen offset:112
	buffer_load_u16 v201, v1, s[16:19], 0 offen offset:116
	buffer_load_u16 v225, v1, s[16:19], 0 offen offset:120
	buffer_load_u16 v207, v1, s[16:19], 0 offen offset:124
	s_clause 0x10
	buffer_load_u16 v235, v1, s[16:19], 0 offen offset:128
	buffer_load_u16 v236, v1, s[16:19], 0 offen offset:132
	buffer_load_u16 v217, v1, s[16:19], 0 offen offset:136
	buffer_load_u16 v218, v1, s[16:19], 0 offen offset:140
	buffer_load_u16 v213, v1, s[16:19], 0 offen offset:144
	buffer_load_u16 v214, v1, s[16:19], 0 offen offset:148
	buffer_load_u16 v146, v1, s[16:19], 0 offen offset:152
	buffer_load_u16 v145, v1, s[16:19], 0 offen offset:156
	buffer_load_u16 v148, v1, s[16:19], 0 offen offset:160
	buffer_load_u16 v147, v1, s[16:19], 0 offen offset:164
	buffer_load_u16 v154, v1, s[16:19], 0 offen offset:168
	buffer_load_u16 v153, v1, s[16:19], 0 offen offset:172
	buffer_load_u16 v158, v1, s[16:19], 0 offen offset:176
	buffer_load_u16 v157, v1, s[16:19], 0 offen offset:180
	buffer_load_u16 v39, v1, s[16:19], 0 offen offset:184
	buffer_load_u16 v161, v1, s[16:19], 0 offen offset:188
	buffer_load_u16 v6, v1, s[16:19], 0 offen offset:192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s37, s37, s36
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v175, 16, v4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v4, v114
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v4, v142, v4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v28, v1, s[16:19], 0 offen offset:240
	buffer_load_u16 v29, v1, s[16:19], 0 offen offset:244
	buffer_load_u16 v30, v1, s[16:19], 0 offen offset:248
	buffer_load_u16 v31, v1, s[16:19], 0 offen offset:252
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(41)
	v_dual_fmac_f32 v255, v4, v175 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v4, v130
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v5, s35, v5
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v224, 16, v3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v113
	scratch_load_b32 v175, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v114, v142, v4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v4, 16, v168
	scratch_load_b32 v168, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v142, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s35, s35, s36
	s_cmp_lg_u32 s34, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	scratch_store_b32 off, v6, off offset:792 ; 4-byte Folded Spill
	buffer_load_u16 v6, v1, s[16:19], 0 offen offset:196
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:796 ; 4-byte Folded Spill
	s_clause 0x6
	buffer_load_u16 v42, v1, s[16:19], 0 offen offset:200
	buffer_load_u16 v43, v1, s[16:19], 0 offen offset:204
	buffer_load_u16 v44, v1, s[16:19], 0 offen offset:208
	buffer_load_u16 v45, v1, s[16:19], 0 offen offset:212
	buffer_load_u16 v46, v1, s[16:19], 0 offen offset:216
	buffer_load_u16 v47, v1, s[16:19], 0 offen offset:220
	buffer_load_u16 v6, v1, s[16:19], 0 offen offset:224
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:728 ; 4-byte Folded Spill
	buffer_load_u16 v6, v1, s[16:19], 0 offen offset:228
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:732 ; 4-byte Folded Spill
	s_clause 0x1
	buffer_load_u16 v27, v1, s[16:19], 0 offen offset:232
	buffer_load_u16 v6, v1, s[16:19], 0 offen offset:236
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:712 ; 4-byte Folded Spill
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1f
	buffer_load_u16 v174, v5, s[16:19], 0 offen
	buffer_load_u16 v223, v5, s[16:19], 0 offen offset:4
	buffer_load_u16 v173, v5, s[16:19], 0 offen offset:8
	buffer_load_u16 v210, v5, s[16:19], 0 offen offset:12
	buffer_load_u16 v166, v5, s[16:19], 0 offen offset:16
	buffer_load_u16 v167, v5, s[16:19], 0 offen offset:20
	buffer_load_u16 v180, v5, s[16:19], 0 offen offset:24
	buffer_load_u16 v141, v5, s[16:19], 0 offen offset:28
	buffer_load_u16 v254, v5, s[16:19], 0 offen offset:32
	buffer_load_u16 v171, v5, s[16:19], 0 offen offset:36
	buffer_load_u16 v164, v5, s[16:19], 0 offen offset:40
	buffer_load_u16 v253, v5, s[16:19], 0 offen offset:44
	buffer_load_u16 v140, v5, s[16:19], 0 offen offset:48
	buffer_load_u16 v249, v5, s[16:19], 0 offen offset:52
	buffer_load_u16 v220, v5, s[16:19], 0 offen offset:56
	buffer_load_u16 v209, v5, s[16:19], 0 offen offset:60
	buffer_load_u16 v241, v5, s[16:19], 0 offen offset:64
	buffer_load_u16 v242, v5, s[16:19], 0 offen offset:68
	buffer_load_u16 v197, v5, s[16:19], 0 offen offset:72
	buffer_load_u16 v252, v5, s[16:19], 0 offen offset:76
	buffer_load_u16 v206, v5, s[16:19], 0 offen offset:80
	buffer_load_u16 v238, v5, s[16:19], 0 offen offset:84
	buffer_load_u16 v247, v5, s[16:19], 0 offen offset:88
	buffer_load_u16 v248, v5, s[16:19], 0 offen offset:92
	buffer_load_u16 v1, v5, s[16:19], 0 offen offset:96
	buffer_load_u16 v244, v5, s[16:19], 0 offen offset:100
	buffer_load_u16 v243, v5, s[16:19], 0 offen offset:104
	buffer_load_u16 v208, v5, s[16:19], 0 offen offset:108
	buffer_load_u16 v194, v5, s[16:19], 0 offen offset:112
	buffer_load_u16 v240, v5, s[16:19], 0 offen offset:116
	buffer_load_u16 v212, v5, s[16:19], 0 offen offset:120
	buffer_load_u16 v226, v5, s[16:19], 0 offen offset:124
	s_clause 0x12
	buffer_load_u16 v221, v5, s[16:19], 0 offen offset:128
	buffer_load_u16 v222, v5, s[16:19], 0 offen offset:132
	buffer_load_u16 v231, v5, s[16:19], 0 offen offset:136
	buffer_load_u16 v232, v5, s[16:19], 0 offen offset:140
	buffer_load_u16 v227, v5, s[16:19], 0 offen offset:144
	buffer_load_u16 v228, v5, s[16:19], 0 offen offset:148
	buffer_load_u16 v144, v5, s[16:19], 0 offen offset:152
	buffer_load_u16 v143, v5, s[16:19], 0 offen offset:156
	buffer_load_u16 v150, v5, s[16:19], 0 offen offset:160
	buffer_load_u16 v149, v5, s[16:19], 0 offen offset:164
	buffer_load_u16 v152, v5, s[16:19], 0 offen offset:168
	buffer_load_u16 v151, v5, s[16:19], 0 offen offset:172
	buffer_load_u16 v156, v5, s[16:19], 0 offen offset:176
	buffer_load_u16 v155, v5, s[16:19], 0 offen offset:180
	buffer_load_u16 v160, v5, s[16:19], 0 offen offset:184
	buffer_load_u16 v159, v5, s[16:19], 0 offen offset:188
	buffer_load_u16 v18, v5, s[16:19], 0 offen offset:192
	buffer_load_u16 v41, v5, s[16:19], 0 offen offset:196
	buffer_load_u16 v6, v5, s[16:19], 0 offen offset:200
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v113, 16, v174
	scratch_load_b32 v174, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v130, 16, v173
	scratch_load_b32 v173, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v184, 16, v253
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v202, 16, v249
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v85, 16, v238
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v87, 16, v248
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v65, 16, v244
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v67, 16, v208
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v69, 16, v240
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v71, 16, v226
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v33, 16, v149
	scratch_load_b32 v149, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v35, 16, v151
	scratch_load_b32 v151, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v37, 16, v155
	scratch_load_b32 v155, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v40, 16, v160
	scratch_load_b32 v160, off, off offset:656 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	scratch_store_b32 off, v6, off offset:784 ; 4-byte Folded Spill
	buffer_load_u16 v6, v5, s[16:19], 0 offen offset:204
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:788 ; 4-byte Folded Spill
	buffer_load_u16 v6, v5, s[16:19], 0 offen offset:208
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:776 ; 4-byte Folded Spill
	buffer_load_u16 v6, v5, s[16:19], 0 offen offset:212
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:780 ; 4-byte Folded Spill
	buffer_load_u16 v6, v5, s[16:19], 0 offen offset:216
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:768 ; 4-byte Folded Spill
	buffer_load_u16 v6, v5, s[16:19], 0 offen offset:220
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:772 ; 4-byte Folded Spill
	s_clause 0x1
	buffer_load_u16 v48, v5, s[16:19], 0 offen offset:224
	buffer_load_u16 v6, v5, s[16:19], 0 offen offset:228
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:724 ; 4-byte Folded Spill
	buffer_load_u16 v6, v5, s[16:19], 0 offen offset:232
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:716 ; 4-byte Folded Spill
	buffer_load_u16 v6, v5, s[16:19], 0 offen offset:236
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:720 ; 4-byte Folded Spill
	buffer_load_u16 v6, v5, s[16:19], 0 offen offset:240
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:704 ; 4-byte Folded Spill
	buffer_load_u16 v6, v5, s[16:19], 0 offen offset:244
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v6, off offset:708 ; 4-byte Folded Spill
	s_clause 0x1
	buffer_load_u16 v6, v5, s[16:19], 0 offen offset:248
	buffer_load_u16 v5, v5, s[16:19], 0 offen offset:252
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v5, off offset:700 ; 4-byte Folded Spill
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	scratch_load_b32 v5, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v5, v3, v224
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v3, 16, v223
	scratch_load_b32 v223, off, off offset:668 ; 4-byte Folded Reload
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v5, off offset:8
	scratch_store_b32 off, v6, off offset:696
	scratch_store_b32 off, v3, off offset:684
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v3, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v5, v115
	v_cvt_f32_i32_e32 v6, v116
	scratch_load_b32 v224, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v129, v142, v3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v3, 16, v211
	scratch_load_b32 v211, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v142, v5
	v_mul_f32_e32 v6, v142, v6
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v223, v6, v3
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v3, v131
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v6, v118
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v131, v142, v3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v6, v142, v6 :: v_dual_fmac_f32 v211, v5, v4
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v4, v132
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v5, v117
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v132, 16, v166
	scratch_load_b32 v166, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v116, v142, v4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v5, v142, v5 :: v_dual_lshlrev_b32 v4, 16, v163
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v204, v5, v4
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v4, v134
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v3, 16, v165
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v5, v119
	scratch_load_b32 v165, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v118, v142, v4 :: v_dual_lshlrev_b32 v115, 16, v210
	scratch_load_b32 v210, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v5, v142, v5 :: v_dual_lshlrev_b32 v4, 16, v138
	scratch_load_b32 v138, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v183, v5, v4
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v4, v136
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v136, 16, v254
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v134, v142, v4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v4, 16, v172
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v172, off, off offset:444
	scratch_load_b128 v[8:11], off, off offset:172
	scratch_load_b128 v[12:15], off, off offset:188
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v210, v6, v3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v3, v133
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v6, v120
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v117, 16, v167
	v_lshlrev_b32_e32 v120, 16, v180
	scratch_load_b32 v180, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v133, v142, v3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v6, v142, v6 :: v_dual_lshlrev_b32 v3, 16, v179
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v179, off, off offset:488
	scratch_load_b32 v167, off, off offset:408
	scratch_load_b32 v163, off, off offset:376
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v160, v133, v132 :: v_dual_fmac_f32 v203, v6, v3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_cvt_f32_i32_e32 v5, v8
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v3, v135
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v6, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:600
	scratch_load_b32 v132, off, off offset:596
	v_mul_f32_e32 v5, v142, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v6, v142, v6 :: v_dual_fmac_f32 v199, v5, v4
	v_cvt_f32_i32_e32 v5, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v4, v122
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v5, v142, v5 :: v_dual_lshlrev_b32 v122, 16, v164
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v135, v142, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v8, v142, v4 :: v_dual_lshlrev_b32 v3, 16, v137
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v119, 16, v141
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v4, v10
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v196, v5, v0
	v_fmac_f32_e32 v200, v6, v3
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v3, v121
	v_cvt_f32_i32_e32 v0, v123
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v4, v142, v4
	s_waitcnt vmcnt(6)
	v_cvt_f32_i32_e32 v5, v13
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v6, 16, v171
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v121, v142, v3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v3, 16, v250
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v171, off, off offset:432
	scratch_load_b32 v164, off, off offset:388
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v142, v5
	scratch_load_b32 v141, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v195, v4, v3
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v3, v124
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v4, v12
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v124, 16, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v186, v142, v3 :: v_dual_lshlrev_b32 v3, 16, v246
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v4, v142, v4
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v123, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v139
	scratch_load_b32 v139, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v192, v4, v3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v3, v126
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v193, v5, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v125
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v4, v14
	v_cvt_f32_i32_e32 v5, v15
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v246, v142, v3 :: v_dual_lshlrev_b32 v3, 16, v245
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v125, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v198
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v4, v142, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v5, v142, v5
	scratch_load_b32 v198, off, off offset:680 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v190, v4, v3
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v3, v128
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v191, v5, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v127
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v4, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v126, v142, v3 :: v_dual_lshlrev_b32 v5, 16, v209
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v49
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v127, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v4, v142, v4
	v_dual_mul_f32 v3, v142, v3 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v209, 16, v220
	scratch_load_b32 v162, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v189, v4, v0 :: v_dual_lshlrev_b32 v128, 16, v241
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v105
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v4, v52
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v188, v3, v2
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v81, 16, v242
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v2, v106
	v_dual_mul_f32 v105, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v219
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v51
	v_mul_f32_e32 v4, v142, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v82, v142, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v106, 16, v197
	v_lshlrev_b32_e32 v51, 16, v232
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v142, v3
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v187, v4, v0
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v107
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v251
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v4, v54
	scratch_load_b32 v197, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v49, 16, v222
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v107, v142, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v17, v3, v2 :: v_dual_lshlrev_b32 v0, 16, v205
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v2, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v53
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v83, 16, v252
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v4, v142, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v84, v142, v2 :: v_dual_lshlrev_b32 v53, 16, v228
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v142, v3 :: v_dual_lshlrev_b32 v2, 16, v237
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v185, v4, v0
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v109
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v4, v56
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v108, 16, v206
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v16, v3, v2
	scratch_store_b32 off, v17, off offset:212 ; 4-byte Folded Spill
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v2, v110
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v55
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v109, v142, v0
	scratch_store_b32 off, v16, off offset:208 ; 4-byte Folded Spill
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:108
	scratch_load_b128 v[13:16], off, off offset:124
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v142, v3 :: v_dual_lshlrev_b32 v0, 16, v234
	v_mul_f32_e32 v4, v142, v4
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v86, v142, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v216
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v17, 16, v41
	v_lshlrev_b32_e32 v55, 16, v143
	scratch_load_b32 v143, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v182, v3, v2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v2, v112
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v112, 16, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v142, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v1, 16, v229
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v7, v4, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v111
	v_dual_mul_f32 v111, v142, v0 :: v_dual_lshlrev_b32 v88, 16, v247
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v133, v246, v202 :: v_dual_lshlrev_b32 v0, 16, v215
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_cvt_f32_i32_e32 v3, v9
	v_cvt_f32_i32_e32 v4, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v3, v142, v3
	v_mul_f32_e32 v4, v142, v4
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v110, v142, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v180, v3, v2
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v11
	v_cvt_f32_i32_e32 v3, v12
	v_mul_f32_e32 v2, v142, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v3, v142, v3
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v179, v2, v1
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v92
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v2, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v68, v142, v1 :: v_dual_lshlrev_b32 v1, 16, v239
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v181, v4, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v89
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v142, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v89, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v230
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v176, v2, v1
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v15
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v94
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v178, v3, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v91
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v14
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v90, 16, v243
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v70, v142, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v1, 16, v225
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v91, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v201
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v142, v3
	v_mul_f32_e32 v2, v142, v2
	scratch_load_b32 v201, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v177, v3, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v16
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:76
	scratch_load_b128 v[13:16], off, off offset:92
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v93
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v175, v2, v1 :: v_dual_lshlrev_b32 v92, 16, v194
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v142, v3
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v93, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v207
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v96, 16, v221
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v174, v3, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v95, v142, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v236
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v3, v10
	v_cvt_f32_i32_e32 v2, v9
	v_mul_f32_e32 v3, v142, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v2, v142, v2
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v172, v3, v0
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v73
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v73, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v218
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v142, v3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v94, v142, v1 :: v_dual_lshlrev_b32 v1, 16, v235
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v72, 16, v212
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v171, v3, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v75
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v173, v2, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v74
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v11
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v3, v14
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v75, v142, v0 :: v_dual_lshlrev_b32 v74, 16, v231
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v214
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v142, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v3, v142, v3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v50, v142, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v1, 16, v217
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v169, v3, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v170, v2, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v76
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v13
	v_cvt_f32_i32_e32 v3, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v77, v142, v0 :: v_dual_lshlrev_b32 v76, 16, v227
	v_mul_f32_e32 v52, v142, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v2, v142, v2 :: v_dual_lshlrev_b32 v1, 16, v213
	v_dual_mul_f32 v3, v142, v3 :: v_dual_lshlrev_b32 v0, 16, v145
	scratch_load_b32 v145, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v168, v2, v1
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v78
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v15
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v166, v3, v0
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v54, v142, v1 :: v_dual_lshlrev_b32 v1, 16, v146
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v142, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v79, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v147
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v146, off, off offset:276
	scratch_load_b32 v147, off, off offset:280
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v167, v2, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v80
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v78, v142, v1 :: v_dual_lshlrev_b32 v1, 16, v148
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v148, off, off offset:292
	scratch_load_b128 v[9:12], off, off offset:44
	scratch_load_b128 v[13:16], off, off offset:60
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v2, v9
	v_cvt_f32_i32_e32 v3, v10
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v56, 16, v144
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v144, off, off offset:264
	scratch_load_b32 v140, off, off offset:236
	scratch_load_b32 v137, off, off offset:216
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v142, v2
	v_mul_f32_e32 v3, v142, v3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v165, v2, v1 :: v_dual_fmac_f32 v164, v3, v0
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v58
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v57
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v12
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v80, 16, v150
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v34, v142, v1 :: v_dual_lshlrev_b32 v1, 16, v154
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v142, v2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v57, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v153
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v142, v3
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v153, off, off offset:328
	scratch_load_b32 v154, off, off offset:340
	scratch_load_b32 v150, off, off offset:308
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v162, v2, v1
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v60
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	v_cvt_f32_i32_e32 v2, v13
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v36, v142, v1 :: v_dual_lshlrev_b32 v1, 16, v158
	scratch_load_b32 v158, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v163, v3, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v59
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v14
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v58, 16, v152
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v142, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v59, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v157
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v157, off, off offset:356
	scratch_load_b32 v152, off, off offset:324
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v142, v3
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v158, v2, v1
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v62
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v38, v142, v1 :: v_dual_lshlrev_b32 v1, 16, v39
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v2, v142, v2 :: v_dual_fmac_f32 v157, v3, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v61
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v60, 16, v156
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:736
	scratch_load_b128 v[13:16], off, off offset:752
	v_lshlrev_b32_e32 v39, 16, v159
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v61, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v161
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v142, v3
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v155, v2, v1
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v64
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v64, 16, v18
	scratch_load_b32 v156, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v154, v3, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v63
	v_mul_f32_e32 v62, v142, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v1, off, off offset:792 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v63, v142, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v0, off, off offset:796 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_cvt_f32_i32_e32 v3, v10
	v_cvt_f32_i32_e32 v2, v9
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v3, v142, v3 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v153, v3, v0
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v41, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v43
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v142, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v151, v3, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	scratch_load_b32 v0, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v142, v2
	v_cvt_f32_i32_e32 v3, v14
	v_mul_f32_e32 v3, v142, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:784
	scratch_load_b32 v159, off, off offset:644
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v197, v116, v115
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v116, off, off offset:476
	scratch_load_b32 v115, off, off offset:472
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v159, v134, v119
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v115, v95, v72
	scratch_load_b32 v95, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v152, v2, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v18, v142, v1 :: v_dual_lshlrev_b32 v1, 16, v42
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v142, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v42, 16, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v150, v2, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v22
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v13
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v43, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v20, v142, v1 :: v_dual_lshlrev_b32 v1, 16, v44
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v142, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v148, v3, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	scratch_load_b32 v0, off, off offset:780 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v16
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v149, v2, v1
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v3, v142, v3
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:12
	scratch_load_b128 v[13:16], off, off offset:28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v22, v142, v1 :: v_dual_lshlrev_b32 v1, 16, v46
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v2, v142, v2 :: v_dual_lshlrev_b32 v21, 16, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v0, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v45, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v47
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v147, v2, v1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v26
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v9
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v146, v3, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	scratch_load_b32 v0, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v46, v142, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v1, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v142, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v0
	scratch_load_b32 v0, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v47, v142, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v0, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v145, v3, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v0, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v12
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v95, v20, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v142, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v97
	v_mul_f32_e32 v25, v142, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v0, off, off offset:712 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v1, 16, v1
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v143, v3, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v0, off, off offset:720 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v142, v2
	v_cvt_f32_i32_e32 v3, v14
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v144, v2, v1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v11
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v98
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v142, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v98, off, off offset:348
	scratch_load_b32 v97, off, off offset:336
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v10, v142, v1 :: v_dual_lshlrev_b32 v1, 16, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v11, 16, v0
	scratch_load_b32 v0, off, off offset:716 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v97, v18, v17 :: v_dual_lshlrev_b32 v26, 16, v0
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v27, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v29
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v140, v3, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v0, off, off offset:708 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v3, v142, v3
	v_mul_f32_e32 v2, v142, v2
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v141, v2, v1 :: v_dual_lshlrev_b32 v48, 16, v48
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v13
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v100
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v100, off, off offset:364
	scratch_load_b32 v99, off, off offset:352
	v_dual_mul_f32 v12, v142, v1 :: v_dual_lshlrev_b32 v1, 16, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v13, 16, v0
	scratch_load_b32 v0, off, off offset:704 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v99, v62, v39 :: v_dual_lshlrev_b32 v28, 16, v0
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v29, v142, v0 :: v_dual_lshlrev_b32 v0, 16, v31
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v137, v3, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:700
	scratch_load_b32 v194, off, off offset:672
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v142, v2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v139, v2, v1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v15
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v102
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v102, off, off offset:380
	scratch_load_b32 v101, off, off offset:368
	v_dual_mul_f32 v14, v142, v1 :: v_dual_lshlrev_b32 v1, 16, v30
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v15, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:696
	scratch_load_b32 v161, off, off offset:660
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v198, v129, v113
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v194, v131, v130
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v131, off, off offset:584
	scratch_load_b32 v130, off, off offset:580
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v102, v36, v35 :: v_dual_fmac_f32 v101, v38, v37
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v103
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v131, v126, v5
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v130, v127, v209 :: v_dual_mul_f32 v31, v142, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v129, off, off offset:568
	scratch_load_b32 v113, off, off offset:456
	scratch_load_b32 v0, off, off offset:684
	v_fmac_f32_e32 v132, v125, v124
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v125, off, off offset:540
	scratch_load_b32 v124, off, off offset:536
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v129, v82, v81
	scratch_load_b32 v82, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v201, v114, v0
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v134, off, off offset:612
	scratch_load_b32 v119, off, off offset:496
	scratch_load_b32 v0, off, off offset:4
	scratch_load_b32 v114, off, off offset:468
	v_fmac_f32_e32 v156, v135, v120
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:616
	scratch_load_b32 v120, off, off offset:508
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v125, v86, v85
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v86, off, off offset:256
	scratch_load_b32 v85, off, off offset:244
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v113, v50, v49 :: v_dual_fmac_f32 v134, v123, v122
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v123, off, off offset:524
	scratch_load_b32 v122, off, off offset:520
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v0, v121, v136 :: v_dual_fmac_f32 v119, v91, v90
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v135, v186, v184
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v120, v89, v112
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v112, off, off offset:452
	scratch_load_b32 v89, off, off offset:272
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v126, off, off offset:552
	scratch_load_b32 v103, off, off offset:384
	scratch_load_b32 v0, off, off
	scratch_load_b32 v136, off, off offset:4
	scratch_load_b32 v121, off, off offset:512
	v_fmac_f32_e32 v124, v109, v108
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v109, off, off offset:428
	scratch_load_b32 v108, off, off offset:424
	scratch_load_b32 v91, off, off offset:288
	scratch_load_b32 v90, off, off offset:284
	v_fmac_f32_e32 v116, v93, v92
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v93, off, off offset:304
	scratch_load_b32 v92, off, off offset:300
	v_fmac_f32_e32 v114, v94, v71
	scratch_load_b32 v94, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v86, v27, v26 :: v_dual_fmac_f32 v123, v110, v87
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v122, v111, v88
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v111, off, off offset:440
	scratch_load_b32 v88, off, off offset:268
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v142, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v110, off, off offset:436
	scratch_load_b32 v87, off, off offset:260
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(17)
	v_fmac_f32_e32 v112, v73, v96
	s_waitcnt vmcnt(15)
	v_fmac_f32_e32 v126, v107, v106
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v107, off, off offset:416
	scratch_load_b32 v106, off, off offset:412
	s_waitcnt vmcnt(15)
	v_fmac_f32_e32 v0, v105, v128
	scratch_store_b32 off, v7, off offset:204 ; 4-byte Folded Spill
	scratch_load_b32 v96, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v121, v66, v65 :: v_dual_fmac_f32 v108, v77, v76
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v128, off, off
	scratch_load_b32 v105, off, off offset:400
	v_dual_fmac_f32 v103, v59, v58 :: v_dual_fmac_f32 v100, v61, v60
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v94, v43, v42 :: v_dual_fmac_f32 v89, v25, v48
	v_dual_fmac_f32 v93, v45, v44 :: v_dual_fmac_f32 v92, v22, v21
	v_fmac_f32_e32 v91, v47, v24
	v_fmac_f32_e32 v109, v54, v53
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v111, v52, v51 :: v_dual_fmac_f32 v138, v2, v1
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v104
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v127, off, off offset:556
	scratch_load_b32 v104, off, off offset:396
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v110, v75, v74
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v107, v79, v56 :: v_dual_fmac_f32 v106, v78, v55
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v30, v142, v1
	scratch_load_b32 v142, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v161, v118, v117
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v118, off, off offset:492
	scratch_load_b32 v117, off, off offset:480
	v_dual_fmac_f32 v88, v10, v9 :: v_dual_fmac_f32 v87, v12, v11
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v105, v57, v80 :: v_dual_fmac_f32 v82, v30, v15
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v96, v41, v64 :: v_dual_fmac_f32 v127, v84, v83
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v84, off, off offset:240
	scratch_load_b32 v83, off, off offset:228
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v104, v34, v33
	v_dual_fmac_f32 v98, v63, v40 :: v_dual_fmac_f32 v85, v14, v13
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v142, v8, v6
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v118, v68, v67 :: v_dual_fmac_f32 v117, v70, v69
	v_fmac_f32_e32 v90, v46, v23
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v84, v29, v28
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v83, v31, v16
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:924
	scratch_load_b32 v81, off, off offset:928
	scratch_load_b32 v76, off, off offset:932
.LBB0_4:                                ; %._crit_edge
	.loc	1 185 44 is_stmt 1              ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v2, 0xbfb8aa3b, v198 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v201
	v_dual_mul_f32 v4, 0xbfb8aa3b, v194 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v197
	v_dual_mul_f32 v12, 0xbfb8aa3b, v161 :: v_dual_mul_f32 v63, 0xbfb8aa3b, v142
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_dual_mul_f32 v8, 0xbfb8aa3b, v160 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v159
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s2, s33, 7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s22, s22, s23
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v60, 0xbfb8aa3b, v156 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v201 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v107
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v48, 0xbfb8aa3b, v113
	v_dual_mul_f32 v62, 0xbfb8aa3b, v136 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v135
	v_exp_f32_e32 v2, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v198
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_dual_mul_f32 v58, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v131
	v_dual_mul_f32 v18, 0xbfb8aa3b, v132 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v130
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v2, v2, v3
	v_exp_f32_e32 v3, v7
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_dual_mul_f32 v56, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v124
	v_dual_mul_f32 v80, 0xbfb8aa3b, v128 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v127
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v26, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v123
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v3, v3, v6
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v54, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v120
	v_dual_mul_f32 v32, 0xbfb8aa3b, v122 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v116
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v64, null, v2, v2, v201
	v_div_scale_f32 v68, s0, v201, v2, v201
	v_div_scale_f32 v66, null, v3, v3, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v65, v64
	v_div_scale_f32 v4, s1, v198, v3, v198
	v_rcp_f32_e32 v67, v66
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v52, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v118
	v_dual_mul_f32 v38, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v114
	v_dual_mul_f32 v50, 0xbfb8aa3b, v117 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v112
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v6, -v64, v65, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v91
	v_dual_mul_f32 v44, 0xbfb8aa3b, v115 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v110
	v_dual_mul_f32 v46, 0xbfb8aa3b, v111 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v109
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v65, v6, v65
	v_fma_f32 v6, -v66, v67, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v42, 0xbfb8aa3b, v108 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v103
	v_dual_mul_f32 v40, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v70, v68, v65 :: v_dual_fmac_f32 v67, v6, v67
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v36, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v98
	v_dual_mul_f32 v34, 0xbfb8aa3b, v102 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v101
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v74, -v64, v70, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v75, v4, v67 :: v_dual_mul_f32 v30, 0xbfb8aa3b, v100
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v25, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v99
	v_mul_f32_e32 v19, 0xbfb8aa3b, v93
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v70, v74, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v66, v75, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v24, 0xbfb8aa3b, v96 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v95
	v_dual_mul_f32 v22, 0xbfb8aa3b, v94 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v89
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v64, -v64, v70, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v75, v74, v67 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v92
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v17, 0xbfb8aa3b, v90 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v88
	v_mul_f32_e32 v11, 0xbfb8aa3b, v87
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v64, v64, v65, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v4, -v66, v75, v4
	s_mov_b32 vcc_lo, s1
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v10, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v84
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v64, v64, v2, v201
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v194
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v4, v4, v67, v75
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_dual_mul_f32 v9, 0xbfb8aa3b, v85 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v82
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v1, 1, v81
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v3, v4, v3, v198
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v255, v64
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v73, v73
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x1e0, v0
	s_and_b32 s21, s21, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v66, v73, v72
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v197
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v64, v224, v3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, 0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v71, v5
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v161
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v4.h
	v_mov_b16_e32 v72.l, v64.h
	v_mov_b16_e32 v72.h, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v73, v73
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v75, 1, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_and_b32_e32 v72, 1, v72
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v69, v71, v69
	v_mul_f32_e32 v5, 0xbfb8aa3b, v83
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v71, s23, v76
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_add3_u32 v75, v4, v75, 0x7fff
	v_add3_u32 v72, v64, v72, 0x7fff
	.loc	1 185 38 is_stmt 1              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v68, 1.0, v69
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v69, null, v66, v66, v194
	s_mov_b32 s23, 0x31027000
	v_div_scale_f32 v65, null, v68, v68, v197
	.loc	1 190 18 is_stmt 1              ; generate_amdgcn.py:190:18
	v_add3_u32 v2, s22, s2, v71
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v71, v69
	v_div_scale_f32 v12, s0, v197, v68, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v67, v65
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v1, v2, v1, 1
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_add_nc_u32_e32 v2, 64, v1
	.loc	1 185 26 is_stmt 1              ; generate_amdgcn.py:185:26
	v_fma_f32 v74, -v69, v71, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v65, v67, 1.0
	v_fmac_f32_e32 v71, v74, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v70, v67
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v8, s1, v194, v66, v194
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v70, v73, v70
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v76, v12, v67
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v160
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v78, -v65, v76, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v4.h, 0x7fff, v75.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v76, v78, v67
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v73, v77
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v12, -v65, v76, v12
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v65, 1.0, v70
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v12, v12, v67, v76
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v76, 0, 0x42800000, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v79, v8, v71
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v67, v73, v74
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v12, v12, v68, v197
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v156
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v78, -v69, v79, v8
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v67, 1.0, v67 :: v_dual_mul_f32 v12, v223, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v76, v76
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v79, v78, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v12.h
	v_cmp_o_f32_e64 s1, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v8, -v69, v79, v8
	v_div_scale_f32 v69, null, v65, v65, v161
	v_div_fmas_f32 v8, v8, v71, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v68, v69
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v64, null, v67, v67, v160
	v_div_fixup_f32 v8, v8, v66, v194
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v4.l, 0x7fff, v72.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v70, v64
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v66, v211, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v8, -v69, v68, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.h, v3.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.l, v66.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v68, v8, v68
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v72, vcc_lo, v161, v65, v161
	v_fma_f32 v60, -v64, v70, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v74, v72, v68
	v_fmac_f32_e32 v70, v60, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v69, v74, v72
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v71, 0xbfb8aa3b, v159 :: v_dual_fmac_f32 v74, v77, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v60, v71
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v71, s0, v160, v67, v160
	v_dual_mul_f32 v78, v71, v70 :: v_dual_and_b32 v73, 1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v73, v12, v73, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v12, v60, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v60, -v64, v78, v71
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v61
	v_cndmask_b16 v8.h, 0x7fff, v73.h, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v73, 1.0, v12
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v12, -v69, v74, v72
	v_fmac_f32_e32 v78, v60, v70
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v60, v76, v75
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v66, v61, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v69, null, v73, v73, v159
	v_div_fmas_f32 v12, v12, v68, v74
	v_fma_f32 v64, -v64, v78, v71
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v68, v69
	v_div_fixup_f32 v12, v12, v65, v161
	v_div_fmas_f32 v64, v64, v70, v78
	v_div_scale_f32 v65, null, v60, v60, v156
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_mov_b16_e32 v71.h, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v64, v64, v67, v160
	v_rcp_f32_e32 v67, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v69, v68, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.l, 0x7fff, v61.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v68, v66, v68
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v70, -v65, v67, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v66, 0xbfb8aa3b, v142 :: v_dual_fmac_f32 v67, v70, v67
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v61, v204, v64
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v62, s1, v156, v60, v156
	v_div_scale_f32 v63, s0, v159, v73, v159
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v76, v62, v67
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v71.l, v61.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v12, v210, v12
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v71, 1, v71
	v_mov_b16_e32 v3.l, v12.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v136
	v_ldexp_f32 v64, v66, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v12, v12
	v_add3_u32 v71, v61, v71, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v72, v63, v68 :: v_dual_and_b32 v77, 1, v3
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v66, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v74, v12, v77, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v75, -v69, v72, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v72, v75, v68
	v_fma_f32 v75, -v65, v76, v62
	v_fma_f32 v12, -v69, v72, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v76, v75, v67 :: v_dual_add_f32 v63, 1.0, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v69.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v64, v12, v68, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v12, -v65, v76, v62
	v_div_scale_f32 v65, null, v63, v63, v142
	s_mov_b32 vcc_lo, s1
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v62, v66, v70
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v66, v12, v67, v76
	v_rcp_f32_e32 v67, v65
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v64, v64, v73, v159
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v12.h, 0x7fff, v74.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v60, v66, v60, v156
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v12.l, 0x7fff, v71.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v59, s0, v142, v63, v142
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v65, v67, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v67, v66, v67 :: v_dual_add_f32 v62, 1.0, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v135
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v73, v59, v67
	v_div_scale_f32 v61, null, v62, v62, v136
	v_div_scale_f32 v15, s1, v136, v62, v136
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v68, v61
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v75, -v65, v73, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v74, 0xbfb8aa3b, v134 :: v_dual_fmac_f32 v73, v75, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v66, v70, v66
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v71, -v61, v68, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v65, v73, v59
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v65, 1.0, v66 :: v_dual_fmac_f32 v68, v71, v68
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v59, v59, v67, v73
	v_mul_f32_e32 v76, v15, v68
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v59, v59, v63, v142
	v_fma_f32 v75, -v61, v76, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v64, v203, v64 :: v_dual_mul_f32 v59, v200, v59
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v76, v75, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v64.h
	v_cmp_o_f32_e64 s2, v64, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v15, -v61, v76, v15
	v_div_scale_f32 v61, null, v65, v65, v135
	v_div_fmas_f32 v66, v15, v68, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v67, v61
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v60, v183, v60
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v68.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v62, v66, v62, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v69.l, v60.h
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v69, v60, v69, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v60, v199, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v62, -v61, v67, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v15.l, 0x7fff, v69.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v67, v62, v67
	v_div_scale_f32 v58, s0, v135, v65, v135
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v68.l, v60.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v72, 1, v3
	v_mov_b16_e32 v3.l, v59.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v133
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v72, v64, v72, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v64, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v68, 1, v68
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v18, v69
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v15.h, 0x7fff, v72.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v72, v58, v67
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v132
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v68, v60, v68, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v64, v64, v71
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v74, -v61, v72, v58
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v71, 1, v3
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v62, v18, v62
	v_exp_f32_e32 v73, v73
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v72, v74, v67
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v71, v59, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v63, null, v64, v64, v134
	v_fma_f32 v58, -v61, v72, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.h, 0x7fff, v71.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v66, v63
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v58, v58, v67, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v58, v58, v65, v135
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v72, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v70, -v63, v66, 1.0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v58, v196, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v58.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v66, v70, v66
	v_div_scale_f32 v70, s1, v134, v64, v134
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v58, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v75, v70, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v63, v75, v70
	v_fmac_f32_e32 v75, v59, v66
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v59, 1.0, v62
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v62, v73, v69
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v69, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v61, -v63, v75, v70
	v_div_scale_f32 v63, null, v59, v59, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v69, v58, v69, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v61, v61, v66, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v65, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v60, v61, v64, v134
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.l, 0x7fff, v68.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.h, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v60, v195, v60
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v64, -v63, v65, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.l, v60.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v65, v64, v65
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v68, vcc_lo, v133, v59, v133
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v131
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v70, v68, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v60, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v73, -v63, v70, v68
	v_fmac_f32_e32 v70, v73, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v63, v70, v68
	v_div_fmas_f32 v63, v63, v65, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v59, v63, v59, v133
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v62, 1.0, v62 :: v_dual_mul_f32 v59, v193, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v61, null, v62, v62, v132
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v59.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v66, v61
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v130
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v59, v59
	v_and_b32_e32 v73, 1, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v72, v72
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v21, -v61, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v66, v21, v66
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v21, v67
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v67, s0, v132, v62, v132
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v74, v67, v66
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v58, v21, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v64, -v61, v74, v67
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.h, 0x7fff, v69.h, s1
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v58, 1.0, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v74, v64, v66
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v64, v72, v71
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v68, null, v58, v58, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v61, v74, v67
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.h, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v65, v68
	v_div_fmas_f32 v61, v61, v66, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v63, null, v64, v64, v130
	v_div_scale_f32 v74, s1, v130, v64, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v60, v61, v62, v132
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.l, 0x7fff, v57.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v61, -v68, v65, 1.0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v62, v63
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v57, v192, v60
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v56, s0, v131, v58, v131
	v_fmac_f32_e32 v65, v61, v65
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v80
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.l, v57.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v69, v56, v65
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v129
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v66, -v63, v62, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v67, 1, v67
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v71, -v68, v69, v56
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v61, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v62, v66, v62
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v128
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v69, v71, v65
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v72, v74, v62
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v67, v57, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v56, -v68, v69, v56
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v60, v61, v60
	v_exp_f32_e32 v61, v70
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v71, -v63, v72, v74
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v70, v59, v73, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v56, v56, v65, v69
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v59, 1.0, v60
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v72, v71, v62
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v65.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v56, v56, v58, v131
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v73.h, 0x7fff, v70.h, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v60, v61, v66
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v63, -v63, v72, v74
	v_div_scale_f32 v61, null, v59, v59, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v62, v63, v62, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v63, v61
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v57, null, v60, v60, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v58, v62, v64, v130
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v73.l, 0x7fff, v67.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v64, v57
	v_div_scale_f32 v55, s0, v129, v59, v129
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v61, v63, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v58, v190, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v63, v62, v63
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v67, -v57, v64, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v26, s1, v128, v60, v128
	v_mul_f32_e32 v69, v55, v63
	v_fmac_f32_e32 v64, v67, v64
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v127
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v65.l, v58.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v71, -v61, v69, v55
	v_mul_f32_e32 v72, v26, v64
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v66, v66
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v65, 1, v65
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v69, v71, v63
	v_fma_f32 v71, -v57, v72, v26
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v65, v58, v65, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v126
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v55, -v61, v69, v55
	v_fmac_f32_e32 v72, v71, v64
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v62, v66, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v55, v55, v63, v69
	v_fma_f32 v26, -v57, v72, v26
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v61, 1.0, v62
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v55, v55, v59, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v62, v26, v64, v72
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v57, null, v61, v61, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v55, v189, v55
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v59, v62, v60, v128
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v65.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v63, v57
	v_div_scale_f32 v54, s0, v127, v61, v127
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v58, v188, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v56, v191, v56
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v64.h, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v64.l, v58.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v56.h
	v_cmp_o_f32_e64 s2, v56, v56
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v59, -v57, v63, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v64, 1, v64
	v_and_b32_e32 v68, 1, v3
	v_mov_b16_e32 v3.l, v55.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v63, v59, v63
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v68, v56, v68, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v56, v70
	v_exp_f32_e32 v29, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v58, v64, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v68.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v68, v54, v63
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v56, v56, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v67, 1, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v70, -v57, v68, v54
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v59, v29, v59
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v124
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v67, v55, v67, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v68, v70, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v69, v69
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v60, null, v56, v56, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v57, v68, v54
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.h, 0x7fff, v67.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v62, v60
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v54, v54, v63, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v54, v54, v61, v127
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v68, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v66, -v60, v62, 1.0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v54, v187, v54
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v62, v66, v62
	v_div_scale_f32 v66, s1, v126, v56, v126
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v54.h
	v_cmp_o_f32_e64 s1, v54, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v71, v66, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v60, v71, v66
	v_fmac_f32_e32 v71, v55, v62
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v55, 1.0, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v59, v69, v65
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v65, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v57, -v60, v71, v66
	v_div_scale_f32 v60, null, v55, v55, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v65, v54, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v57, v57, v62, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	scratch_load_b32 v58, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v61, v60
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.l, 0x7fff, v64.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v53.h, v3.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v123
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v56, v57, v56, v126
	v_div_scale_f32 v57, null, v59, v59, v124
	v_rcp_f32_e32 v62, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v57, v62, 1.0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v56, v58, v56
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v58, -v60, v61, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v53.l, v56.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v61, v58, v61
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v64, vcc_lo, v125, v55, v125
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v53, 1, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v66, v64, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v53, v56, v53, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v69, -v60, v66, v64
	v_fmac_f32_e32 v66, v69, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v60, v66, v64
	v_div_fmas_f32 v60, v60, v61, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v55, v60, v55, v125
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v55, v185, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v55.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v62, v32, v62
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v32, v63
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v63, s0, v124, v59, v124
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v69, 1, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v70, v63, v62
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v54, v32, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v58, -v57, v70, v63
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.h, 0x7fff, v65.h, s1
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v54, 1.0, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v70, v58, v62
	v_div_scale_f32 v64, null, v54, v54, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v57, v70, v63
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v63.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v61, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v57, v57, v62, v70
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v56, v57, v59, v124
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v53.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	scratch_load_b32 v53, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v57, -v64, v61, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v52, s0, v123, v54, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v61, v57, v61
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v65, v52, v61 :: v_dual_fmac_f32 v68, 0xbfb8aa3b, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v121
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v58, v68, v67
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v67, -v64, v65, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v58, 1.0, v58 :: v_dual_fmac_f32 v65, v67, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v60, null, v58, v58, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v64, v65, v52
	v_rcp_f32_e32 v59, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v60, v59, 1.0
	v_fmac_f32_e32 v59, v62, v59
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v53, v53, v56
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v35, s1, v122, v58, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v63.l, v53.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v56, v57, v56
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v68, v35, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v63, 1, v63
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v52, v52, v61, v65
	v_fma_f32 v67, -v60, v68, v35
	s_mov_b32 vcc_lo, s1
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v120
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v63, v53, v63, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v52, v52, v54, v123
	v_fmac_f32_e32 v68, v67, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.h, v3.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v57, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v66, v55, v69, 0x7fff
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v55, 1.0, v56
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v35, -v60, v68, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v59, v35, v59, v68
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v56, v57, v62
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v57, null, v55, v55, v121
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v54, v59, v58, v122
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	scratch_load_b32 v58, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v60, v57
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v35.l, 0x7fff, v63.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v51, s0, v121, v55, v121
	v_div_scale_f32 v53, null, v56, v56, v120
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v54, v182, v54
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v35.h, 0x7fff, v66.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v59, v53
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.l, v54.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v63, -v53, v59, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v54, v61, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v59, v63, v59 :: v_dual_mul_f32 v52, v58, v52
	v_fma_f32 v58, -v57, v60, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v52.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v60, v58, v60
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v38, s1, v120, v56, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v65, v51, v60
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v58, v62, v58
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v68, v38, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v67, -v57, v65, v51
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v64, 1, v3
	v_cmp_o_f32_e64 s2, v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v66, 0xbfb8aa3b, v119 :: v_dual_fmac_f32 v65, v67, v60
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v67, -v53, v68, v38
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v52, v64, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v52, v66
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v51, -v57, v65, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v68, v67, v59 :: v_dual_add_f32 v57, 1.0, v58
	v_div_fmas_f32 v51, v51, v60, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v53, v68, v38
	v_div_scale_f32 v53, null, v57, v57, v118
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v51, v51, v55, v121
	v_div_fmas_f32 v58, v38, v59, v68
	v_rcp_f32_e32 v59, v53
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_cndmask_b16 v38.h, 0x7fff, v64.h, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v51, v181, v51
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v55, v58, v56, v120
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v52, v52, v63
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v38.l, 0x7fff, v61.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v50, s0, v118, v57, v118
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v54, v180, v55
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v55, -v53, v59, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v51.h
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.l, v54.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v59, v55, v59
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v117
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v63, 1, v3
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v64, v50, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v41, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v56, null, v52, v52, v119
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v66, -v53, v64, v50
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v63, v51, v63, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v58, v56
	v_fmac_f32_e32 v64, v66, v59
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v55, v41, v55
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v116
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.h, 0x7fff, v63.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v50, -v53, v64, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.h, v3.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v65, v65
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v44
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v62, -v56, v58, 1.0
	v_div_fmas_f32 v50, v50, v59, v64
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v60, 1, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v64, 0, 0x42800000, s0
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v50, v50, v57, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v60, v54, v60, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v50, v178, v50
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v50.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v58, v62, v58
	v_div_scale_f32 v62, s1, v119, v52, v119
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v50, v50
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v67, v62, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v56, v67, v62
	v_fmac_f32_e32 v67, v51, v58
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v51, 1.0, v55
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v55, v65, v61
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v53, -v56, v67, v62
	v_div_scale_f32 v56, null, v51, v51, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v50, v61, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v53, v53, v58, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v57, v56
	v_div_fixup_f32 v52, v53, v52, v119
	v_div_scale_f32 v53, null, v55, v55, v116
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.l, 0x7fff, v60.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v52, v179, v52
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v58, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v56, v57, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.h, v3.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.l, v52.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v57, v54, v57
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v114
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v60, vcc_lo, v117, v51, v117
	v_fma_f32 v44, -v53, v58, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v58, v44, v58 :: v_dual_and_b32 v49, 1, v49
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v44, v59
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v59, s0, v116, v55, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v49, v52, v49, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v66, v59, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v50, v44, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v54, -v53, v66, v59
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.h, 0x7fff, v61.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v66, v54, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v53, v66, v59
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v59.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v62, v60, v57
	v_fma_f32 v65, -v56, v62, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v65, v57
	v_fma_f32 v56, -v56, v62, v60
	v_div_scale_f32 v60, null, v50, v50, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v56, v56, v57, v62
	v_rcp_f32_e32 v57, v60
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v51, v56, v51, v117
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v51, v177, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v51.h
	v_cmp_o_f32_e64 s2, v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v65, 1, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v53, v53, v58, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v52, v53, v55, v116
	v_fma_f32 v53, -v60, v57, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.l, 0x7fff, v49.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v48, s0, v114, v50, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v57, v53, v57
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v49, v176, v52
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v61, v48, v57 :: v_dual_fmac_f32 v64, 0xbfb8aa3b, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v113
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v59.l, v49.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v53, v53
	v_dual_fmac_f32 v62, 0xbfb8aa3b, v112 :: v_dual_and_b32 v59, 1, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v59, v49, v59, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v54, v64, v63
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v63, -v60, v61, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v52, v53, v52
	v_exp_f32_e32 v53, v62
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v62, v51, v65, 0x7fff
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v54, 1.0, v54 :: v_dual_fmac_f32 v61, v63, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v51, 1.0, v52
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v56, null, v54, v54, v115
	v_div_scale_f32 v47, s1, v115, v54, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v60, v61, v48
	v_rcp_f32_e32 v55, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v56, v55, 1.0
	v_fmac_f32_e32 v55, v58, v55
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v48, v48, v57, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v64, v47, v55
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v52, v53, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v53, null, v51, v51, v113
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v63, -v56, v64, v47
	v_div_fixup_f32 v48, v48, v50, v114
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.h, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v64, v63, v55
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v48, v174, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v47, -v56, v64, v47
	v_rcp_f32_e32 v56, v53
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v48.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v55, v47, v55, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v49, null, v52, v52, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v47.h, 0x7fff, v62.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v50, v55, v54, v115
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v53, v56, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v47.l, 0x7fff, v59.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v46, s0, v113, v51, v113
	v_fmac_f32_e32 v56, v54, v56
	v_rcp_f32_e32 v55, v49
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v61, v46, v56 :: v_dual_and_b32 v60, 1, v3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v48, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v111
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v63, -v53, v61, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v49, v55, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v60, v48, v60, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v58, v58
	v_dual_fmac_f32 v62, 0xbfb8aa3b, v110 :: v_dual_fmac_f32 v61, v63, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v55, v59, v55
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v48, v62
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v46, -v53, v61, v46
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v50, v175, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v54, v58, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v46, v46, v56, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.l, v50.h
	v_mov_b16_e32 v56.h, v3.h
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v53, 1.0, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v48, v48, v59
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v46, v46, v51, v113
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v48, 1.0, v48 :: v_dual_and_b32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v46, v172, v46
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v50, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v3.l, v46.h
	v_and_b32_e32 v59, 1, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v45, s1, v112, v52, v112
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v59, v46, v59, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v64, v45, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v49, v64, v45
	v_fmac_f32_e32 v64, v63, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v49, v64, v45
	v_div_scale_f32 v49, null, v53, v53, v111
	v_div_fmas_f32 v54, v45, v55, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v55, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_cndmask_b16 v45.h, 0x7fff, v60.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v51, v54, v52, v112
	v_div_scale_f32 v52, null, v48, v48, v110
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.l, 0x7fff, v57.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v50, v173, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v54, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v49, v55, 1.0
	v_div_scale_f32 v43, s0, v111, v53, v111
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v56.l, v50.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v55, v51, v55
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v109
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v58, -v52, v54, 1.0
	v_mul_f32_e32 v60, v43, v55
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v56, 1, v56
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v42, v57
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v54, v58, v54
	v_div_scale_f32 v58, s1, v110, v48, v110
	v_fma_f32 v62, -v49, v60, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v63, v58, v54
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v108 :: v_dual_fmac_f32 v60, v62, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v51, v42, v51
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.h, 0x7fff, v59.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v46, -v52, v63, v58
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v43, -v49, v60, v43
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v61, v61
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v56, v50, v56, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v63, v46, v54 :: v_dual_add_f32 v46, 1.0, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v43, v43, v55, v60
	s_mov_b32 vcc_lo, s1
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v39
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v49, -v52, v63, v58
	v_div_scale_f32 v52, null, v46, v46, v109
	v_div_fixup_f32 v43, v43, v53, v111
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v51, v61, v57
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v49, v49, v54, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v53, v52
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v43, v171, v43
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v48, v49, v48, v110
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.l, 0x7fff, v56.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v49, null, v51, v51, v108
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v52, v53, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v43.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v54, v49
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v60, 0, 0x42800000, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v53, v50, v53
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v56, vcc_lo, v109, v46, v109
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v106
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v57, 1, v3
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v58, v56, v53
	v_fma_f32 v39, -v49, v54, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v43, v43
	v_add3_u32 v57, v43, v57, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v60, v60
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v61, -v52, v58, v56
	v_fmac_f32_e32 v54, v39, v54
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v39, v55
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v55, s0, v108, v51, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v61, v53
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v40.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v62, v55, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v52, -v52, v58, v56
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v43, v39, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v50, -v49, v62, v55
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v39.h, 0x7fff, v57.h, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v52, v52, v53, v58
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v43, 1.0, v43 :: v_dual_fmac_f32 v62, v50, v54
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v50, v60, v59
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v46, v52, v46, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v56, null, v43, v43, v106
	v_fma_f32 v49, -v49, v62, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v46, v169, v46
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v53, v56
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v55.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v49, v49, v54, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v46.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v48, v170, v48
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v52, null, v50, v50, v107
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v46, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v61, 1, v3
	v_mov_b16_e32 v40.l, v48.h
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v48, v40, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v48, v49, v51, v108
	v_fma_f32 v49, -v56, v53, 1.0
	v_rcp_f32_e32 v51, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v39.l, 0x7fff, v40.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v53, v49, v53 :: v_dual_mul_f32 v40, v168, v48
	v_div_scale_f32 v37, s0, v106, v43, v106
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v54, -v52, v51, 1.0
	v_mul_f32_e32 v57, v37, v53
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v104
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v36, s1, v107, v50, v107
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v51, v54, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v49, v49
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v59, -v56, v57, v37
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v105
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v60, v36, v51
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v55.l, v40.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v57, v59, v53
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v59, -v52, v60, v36
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v48, v49, v48
	v_exp_f32_e32 v49, v58
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v58, v46, v61, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v37, -v56, v57, v37
	v_fmac_f32_e32 v60, v59, v51
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v46, 1.0, v48 :: v_dual_and_b32 v55, 1, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v37, v37, v53, v57
	v_fma_f32 v36, -v52, v60, v36
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v48, v49, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v49, null, v46, v46, v104
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v55, v40, v55, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v51, v36, v51, v60
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v48, 1.0, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v52, v49
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v37, v37, v43, v106
	v_div_fixup_f32 v43, v51, v50, v107
	v_div_scale_f32 v40, null, v48, v48, v105
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.l, 0x7fff, v55.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v37, v166, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v51, v40
	v_fma_f32 v50, -v49, v52, 1.0
	v_div_scale_f32 v34, s0, v104, v46, v104
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.h, 0x7fff, v58.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v52, v50, v52
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v37.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v55, -v40, v51, 1.0
	v_dual_mul_f32 v57, v34, v52 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v102
	v_div_scale_f32 v33, s1, v105, v48, v105
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v51, v55, v51
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v56, 1, v3
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v54, v54
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v59, -v49, v57, v34
	v_mul_f32_e32 v60, v33, v51
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v103
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v56, v37, v56, 0x7fff
	v_cmp_o_f32_e64 s2, v37, v37
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v57, v59, v52
	v_fma_f32 v59, -v40, v60, v33
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v37, v58
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v50, v54, v50
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v49, v57, v34
	v_fmac_f32_e32 v60, v59, v51
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v43, v167, v43
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v49, 1.0, v50
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v34, v34, v52, v57
	v_fma_f32 v33, -v40, v60, v33
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v37, v37, v55
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v53.l, v43.h
	v_mov_b16_e32 v53.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v40, null, v49, v49, v102
	v_div_fmas_f32 v50, v33, v51, v60
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v53, 1, v53
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v51, v40
	v_div_fixup_f32 v34, v34, v46, v104
	v_div_fixup_f32 v46, v50, v48, v105
	v_div_scale_f32 v48, null, v37, v37, v103
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v53, v43, v53, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v43, v165, v46
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v50, v48
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v34, v164, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v46, -v40, v51, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.l, 0x7fff, v53.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, s0, v102, v49, v102
	v_fmac_f32_e32 v51, v46, v51
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v34.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v54, -v48, v50, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.h, 0x7fff, v56.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v56, v31, v51 :: v_dual_fmac_f32 v53, 0xbfb8aa3b, v101
	v_fmac_f32_e32 v50, v54, v50
	v_div_scale_f32 v54, s1, v103, v37, v103
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v55, 1, v3
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v30, v53
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v59, v54, v50
	v_fma_f32 v58, -v40, v56, v31
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v100
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v55, v34, v55, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v48, v59, v54
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v57, v57
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v56, v58, v51
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v46, v30, v46
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v52.l, v43.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v59, v34, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v52.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v31, -v40, v56, v31
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v46
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.h, 0x7fff, v55.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v40, -v48, v59, v54
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v46, v57, v53
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v52, 1, v52
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v31, v31, v51, v56
	s_mov_b32 vcc_lo, s1
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v40, v40, v50, v59
	v_div_scale_f32 v48, null, v34, v34, v101
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v52, v43, v52, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v37, v40, v37, v103
	v_div_scale_f32 v40, null, v46, v46, v100
	v_div_fixup_f32 v31, v31, v49, v102
	v_rcp_f32_e32 v49, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.l, 0x7fff, v52.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v50, v40
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v31, v163, v31
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v37, v162, v37
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.h, v3.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v31.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v43, -v48, v49, 1.0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v27, -v40, v50, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v99
	v_cndmask_b32_e64 v56, 0, 0x42800000, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v49, v43, v49
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v52, vcc_lo, v101, v34, v101
	v_fmac_f32_e32 v50, v27, v50
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v27, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v51, s0, v100, v46, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v54, v52, v49 :: v_dual_and_b32 v53, 1, v3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v31, v31
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v58, v51, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.l, v37.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v57, -v48, v54, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v53, v31, v53, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v31, v27, v43
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v43, -v40, v58, v51
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v98
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v54, v57, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_and_b32 v28, 1, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v58, v43, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v56, v56
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v48, -v48, v54, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v37, v28, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v52, null, v31, v31, v99
	v_fma_f32 v40, -v40, v58, v51
	v_div_fmas_f32 v48, v48, v49, v54
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v49, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v40, v40, v50, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v43, v56, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.h, 0x7fff, v53.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v37, v40, v46, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.l, 0x7fff, v28.h, vcc_lo
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v43, 1.0, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v40, -v52, v49, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v28, v158, v37
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, s0, v99, v31, v99
	v_fmac_f32_e32 v49, v40, v49
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.l, v28.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v53, v25, v49
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v40, 0xbfb8aa3b, v97 :: v_dual_and_b32 v51, 1, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v34, v48, v34, v101
	v_div_scale_f32 v48, null, v43, v43, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v40, v40
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v34, v157, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v46, v48
	v_div_scale_f32 v24, s1, v98, v43, v98
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v34.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v55, -v52, v53, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v34, v34
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v37, v40, v37
	v_exp_f32_e32 v40, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v57, 1, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v50, -v48, v46, 1.0
	v_fmac_f32_e32 v53, v55, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v28, v51, 0x7fff
	v_add3_u32 v54, v34, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v46, v50, v46
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v37
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v25, -v52, v53, v25
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v56, v24, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v37, v40, v50
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v40, null, v34, v34, v97
	v_div_fmas_f32 v25, v25, v49, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v48, v56, v24
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v25, v25, v31, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v56, v55, v46 :: v_dual_mul_f32 v25, v154, v25
	v_fma_f32 v24, -v48, v56, v24
	v_rcp_f32_e32 v48, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v25.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v46, v24, v46, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v37, v37, v96
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.h, 0x7fff, v54.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v31, v46, v43, v98
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.l, 0x7fff, v51.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v46, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v40, v48, 1.0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v23, s0, v97, v34, v97
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v52, 1, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v48, v43, v48
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v51, -v28, v46, 1.0
	v_mul_f32_e32 v53, v23, v48
	v_div_scale_f32 v22, s1, v96, v37, v96
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v95
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v46, v51, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v55, -v40, v53, v23
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v52, v25, v52, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v50, v50
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v56, v22, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v94 :: v_dual_fmac_f32 v53, v55, v48
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v25, v25
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v55, -v28, v56, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v25, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v23, -v40, v53, v23
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v31, v155, v31
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v43, v50, v43
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v56, v55, v46
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v23, v23, v48, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v40, 1.0, v43
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v22, -v28, v56, v22
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v25, v25, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.l, v31.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v40, v40, v95
	v_div_fmas_f32 v43, v22, v46, v56
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v49, 1, v49
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v46, v28
	v_div_fixup_f32 v23, v23, v34, v97
	v_div_fixup_f32 v34, v43, v37, v96
	v_div_scale_f32 v37, null, v25, v25, v94
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v49, v31, v49, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v31, v152, v34
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v43, v37
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v23, v153, v23
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v28, v46, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v49.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v20, s0, v95, v40, v95
	v_fmac_f32_e32 v46, v34, v46
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v23.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v50, -v37, v43, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.h, 0x7fff, v52.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v52, v20, v46 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v92
	v_fmac_f32_e32 v43, v50, v43
	v_div_scale_f32 v50, s1, v94, v25, v94
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v51, 1, v3
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v19, v49
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v55, v50, v43
	v_fma_f32 v54, -v28, v52, v20
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v93
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v23, v51, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v23, -v37, v55, v50
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v53, v53
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v52, v54, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v34, v19, v34
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v48.l, v31.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v55, v23, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v48.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v20, -v28, v52, v20
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v23, 1.0, v34
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.h, 0x7fff, v51.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v28, -v37, v55, v50
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v34, v53, v49
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v48, 1, v48
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v20, v20, v46, v52
	s_mov_b32 vcc_lo, s1
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v28, v43, v55
	v_div_scale_f32 v37, null, v23, v23, v92
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v48, v31, v48, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v25, v28, v25, v94
	v_div_scale_f32 v28, null, v34, v34, v93
	v_div_fixup_f32 v20, v20, v40, v95
	v_rcp_f32_e32 v40, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.l, 0x7fff, v48.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v43, v28
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v25, v150, v25 :: v_dual_mul_f32 v20, v151, v20
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, v3.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v51, 0, 0x42800000, s0
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v31, -v37, v40, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v16, -v28, v43, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v46, 0xbfb8aa3b, v90 :: v_dual_fmac_f32 v51, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v40, v31, v40
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v48, vcc_lo, v92, v23, v92
	v_fmac_f32_e32 v43, v16, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v16, v46
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v46, s0, v93, v34, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v49, v48, v40
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v25.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v51, v51
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v54, v46, v43
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v20.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v53, -v37, v49, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v16, v16, v31
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v31, -v28, v54, v46
	v_dual_fmac_f32 v49, v53, v40 :: v_dual_and_b32 v52, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v25, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v25, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v54, v31, v43
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v25, v51, v50
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v52, v20, v52, 0x7fff
	v_cmp_o_f32_e64 s1, v20, v20
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v20, -v37, v49, v48
	v_fma_f32 v28, -v28, v54, v46
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, null, v16, v16, v90
	v_div_fmas_f32 v20, v20, v40, v49
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v40, null, v25, v25, v91
	v_div_fmas_f32 v28, v28, v43, v54
	v_rcp_f32_e32 v37, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.l, 0x7fff, v17.h, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v14, v20, v23, v92
	v_div_fixup_f32 v17, v28, v34, v93
	v_rcp_f32_e32 v34, v40
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.h, 0x7fff, v52.h, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v28, -v31, v37, 1.0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v49, 0, 0x42800000, s0
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v14, v148, v14
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v13, -v40, v34, 1.0
	v_fmac_f32_e32 v37, v28, v37
	v_div_scale_f32 v28, vcc_lo, v90, v16, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v49, 0xbfb8aa3b, v89 :: v_dual_fmac_f32 v34, v13, v34
	v_exp_f32_e32 v13, v23
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v23, s0, v91, v25, v91
	v_mul_f32_e32 v46, v28, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v49, v49
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v17, v149, v17 :: v_dual_mul_f32 v52, v23, v34
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v14.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v51, -v31, v46, v28
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v13, v13, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v20, -v40, v52, v23
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.l, v17.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v46, v51, v37 :: v_dual_and_b32 v51, 1, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_fmac_f32 v52, v20, v34
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v20, v49, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v28, -v31, v46, v28
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v50, 1, v50
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, null, v13, v13, v88
	v_fma_f32 v23, -v40, v52, v23
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v28, v37, v46
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v37, v31
	v_div_fmas_f32 v23, v23, v34, v52
	v_div_scale_f32 v34, null, v20, v20, v89
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v14, v51, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v23, v23, v25, v91
	v_rcp_f32_e32 v25, v34
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v14, v17, v50, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v46, -v31, v37, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v147, v23
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v11, s1, v88, v13, v88
	v_fmac_f32_e32 v37, v46, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v23, -v34, v25, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v16, v28, v16, v90
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v48, v11, v37
	v_fmac_f32_e32 v25, v23, v25
	v_div_scale_f32 v23, s0, v89, v20, v89
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v50, -v31, v48, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.l, 0x7fff, v14.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v51, v23, v25
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_exp_f32_e32 v46, v46
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v48, v50, v37
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v146, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v14, -v34, v51, v23
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.l, v17.h
	v_mov_b16_e32 v49.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v10, -v31, v48, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v16.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v51, v14, v25
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v11, v46, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v23, -v34, v51, v23
	v_div_fmas_f32 v10, v10, v37, v48
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_fmac_f32 v28, 0xbfb8aa3b, v86
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v50, 1, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v23, v23, v25, v51
	v_div_fixup_f32 v10, v10, v13, v88
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v25, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v11, v11, v87
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v31, v16, v50, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v10, v145, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v16, v28
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v49, 1, v49
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v23, v20, v89
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.h, 0x7fff, v31.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v14, v25, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v10.h
	v_add3_u32 v20, v17, v49, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v144, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v25, -v28, v16, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v34, 1, v3
	v_mov_b16_e32 v17.l, v13.h
	v_mov_b16_e32 v17.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, null, v14, v14, v86
	v_fmac_f32_e32 v16, v25, v16
	v_div_scale_f32 v25, s0, v87, v11, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v34, v10, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v10, v10
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v10, v25, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v20.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v17
	v_cndmask_b16 v9.h, 0x7fff, v34.h, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v20, -v28, v10, v25
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v7
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v13, v17, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v31, v37, 1.0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v10, v20, v16
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v85
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v7, s2, v86, v14, v86
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v9.l, 0x7fff, v17.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v17, v48
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v25, -v28, v10, v25
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v28, v7, v37
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v84
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v10, v25, v16, v10
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v16, -v31, v28, v7
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v6, v20
	v_ldexp_f32 v17, v17, v46
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v28, v16, v37
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v17
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v82
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v7, -v31, v28, v7
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v6, v6, v13
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v13, null, v16, v16, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v5, v5
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v83 :: v_dual_add_f32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v31, v13
	v_div_fixup_f32 v10, v10, v11, v87
	s_mov_b32 vcc_lo, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v25, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v7, v7, v37, v28
	v_div_scale_f32 v28, null, v6, v6, v84
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v5, v5, v20
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v7, v14, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v11, -v13, v31, 1.0
	v_rcp_f32_e32 v14, v28
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v17, v25, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v20, vcc_lo, v85, v16, v85
	v_fmac_f32_e32 v31, v11, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v11, null, v5, v5, v82
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v48, s0, v84, v6, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v34, v11
	v_fma_f32 v25, -v28, v14, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v37, null, v17, v17, v83
	v_mul_f32_e32 v46, v20, v31
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v10, v143, v10
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v14, v25, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v25, v37
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v141, v7
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v51, -v13, v46, v20
	v_fma_f32 v49, -v11, v34, 1.0
	v_mul_f32_e32 v52, v48, v14
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v10.h
	v_mov_b16_e32 v50.l, v7.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v46, v51, v31
	v_fmac_f32_e32 v34, v49, v34
	v_div_scale_f32 v49, s1, v82, v5, v82
	v_fma_f32 v51, -v28, v52, v48
	v_fma_f32 v53, -v37, v25, 1.0
	v_fma_f32 v13, -v13, v46, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v49, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v52, v51, v14 :: v_dual_fmac_f32 v25, v53, v25
	v_div_scale_f32 v53, s2, v83, v17, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v11, v55, v49
	v_fma_f32 v28, -v28, v52, v48
	v_div_fmas_f32 v13, v13, v31, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v51, v53, v25
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v55, v20, v34
	v_div_fmas_f32 v14, v28, v14, v52
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v31, -v37, v51, v53
	v_div_fixup_f32 v13, v13, v16, v85
	v_fma_f32 v11, -v11, v55, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v54, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v51, v31, v25 :: v_dual_and_b32 v50, 1, v50
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v140, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v11, v11, v34, v55
	v_div_fixup_f32 v6, v14, v6, v84
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v14, -v37, v51, v53
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v13.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v5, v11, v5, v82
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v20, v7, v50, 0x7fff
	v_cmp_o_f32_e64 s0, v7, v7
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v14, v14, v25, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v7, 1, v3
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v137, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v10, v54, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v10, v14, v17, v83
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.h, v3.h
	v_mov_b16_e32 v3.l, v5.h
	v_mov_b16_e32 v14.h, v3.h
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	v_add3_u32 v7, v13, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_and_b32_e32 v3, 1, v3
	v_cmp_o_f32_e64 s1, v5, v5
	v_cndmask_b16 v16.l, 0x7fff, v20.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v5, v3, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v7.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v81
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v10, v138, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v139, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v13, v35, v29, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v14.l, v10.h
	v_dual_cndmask_b32 v7, v15, v8 :: v_dual_cndmask_b32 v8, v8, v15
	v_mov_b16_e32 v11.l, v6.h
	v_cmp_o_f32_e64 s0, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, v38, v32 :: v_dual_and_b32 v14, 1, v14
	v_cndmask_b32_e32 v17, v32, v38, vcc_lo
	v_dual_cndmask_b32 v32, v24, v30 :: v_dual_and_b32 v11, 1, v11
	v_cndmask_b32_e32 v24, v30, v24, vcc_lo
	v_cndmask_b32_e32 v30, v22, v27, vcc_lo
	v_cndmask_b32_e32 v22, v27, v22, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v11, v6, v11, 0x7fff
	v_add3_u32 v6, v10, v14, 0x7fff
	v_dual_cndmask_b32 v14, v29, v35 :: v_dual_mov_b32 v27, 0x7632
	v_cndmask_b32_e32 v28, v42, v36, vcc_lo
	v_cndmask_b16 v5.l, 0x7fff, v11.h, s0
	v_cndmask_b32_e32 v11, v26, v21, vcc_lo
	v_dual_cndmask_b32 v37, v18, v73 :: v_dual_cndmask_b32 v20, v41, v47
	v_cndmask_b32_e32 v25, v44, v45, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v35, v5, v9, vcc_lo
	v_cndmask_b32_e32 v5, v9, v5, vcc_lo
	v_mov_b32_e32 v9, 0x5410
	v_cndmask_b32_e32 v31, v39, v33, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v29, v33, v39, vcc_lo
	v_cndmask_b32_e32 v33, v40, v19, vcc_lo
	v_cndmask_b32_e32 v9, 0x1054, v9, vcc_lo
	v_cmp_o_f32_e64 s2, v10, v10
	v_cndmask_b32_e32 v10, v73, v18, vcc_lo
	v_cndmask_b32_e32 v18, v47, v41, vcc_lo
	v_cndmask_b32_e32 v19, v19, v40, vcc_lo
	v_lshl_or_b32 v9, v9, 8, v9
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s2
	v_cndmask_b32_e32 v6, v12, v4, vcc_lo
	v_cndmask_b32_e32 v4, v4, v12, vcc_lo
	v_cndmask_b32_e32 v12, v21, v26, vcc_lo
	v_cndmask_b32_e32 v26, v36, v42, vcc_lo
	v_dual_cndmask_b32 v36, v3, v16 :: v_dual_cndmask_b32 v3, v16, v3
	v_cndmask_b32_e32 v16, 0x3276, v27, vcc_lo
	v_and_b32_e32 v9, 0x540054, v9
	v_dual_cndmask_b32 v21, v45, v44 :: v_dual_cndmask_b32 v34, v23, v43
	v_cndmask_b32_e32 v23, v43, v23, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v16, v16, 8, v16
	v_lshl_or_b32 v9, v9, 4, v9
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v37, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v16, 0x760076, v16
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v16, v16, 4, v16
	v_permlanex16_b32 v27, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v38, 0x5040504, v9
	v_and_b32_e32 v39, 0x7060706, v16
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_nc_u32_e32 v0, 32, v1
	v_permlanex16_b32 v37, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v4, v6, v38
	v_perm_b32 v4, v4, v6, v39
	v_perm_b32 v5, v8, v7, v38
	v_perm_b32 v6, v8, v7, v39
	v_perm_b32 v7, v43, v10, v38
	v_perm_b32 v8, v43, v10, v39
	v_perm_b32 v9, v12, v11, v38
	v_perm_b32 v10, v12, v11, v39
	v_perm_b32 v11, v14, v13, v38
	v_perm_b32 v12, v14, v13, v39
	v_perm_b32 v13, v17, v15, v38
	v_perm_b32 v14, v17, v15, v39
	v_perm_b32 v15, v20, v18, v38
	v_perm_b32 v16, v20, v18, v39
	v_perm_b32 v17, v25, v21, v38
	v_perm_b32 v18, v25, v21, v39
	v_perm_b32 v19, v27, v26, v38
	v_perm_b32 v20, v27, v26, v39
	v_perm_b32 v23, v24, v32, v38
	v_perm_b32 v24, v24, v32, v39
	v_perm_b32 v25, v31, v30, v38
	v_perm_b32 v26, v31, v30, v39
	v_perm_b32 v31, v41, v35, v38
	v_perm_b32 v32, v41, v35, v39
	v_dual_cndmask_b32 v35, 0x80000000, v1 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[3:6], v35, s[20:23], 0 offen
	buffer_store_b128 v[7:10], v0, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v2, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v1
	v_add_nc_u32_e32 v2, 0x80, v1
	v_add_nc_u32_e32 v3, 0xa0, v1
	v_add_nc_u32_e32 v4, 0xc0, v1
	v_add_nc_u32_e32 v1, 0xe0, v1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v21, v28, v29, v38
	v_perm_b32 v22, v28, v29, v39
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_perm_b32 v27, v37, v33, v38
	v_perm_b32 v28, v37, v33, v39
	v_perm_b32 v29, v40, v34, v38
	v_perm_b32 v30, v40, v34, v39
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_perm_b32 v33, v42, v36, v38
	v_perm_b32 v34, v42, v36, v39
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[20:23], 0 offen
	buffer_store_b128 v[19:22], v2, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v3, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v4, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v1, s[20:23], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 940
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 940
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27312
; TotalNumSgprs: 41
; NumVgprs: 256
; ScratchSize: 940
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 940
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 292
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
