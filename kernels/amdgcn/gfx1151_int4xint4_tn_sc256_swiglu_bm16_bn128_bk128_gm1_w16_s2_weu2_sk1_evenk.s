	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
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
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v155, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v163, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v165, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v116, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v178, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v176, 0
	s_sub_i32 s10, s6, s10
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s9, s10
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s4, s10, s4
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s8, s6, 1
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s8
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v180, 0
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s9, 0, s7
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v188, 0 :: v_dual_and_b32 v81, 16, v0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v187, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	v_dual_mov_b32 v121, 0 :: v_dual_and_b32 v76, 15, v0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v193, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v203, 0
	s_mul_i32 s9, s9, s6
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v161, 0
	s_mul_hi_u32 s4, s6, s9
	s_abs_i32 s9, s2
	s_add_i32 s6, s6, s4
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	s_mul_hi_u32 s4, s9, s6
	s_xor_b32 s6, s2, s8
	s_mul_i32 s11, s4, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s9, s9, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s9, s7
	s_cmp_ge_u32 s9, s7
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v129, 0
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s9, s12, s9
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s9, s7
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v189, 0
	s_cselect_b32 s4, s11, s4
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	s_xor_b32 s7, s4, s6
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v137, 0
	s_sub_i32 s33, s7, s6
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s33, s8
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v211, 0
	s_sub_i32 s2, s2, s4
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v183, 0
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s10
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v173, 0
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s8, s5, 0xff
.Ltmp13:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s2, s2, 4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_i32 s8, 0x100
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v226, 0 :: v_dual_and_b32 v1, 7, v0
	.loc	1 144 24 is_stmt 1              ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v16, 3, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshrrev_b32_e32 v3, 3, v81
	s_load_b256 s[12:19], s[0:1], 0x0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v205, 0 :: v_dual_lshlrev_b32 v2, 4, v1
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s1, s5, 1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s0, s8, 31
	v_dual_mov_b32 v173, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	v_dual_mov_b32 v204, 0 :: v_dual_lshlrev_b32 v5, 4, v0
	v_or_b32_e32 v6, 0x3f0, v0
	v_or_b32_e32 v7, 0x7f0, v0
	v_or_b32_e32 v8, 0xbf0, v0
	v_or_b32_e32 v10, 0xff0, v0
	v_or_b32_e32 v11, 0x13f0, v0
	v_or_b32_e32 v13, 0x17f0, v0
	v_or_b32_e32 v14, 0x1bf0, v0
	v_or_b32_e32 v15, 0x1ff0, v0
	v_dual_mov_b32 v168, 0 :: v_dual_and_b32 v3, 2, v3
.Ltmp15:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:584
	scratch_store_b32 off, v0, off offset:636
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v0, s1, v16
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s0, 24
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v2, s2, v76
	s_add_i32 s8, s8, s0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:588
	scratch_store_b32 off, v76, off offset:644
	s_ashr_i32 s35, s8, 8
	v_dual_mov_b32 v233, 0 :: v_dual_lshlrev_b32 v0, 1, v16
.Ltmp17:
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s34, s3, 6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_mul_lo_u32 v2, s35, v2
	v_or_b32_e32 v12, s34, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v0, s3, 7, v0
	s_lshl_b32 s1, s7, 8
	v_dual_mov_b32 v206, 0 :: v_dual_lshlrev_b32 v9, 1, v1
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v1, 64, v12
	s_lshl1_add_u32 s5, s23, s1
	s_lshl_b32 s8, s6, 8
	v_dual_mov_b32 v172, 0 :: v_dual_lshlrev_b32 v207, 1, v2
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v2, 0x81, v0
	s_sub_i32 s36, s5, s8
	s_sub_i32 s37, s1, s8
	s_lshl_b32 s8, s7, 7
	v_cmp_gt_i32_e64 s0, 0x80, v1
	scratch_store_b32 off, v3, off offset:592 ; 4-byte Folded Spill
	v_mul_lo_u32 v16, s22, v1
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v3, 0x80, v0
	v_mad_u64_u32 v[0:1], null, s23, v0, s[8:9]
	v_mad_u64_u32 v[1:2], null, s23, v2, s[8:9]
	s_lshl_b32 s1, s6, 7
	v_mov_b32_e32 v190, 0
	v_mov_b32_e32 v160, 0
	v_mov_b32_e32 v174, 0
	v_mov_b32_e32 v182, 0
	v_mov_b32_e32 v218, 0
	v_subrev_nc_u32_e32 v77, s1, v1
	v_add_nc_u32_e32 v1, 0, v4
	scratch_store_b32 off, v81, off offset:640 ; 4-byte Folded Spill
	v_mov_b32_e32 v210, 0
	v_mov_b32_e32 v166, 0
	v_mad_u64_u32 v[2:3], null, s23, v3, s[8:9]
	scratch_store_b32 off, v1, off offset:596 ; 4-byte Folded Spill
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v1, 0, v5
	v_mul_lo_u32 v3, s22, v12
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v12
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v12, s23, v0
	scratch_store_b32 off, v1, off offset:600 ; 4-byte Folded Spill
	v_dual_mov_b32 v238, 0 :: v_dual_add_nc_u32 v1, 0, v6
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	scratch_store_b32 off, v1, off offset:604 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v7
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	scratch_store_b32 off, v1, off offset:608 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v8
	v_add3_u32 v18, v16, s2, v9
	v_subrev_nc_u32_e32 v19, s1, v2
	v_subrev_nc_u32_e32 v16, s1, v12
	v_subrev_nc_u32_e32 v12, s1, v0
	scratch_store_b32 off, v1, off offset:612 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v10
	v_add3_u32 v0, v3, s2, v9
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v169, 0, v76
	v_mov_b32_e32 v164, 0
	scratch_store_b32 off, v1, off offset:616 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v11
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v202, 0
	scratch_store_b32 off, v1, off offset:620 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v13
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v128, 0
	scratch_store_b32 off, v1, off offset:624 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v14
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v126, 0
	scratch_store_b32 off, v1, off offset:628 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v15
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v122, 0
	scratch_store_b32 off, v1, off offset:632 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, s4
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v143, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v141, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v3, s6
	v_mov_b32_e32 v5, s8
	v_mov_b32_e32 v7, s10
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_lshl_b32 s3, s23, 2
	s_lshl_b32 s22, s22, 7
	s_lshl_b32 s38, s23, 8
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
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:588
	scratch_load_b32 v76, off, off offset:584
	.loc	1 156 27 is_stmt 1              ; generate_amdgcn.py:156:27
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v0, off offset:12
	scratch_store_b32 off, v12, off offset:332
	scratch_store_b32 off, v16, off offset:328
	scratch_store_b32 off, v19, off offset:324
	scratch_store_b32 off, v77, off offset:320
	scratch_store_b32 off, v18, off offset:316
	scratch_store_b32 off, v160, off offset:312
	scratch_store_b32 off, v159, off offset:308
	scratch_store_b32 off, v137, off offset:304
	scratch_store_b32 off, v135, off offset:8
	scratch_store_b32 off, v134, off offset:300
	scratch_store_b32 off, v133, off offset:296
	scratch_store_b32 off, v132, off offset:292
	scratch_store_b32 off, v131, off offset:288
	scratch_store_b32 off, v130, off offset:284
	scratch_store_b32 off, v129, off offset:280
	scratch_store_b32 off, v128, off offset:276
	scratch_store_b32 off, v127, off offset:272
	scratch_store_b32 off, v126, off offset:268
	scratch_store_b32 off, v125, off offset:264
	scratch_store_b32 off, v124, off offset:260
	scratch_store_b32 off, v123, off offset:256
	scratch_store_b32 off, v122, off offset:252
	scratch_store_b32 off, v121, off offset:248
	scratch_store_b32 off, v120, off offset:244
	scratch_store_b32 off, v119, off offset:240
	scratch_store_b32 off, v118, off offset:236
	scratch_store_b32 off, v117, off offset:232
	scratch_store_b32 off, v116, off offset:228
	scratch_store_b32 off, v115, off offset:224
	scratch_store_b32 off, v114, off offset:220
	scratch_store_b32 off, v113, off offset:216
	s_clause 0xc                            ; 52-byte Folded Spill
	scratch_store_b32 off, v110, off offset:4
	scratch_store_b32 off, v109, off offset:212
	scratch_store_b32 off, v171, off offset:208
	scratch_store_b32 off, v170, off offset:204
	scratch_store_b32 off, v108, off offset:200
	scratch_store_b32 off, v107, off offset:196
	scratch_store_b32 off, v165, off offset:192
	scratch_store_b32 off, v163, off offset:188
	scratch_store_b32 off, v106, off offset:184
	scratch_store_b32 off, v105, off offset:180
	scratch_store_b32 off, v158, off offset:176
	scratch_store_b32 off, v157, off offset:172
	scratch_store_b32 off, v101, off offset:168
	s_waitcnt vmcnt(2)
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v100, off
	scratch_store_b32 off, v156, off offset:164
	scratch_store_b32 off, v155, off offset:160
	scratch_store_b32 off, v99, off offset:156
	scratch_store_b32 off, v98, off offset:152
	scratch_store_b32 off, v154, off offset:148
	scratch_store_b32 off, v153, off offset:144
	scratch_store_b32 off, v97, off offset:140
	scratch_store_b32 off, v96, off offset:136
	scratch_store_b32 off, v152, off offset:132
	scratch_store_b32 off, v151, off offset:128
	scratch_store_b32 off, v95, off offset:124
	scratch_store_b32 off, v94, off offset:120
	scratch_store_b32 off, v150, off offset:116
	scratch_store_b32 off, v149, off offset:112
	scratch_store_b32 off, v93, off offset:108
	scratch_store_b32 off, v92, off offset:104
	scratch_store_b32 off, v148, off offset:100
	scratch_store_b32 off, v147, off offset:96
	scratch_store_b32 off, v91, off offset:92
	scratch_store_b32 off, v90, off offset:88
	scratch_store_b32 off, v146, off offset:84
	scratch_store_b32 off, v145, off offset:80
	scratch_store_b32 off, v89, off offset:76
	scratch_store_b32 off, v88, off offset:72
	scratch_store_b32 off, v144, off offset:68
	scratch_store_b32 off, v143, off offset:64
	scratch_store_b32 off, v87, off offset:60
	scratch_store_b32 off, v86, off offset:56
	scratch_store_b32 off, v142, off offset:52
	scratch_store_b32 off, v141, off offset:48
	scratch_store_b32 off, v85, off offset:44
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v84, off offset:40
	scratch_store_b32 off, v140, off offset:36
	scratch_store_b32 off, v139, off offset:32
	scratch_store_b32 off, v83, off offset:28
	scratch_store_b32 off, v82, off offset:24
	scratch_store_b32 off, v138, off offset:20
	scratch_store_b32 off, v136, off offset:16
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s35, s35, -1
	v_mov_b32_e32 v162, v189
	v_mov_b32_e32 v223, v241
	v_mov_b32_e32 v189, v203
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(2)
	v_cmp_lt_i32_e64 s1, s34, v17
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v9, v76, v12
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_add_nc_u32_e32 v13, v76, v16
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s1, s1, vcc_lo
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_add_i32 s1, s34, 64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s34, 0x80
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[12:15], 0 offen
	buffer_load_b128 v[13:16], v13, s[12:15], 0 offen
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v208, off, off offset:596
	scratch_load_b32 v209, off, off offset:600
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s1, v17
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v209, v[9:12]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	ds_store_b128 v209, v[13:16] offset:8192
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s1, s1, s0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	ds_store_b16 v208, v0 offset:16384
	v_cndmask_b32_e64 v0, 0x80000000, v18, s1
	buffer_load_u16 v165, v0, s[24:27], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v0, v76, v19
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v212, off, off offset:604
	scratch_load_b32 v213, off, off offset:608
	scratch_load_b32 v215, off, off offset:612
	scratch_load_b32 v216, off, off offset:616
	scratch_load_b32 v217, off, off offset:620
	scratch_load_b32 v220, off, off offset:624
	scratch_load_b32 v221, off, off offset:628
	scratch_load_b32 v222, off, off offset:632
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_load_b128 v[137:140], v0, s[12:15], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v169 offset:16464
	ds_load_u8 v9, v169 offset:16448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:16496
	ds_load_u8 v10, v169 offset:16480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v9, 16, v0
	ds_load_u8 v0, v169 offset:16400
	ds_load_u8 v9, v169 offset:16384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:16432
	ds_load_u8 v10, v169 offset:16416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v9, 16, v0
	ds_load_u8 v0, v169 offset:640
	ds_load_u8 v9, v169 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:896
	ds_load_u8 v10, v169 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:128
	ds_load_u8 v9, v169
	ds_load_u8 v11, v169 offset:16
	ds_load_u8 v12, v169 offset:32
	ds_load_u8 v13, v169 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:384
	ds_load_u8 v14, v169 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[65:72], v[9:10], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16592
	ds_load_u8 v9, v169 offset:16576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:16624
	ds_load_u8 v10, v169 offset:16608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v9, 16, v0
	ds_load_u8 v0, v169 offset:16528
	ds_load_u8 v9, v169 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:16560
	ds_load_u8 v10, v169 offset:16544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v9, 16, v0
	ds_load_u8 v0, v169 offset:1664
	ds_load_u8 v9, v169 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:1920
	ds_load_u8 v10, v169 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:1152
	ds_load_u8 v9, v169 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:1408
	ds_load_u8 v14, v169 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[65:72], v[9:10], v[157:158], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16720
	ds_load_u8 v9, v169 offset:16704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:16752
	ds_load_u8 v10, v169 offset:16736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v156, v9, 16, v0
	ds_load_u8 v0, v169 offset:16656
	ds_load_u8 v9, v169 offset:16640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:16688
	ds_load_u8 v10, v169 offset:16672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v155, v9, 16, v0
	ds_load_u8 v0, v169 offset:2688
	ds_load_u8 v9, v169 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:2944
	ds_load_u8 v10, v169 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:2176
	ds_load_u8 v9, v169 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:2432
	ds_load_u8 v14, v169 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[65:72], v[9:10], v[155:156], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16848
	ds_load_u8 v9, v169 offset:16832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:16880
	ds_load_u8 v10, v169 offset:16864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v9, 16, v0
	ds_load_u8 v0, v169 offset:16784
	ds_load_u8 v9, v169 offset:16768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:16816
	ds_load_u8 v10, v169 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v9, 16, v0
	ds_load_u8 v0, v169 offset:3712
	ds_load_u8 v9, v169 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:3968
	ds_load_u8 v10, v169 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:3200
	ds_load_u8 v9, v169 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:3456
	ds_load_u8 v14, v169 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[65:72], v[9:10], v[153:154], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16976
	ds_load_u8 v9, v169 offset:16960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:17008
	ds_load_u8 v10, v169 offset:16992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v9, 16, v0
	ds_load_u8 v0, v169 offset:16912
	ds_load_u8 v9, v169 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:16944
	ds_load_u8 v10, v169 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v9, 16, v0
	ds_load_u8 v0, v169 offset:4736
	ds_load_u8 v9, v169 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:4992
	ds_load_u8 v10, v169 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:4224
	ds_load_u8 v9, v169 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:4480
	ds_load_u8 v14, v169 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[65:72], v[9:10], v[151:152], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:17104
	ds_load_u8 v9, v169 offset:17088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:17136
	ds_load_u8 v10, v169 offset:17120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v9, 16, v0
	ds_load_u8 v0, v169 offset:17040
	ds_load_u8 v9, v169 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:17072
	ds_load_u8 v10, v169 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v9, 16, v0
	ds_load_u8 v0, v169 offset:5760
	ds_load_u8 v9, v169 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6016
	ds_load_u8 v10, v169 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:5248
	ds_load_u8 v9, v169 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:5504
	ds_load_u8 v14, v169 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[65:72], v[9:10], v[149:150], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:17232
	ds_load_u8 v9, v169 offset:17216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:17264
	ds_load_u8 v10, v169 offset:17248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v9, 16, v0
	ds_load_u8 v0, v169 offset:17168
	ds_load_u8 v9, v169 offset:17152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:17200
	ds_load_u8 v10, v169 offset:17184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v9, 16, v0
	ds_load_u8 v0, v169 offset:6784
	ds_load_u8 v9, v169 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7040
	ds_load_u8 v10, v169 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:6272
	ds_load_u8 v9, v169 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6528
	ds_load_u8 v14, v169 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[65:72], v[9:10], v[147:148], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:17296
	ds_load_u8 v9, v169 offset:17280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:17328
	ds_load_u8 v10, v169 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v145, v9, 16, v0
	ds_load_u8 v0, v169 offset:17360
	ds_load_u8 v9, v169 offset:17344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt vmcnt(8)
	ds_load_u8 v9, v212 offset:16384
	ds_load_u8 v10, v169 offset:17376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v9, 16, v0
	ds_load_u8 v0, v169 offset:7808
	ds_load_u8 v9, v169 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:8064
	ds_load_u8 v10, v169 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:7296
	ds_load_u8 v9, v169 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7552
	ds_load_u8 v14, v169 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[65:72], v[9:10], v[145:146], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:656
	ds_load_u8 v9, v169 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:912
	ds_load_u8 v10, v169 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v11, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:400
	ds_load_u8 v11, v169 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[9:10], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:1680
	ds_load_u8 v9, v169 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:1936
	ds_load_u8 v10, v169 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:1168
	ds_load_u8 v9, v169 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:1424
	ds_load_u8 v11, v169 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[9:10], v[157:158], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:2704
	ds_load_u8 v9, v169 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:2960
	ds_load_u8 v10, v169 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:2192
	ds_load_u8 v9, v169 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:2448
	ds_load_u8 v11, v169 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[9:10], v[155:156], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:3728
	ds_load_u8 v9, v169 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:3984
	ds_load_u8 v10, v169 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:3216
	ds_load_u8 v9, v169 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:3472
	ds_load_u8 v11, v169 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[9:10], v[153:154], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:4752
	ds_load_u8 v9, v169 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:5008
	ds_load_u8 v10, v169 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:4240
	ds_load_u8 v9, v169 offset:4112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:4496
	ds_load_u8 v11, v169 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[9:10], v[151:152], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:5776
	ds_load_u8 v9, v169 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6032
	ds_load_u8 v10, v169 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:5264
	ds_load_u8 v9, v169 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:5520
	ds_load_u8 v11, v169 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[9:10], v[149:150], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:6800
	ds_load_u8 v9, v169 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7056
	ds_load_u8 v10, v169 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:6288
	ds_load_u8 v9, v169 offset:6160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6544
	ds_load_u8 v11, v169 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[9:10], v[147:148], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:7824
	ds_load_u8 v9, v169 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:8080
	ds_load_u8 v10, v169 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:7312
	ds_load_u8 v9, v169 offset:7184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7568
	ds_load_u8 v11, v169 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[9:10], v[145:146], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:672
	ds_load_u8 v9, v169 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:928
	ds_load_u8 v10, v169 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:160
	ds_load_u8 v9, v169 offset:416
	ds_load_u8 v11, v169 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v12, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:1696
	ds_load_u8 v9, v169 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:1952
	ds_load_u8 v10, v169 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:1184
	ds_load_u8 v9, v169 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:1440
	ds_load_u8 v11, v169 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[157:158], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:2720
	ds_load_u8 v9, v169 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:2976
	ds_load_u8 v10, v169 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:2208
	ds_load_u8 v9, v169 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:2464
	ds_load_u8 v11, v169 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[155:156], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:3744
	ds_load_u8 v9, v169 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:4000
	ds_load_u8 v10, v169 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:3232
	ds_load_u8 v9, v169 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:3488
	ds_load_u8 v11, v169 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[153:154], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:4768
	ds_load_u8 v9, v169 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:5024
	ds_load_u8 v10, v169 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:4256
	ds_load_u8 v9, v169 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:4512
	ds_load_u8 v11, v169 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[151:152], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:5792
	ds_load_u8 v9, v169 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6048
	ds_load_u8 v10, v169 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:5280
	ds_load_u8 v9, v169 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:5536
	ds_load_u8 v11, v169 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[149:150], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:6816
	ds_load_u8 v9, v169 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7072
	ds_load_u8 v10, v169 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:6304
	ds_load_u8 v9, v169 offset:6176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6560
	ds_load_u8 v11, v169 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[147:148], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:7840
	ds_load_u8 v9, v169 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:8096
	ds_load_u8 v10, v169 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:7328
	ds_load_u8 v9, v169 offset:7200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7584
	ds_load_u8 v11, v169 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[145:146], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:688
	ds_load_u8 v9, v169 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:944
	ds_load_u8 v10, v169 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:176
	ds_load_u8 v9, v169 offset:432
	ds_load_u8 v11, v169 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:1712
	ds_load_u8 v9, v169 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:1968
	ds_load_u8 v10, v169 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:1200
	ds_load_u8 v9, v169 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:1456
	ds_load_u8 v11, v169 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[157:158], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:2736
	ds_load_u8 v9, v169 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:2992
	ds_load_u8 v10, v169 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:2224
	ds_load_u8 v9, v169 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:2480
	ds_load_u8 v11, v169 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[155:156], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:3760
	ds_load_u8 v9, v169 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:4016
	ds_load_u8 v10, v169 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:3248
	ds_load_u8 v9, v169 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:3504
	ds_load_u8 v11, v169 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[153:154], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:4784
	ds_load_u8 v9, v169 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:5040
	ds_load_u8 v10, v169 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:4272
	ds_load_u8 v9, v169 offset:4144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:4528
	ds_load_u8 v11, v169 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[151:152], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:5808
	ds_load_u8 v9, v169 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6064
	ds_load_u8 v10, v169 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:5296
	ds_load_u8 v9, v169 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:5552
	ds_load_u8 v11, v169 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[149:150], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:6832
	ds_load_u8 v9, v169 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7088
	ds_load_u8 v10, v169 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:6320
	ds_load_u8 v9, v169 offset:6192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6576
	ds_load_u8 v11, v169 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[147:148], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:7856
	ds_load_u8 v9, v169 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:8112
	ds_load_u8 v10, v169 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:7344
	ds_load_u8 v9, v169 offset:7216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7600
	ds_load_u8 v11, v169 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[145:146], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:704
	ds_load_u8 v9, v169 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:960
	ds_load_u8 v10, v169 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:192
	ds_load_u8 v9, v169 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:448
	ds_load_u8 v11, v169 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:1728
	ds_load_u8 v9, v169 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:1984
	ds_load_u8 v10, v169 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:1216
	ds_load_u8 v9, v169 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:1472
	ds_load_u8 v11, v169 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[157:158], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:2752
	ds_load_u8 v9, v169 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:3008
	ds_load_u8 v10, v169 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:2240
	ds_load_u8 v9, v169 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:2496
	ds_load_u8 v11, v169 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[155:156], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:3776
	ds_load_u8 v9, v169 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:4032
	ds_load_u8 v10, v169 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:3264
	ds_load_u8 v9, v169 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:3520
	ds_load_u8 v11, v169 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[153:154], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:4800
	ds_load_u8 v9, v169 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:5056
	ds_load_u8 v10, v169 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:4288
	ds_load_u8 v9, v169 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:4544
	ds_load_u8 v11, v169 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[151:152], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:5824
	ds_load_u8 v9, v169 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6080
	ds_load_u8 v10, v169 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:5312
	ds_load_u8 v9, v169 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:5568
	ds_load_u8 v11, v169 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[149:150], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:6848
	ds_load_u8 v9, v169 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7104
	ds_load_u8 v10, v169 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:6336
	ds_load_u8 v9, v169 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6592
	ds_load_u8 v11, v169 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[147:148], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:7872
	ds_load_u8 v9, v169 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:8128
	ds_load_u8 v10, v169 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:7360
	ds_load_u8 v9, v169 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7616
	ds_load_u8 v11, v169 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[145:146], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:720
	ds_load_u8 v9, v169 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:976
	ds_load_u8 v10, v169 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:208
	ds_load_u8 v9, v169 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:464
	ds_load_u8 v11, v169 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:1744
	ds_load_u8 v9, v169 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:2000
	ds_load_u8 v10, v169 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:1232
	ds_load_u8 v9, v169 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:1488
	ds_load_u8 v11, v169 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[157:158], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:2768
	ds_load_u8 v9, v169 offset:2640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:3024
	ds_load_u8 v10, v169 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:2256
	ds_load_u8 v9, v169 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:2512
	ds_load_u8 v11, v169 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[155:156], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:3792
	ds_load_u8 v9, v169 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:4048
	ds_load_u8 v10, v169 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:3280
	ds_load_u8 v9, v169 offset:3152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:3536
	ds_load_u8 v11, v169 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[153:154], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:4816
	ds_load_u8 v9, v169 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:5072
	ds_load_u8 v10, v169 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:4304
	ds_load_u8 v9, v169 offset:4176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:4560
	ds_load_u8 v11, v169 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[151:152], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:5840
	ds_load_u8 v9, v169 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6096
	ds_load_u8 v10, v169 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:5328
	ds_load_u8 v9, v169 offset:5200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:5584
	ds_load_u8 v11, v169 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[149:150], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:6864
	ds_load_u8 v9, v169 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7120
	ds_load_u8 v10, v169 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:6352
	ds_load_u8 v9, v169 offset:6224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6608
	ds_load_u8 v11, v169 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[147:148], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:7888
	ds_load_u8 v9, v169 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:8144
	ds_load_u8 v10, v169 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:7376
	ds_load_u8 v9, v169 offset:7248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7632
	ds_load_u8 v11, v169 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[145:146], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:736
	ds_load_u8 v9, v169 offset:608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:992
	ds_load_u8 v10, v169 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:224
	ds_load_u8 v9, v169 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:480
	ds_load_u8 v11, v169 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:1760
	ds_load_u8 v9, v169 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:2016
	ds_load_u8 v10, v169 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:1248
	ds_load_u8 v9, v169 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:1504
	ds_load_u8 v11, v169 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[157:158], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:2784
	ds_load_u8 v9, v169 offset:2656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:3040
	ds_load_u8 v10, v169 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:2272
	ds_load_u8 v9, v169 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:2528
	ds_load_u8 v11, v169 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[155:156], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:3808
	ds_load_u8 v9, v169 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:4064
	ds_load_u8 v10, v169 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:3296
	ds_load_u8 v9, v169 offset:3168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:3552
	ds_load_u8 v11, v169 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[153:154], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:4832
	ds_load_u8 v9, v169 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:5088
	ds_load_u8 v10, v169 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:4320
	ds_load_u8 v9, v169 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:4576
	ds_load_u8 v11, v169 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[151:152], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:5856
	ds_load_u8 v9, v169 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6112
	ds_load_u8 v10, v169 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:5344
	ds_load_u8 v9, v169 offset:5216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:5600
	ds_load_u8 v11, v169 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[149:150], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:6880
	ds_load_u8 v9, v169 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7136
	ds_load_u8 v10, v169 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:6368
	ds_load_u8 v9, v169 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:6624
	ds_load_u8 v11, v169 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[147:148], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:7904
	ds_load_u8 v9, v169 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:8160
	ds_load_u8 v10, v169 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v169 offset:7392
	ds_load_u8 v9, v169 offset:7264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:7648
	ds_load_u8 v11, v169 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[145:146], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:240
	ds_load_u8 v9, v169 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v169 offset:496
	ds_load_u8 v10, v169 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v9, 16, v0
	ds_load_u8 v0, v169 offset:752
	ds_load_u8 v9, v169 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v212
	ds_load_u8 v10, v169 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:1264
	ds_load_u8 v73, v169 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:1520
	ds_load_u8 v74, v169 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	ds_load_u8 v0, v169 offset:1776
	ds_load_u8 v74, v169 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v74, v0, 0xc0c0004
	s_waitcnt vmcnt(7)
	ds_load_u8 v74, v213
	ds_load_u8 v75, v169 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[157:158], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:2288
	ds_load_u8 v73, v169 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:2544
	ds_load_u8 v74, v169 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	ds_load_u8 v0, v169 offset:2800
	ds_load_u8 v74, v169 offset:2672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v74, v0, 0xc0c0004
	s_waitcnt vmcnt(6)
	ds_load_u8 v74, v215
	ds_load_u8 v75, v169 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[155:156], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:3312
	ds_load_u8 v73, v169 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:3568
	ds_load_u8 v74, v169 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	ds_load_u8 v0, v169 offset:3824
	ds_load_u8 v74, v169 offset:3696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v74, v0, 0xc0c0004
	s_waitcnt vmcnt(5)
	ds_load_u8 v74, v216
	ds_load_u8 v75, v169 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[153:154], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:4336
	ds_load_u8 v73, v169 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:4592
	ds_load_u8 v74, v169 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	ds_load_u8 v0, v169 offset:4848
	ds_load_u8 v74, v169 offset:4720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v74, v0, 0xc0c0004
	s_waitcnt vmcnt(4)
	ds_load_u8 v74, v217
	ds_load_u8 v75, v169 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[151:152], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:5360
	ds_load_u8 v73, v169 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:5616
	ds_load_u8 v74, v169 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	ds_load_u8 v0, v169 offset:5872
	ds_load_u8 v74, v169 offset:5744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v74, v0, 0xc0c0004
	s_waitcnt vmcnt(3)
	ds_load_u8 v74, v220
	ds_load_u8 v75, v169 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[149:150], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:6384
	ds_load_u8 v73, v169 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:6640
	ds_load_u8 v74, v169 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	ds_load_u8 v0, v169 offset:6896
	ds_load_u8 v74, v169 offset:6768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v74, v0, 0xc0c0004
	s_waitcnt vmcnt(2)
	ds_load_u8 v74, v221
	ds_load_u8 v75, v169 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[147:148], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:7408
	ds_load_u8 v73, v169 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:7664
	ds_load_u8 v74, v169 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	ds_load_u8 v0, v169 offset:7920
	ds_load_u8 v74, v169 offset:7792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v74, v0, 0xc0c0004
	s_waitcnt vmcnt(1)
	ds_load_u8 v74, v222
	ds_load_u8 v75, v169 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v74, v74, 16, v0
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_add_nc_u32_e32 v0, v76, v77
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[145:146], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_load_b128 v[141:144], v0, s[12:15], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v0, v169 offset:8832
	ds_load_u8 v73, v169 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9088
	ds_load_u8 v74, v169 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:8320
	ds_load_u8 v73, v169 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:8576
	ds_load_u8 v75, v169 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[73:74], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9856
	ds_load_u8 v73, v169 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10112
	ds_load_u8 v74, v169 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:9344
	ds_load_u8 v73, v169 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9600
	ds_load_u8 v75, v169 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[73:74], v[157:158], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10880
	ds_load_u8 v73, v169 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11136
	ds_load_u8 v74, v169 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:10368
	ds_load_u8 v73, v169 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10624
	ds_load_u8 v75, v169 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[73:74], v[155:156], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11904
	ds_load_u8 v73, v169 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12160
	ds_load_u8 v74, v169 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:11392
	ds_load_u8 v73, v169 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11648
	ds_load_u8 v75, v169 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[73:74], v[153:154], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12928
	ds_load_u8 v73, v169 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13184
	ds_load_u8 v74, v169 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:12416
	ds_load_u8 v73, v169 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12672
	ds_load_u8 v75, v169 offset:12544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[73:74], v[151:152], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:13952
	ds_load_u8 v73, v169 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14208
	ds_load_u8 v74, v169 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:13440
	ds_load_u8 v73, v169 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13696
	ds_load_u8 v75, v169 offset:13568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[73:74], v[149:150], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14976
	ds_load_u8 v73, v169 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15232
	ds_load_u8 v74, v169 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:14464
	ds_load_u8 v73, v169 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14720
	ds_load_u8 v75, v169 offset:14592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[73:74], v[147:148], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16000
	ds_load_u8 v73, v169 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:16256
	ds_load_u8 v74, v169 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:15488
	ds_load_u8 v73, v169 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15744
	ds_load_u8 v75, v169 offset:15616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[73:74], v[145:146], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8848
	ds_load_u8 v73, v169 offset:8720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9104
	ds_load_u8 v74, v169 offset:8976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:8336
	ds_load_u8 v73, v169 offset:8208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:8592
	ds_load_u8 v75, v169 offset:8464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[73:74], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9872
	ds_load_u8 v73, v169 offset:9744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10128
	ds_load_u8 v74, v169 offset:10000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:9360
	ds_load_u8 v73, v169 offset:9232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9616
	ds_load_u8 v75, v169 offset:9488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[73:74], v[157:158], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10896
	ds_load_u8 v73, v169 offset:10768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11152
	ds_load_u8 v74, v169 offset:11024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:10384
	ds_load_u8 v73, v169 offset:10256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10640
	ds_load_u8 v75, v169 offset:10512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[73:74], v[155:156], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11920
	ds_load_u8 v73, v169 offset:11792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12176
	ds_load_u8 v74, v169 offset:12048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:11408
	ds_load_u8 v73, v169 offset:11280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11664
	ds_load_u8 v75, v169 offset:11536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[73:74], v[153:154], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12944
	ds_load_u8 v73, v169 offset:12816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13200
	ds_load_u8 v74, v169 offset:13072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:12432
	ds_load_u8 v73, v169 offset:12304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12688
	ds_load_u8 v75, v169 offset:12560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[73:74], v[151:152], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:13968
	ds_load_u8 v73, v169 offset:13840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14224
	ds_load_u8 v74, v169 offset:14096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:13456
	ds_load_u8 v73, v169 offset:13328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13712
	ds_load_u8 v75, v169 offset:13584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[73:74], v[149:150], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14992
	ds_load_u8 v73, v169 offset:14864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15248
	ds_load_u8 v74, v169 offset:15120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:14480
	ds_load_u8 v73, v169 offset:14352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14736
	ds_load_u8 v75, v169 offset:14608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[73:74], v[147:148], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16016
	ds_load_u8 v73, v169 offset:15888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:16272
	ds_load_u8 v74, v169 offset:16144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:15504
	ds_load_u8 v73, v169 offset:15376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15760
	ds_load_u8 v75, v169 offset:15632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[73:74], v[145:146], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8864
	ds_load_u8 v73, v169 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9120
	ds_load_u8 v74, v169 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:8352
	ds_load_u8 v73, v169 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:8608
	ds_load_u8 v75, v169 offset:8480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[73:74], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9888
	ds_load_u8 v73, v169 offset:9760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10144
	ds_load_u8 v74, v169 offset:10016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:9376
	ds_load_u8 v73, v169 offset:9248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9632
	ds_load_u8 v75, v169 offset:9504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[73:74], v[157:158], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10912
	ds_load_u8 v73, v169 offset:10784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11168
	ds_load_u8 v74, v169 offset:11040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:10400
	ds_load_u8 v73, v169 offset:10272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10656
	ds_load_u8 v75, v169 offset:10528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[73:74], v[155:156], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11936
	ds_load_u8 v73, v169 offset:11808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12192
	ds_load_u8 v74, v169 offset:12064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:11424
	ds_load_u8 v73, v169 offset:11296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11680
	ds_load_u8 v75, v169 offset:11552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[73:74], v[153:154], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12960
	ds_load_u8 v73, v169 offset:12832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13216
	ds_load_u8 v74, v169 offset:13088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:12448
	ds_load_u8 v73, v169 offset:12320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12704
	ds_load_u8 v75, v169 offset:12576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[73:74], v[151:152], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:13984
	ds_load_u8 v73, v169 offset:13856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14240
	ds_load_u8 v74, v169 offset:14112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:13472
	ds_load_u8 v73, v169 offset:13344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13728
	ds_load_u8 v75, v169 offset:13600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[73:74], v[149:150], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:15008
	ds_load_u8 v73, v169 offset:14880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15264
	ds_load_u8 v74, v169 offset:15136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:14496
	ds_load_u8 v73, v169 offset:14368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14752
	ds_load_u8 v75, v169 offset:14624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[73:74], v[147:148], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16032
	ds_load_u8 v73, v169 offset:15904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:16288
	ds_load_u8 v74, v169 offset:16160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:15520
	ds_load_u8 v73, v169 offset:15392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15776
	ds_load_u8 v75, v169 offset:15648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[73:74], v[145:146], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8880
	ds_load_u8 v73, v169 offset:8752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9136
	ds_load_u8 v74, v169 offset:9008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:8368
	ds_load_u8 v73, v169 offset:8240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:8624
	ds_load_u8 v75, v169 offset:8496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[73:74], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9904
	ds_load_u8 v73, v169 offset:9776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10160
	ds_load_u8 v74, v169 offset:10032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:9392
	ds_load_u8 v73, v169 offset:9264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9648
	ds_load_u8 v75, v169 offset:9520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[73:74], v[157:158], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10928
	ds_load_u8 v73, v169 offset:10800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11184
	ds_load_u8 v74, v169 offset:11056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:10416
	ds_load_u8 v73, v169 offset:10288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10672
	ds_load_u8 v75, v169 offset:10544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[73:74], v[155:156], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11952
	ds_load_u8 v73, v169 offset:11824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12208
	ds_load_u8 v74, v169 offset:12080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:11440
	ds_load_u8 v73, v169 offset:11312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11696
	ds_load_u8 v75, v169 offset:11568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[73:74], v[153:154], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12976
	ds_load_u8 v73, v169 offset:12848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13232
	ds_load_u8 v74, v169 offset:13104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:12464
	ds_load_u8 v73, v169 offset:12336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12720
	ds_load_u8 v75, v169 offset:12592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[73:74], v[151:152], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14000
	ds_load_u8 v73, v169 offset:13872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14256
	ds_load_u8 v74, v169 offset:14128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:13488
	ds_load_u8 v73, v169 offset:13360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13744
	ds_load_u8 v75, v169 offset:13616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[73:74], v[149:150], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:15024
	ds_load_u8 v73, v169 offset:14896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15280
	ds_load_u8 v74, v169 offset:15152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:14512
	ds_load_u8 v73, v169 offset:14384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14768
	ds_load_u8 v75, v169 offset:14640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[73:74], v[147:148], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16048
	ds_load_u8 v73, v169 offset:15920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:16304
	ds_load_u8 v74, v169 offset:16176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:15536
	ds_load_u8 v73, v169 offset:15408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15792
	ds_load_u8 v75, v169 offset:15664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[73:74], v[145:146], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8896
	ds_load_u8 v73, v169 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9152
	ds_load_u8 v74, v169 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:8384
	ds_load_u8 v73, v169 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:8640
	ds_load_u8 v75, v169 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[73:74], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9920
	ds_load_u8 v73, v169 offset:9792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10176
	ds_load_u8 v74, v169 offset:10048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:9408
	ds_load_u8 v73, v169 offset:9280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9664
	ds_load_u8 v75, v169 offset:9536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[73:74], v[157:158], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10944
	ds_load_u8 v73, v169 offset:10816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11200
	ds_load_u8 v74, v169 offset:11072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:10432
	ds_load_u8 v73, v169 offset:10304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10688
	ds_load_u8 v75, v169 offset:10560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[73:74], v[155:156], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11968
	ds_load_u8 v73, v169 offset:11840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12224
	ds_load_u8 v74, v169 offset:12096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:11456
	ds_load_u8 v73, v169 offset:11328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11712
	ds_load_u8 v75, v169 offset:11584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[73:74], v[153:154], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12992
	ds_load_u8 v73, v169 offset:12864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13248
	ds_load_u8 v74, v169 offset:13120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:12480
	ds_load_u8 v73, v169 offset:12352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12736
	ds_load_u8 v75, v169 offset:12608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[73:74], v[151:152], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14016
	ds_load_u8 v73, v169 offset:13888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14272
	ds_load_u8 v74, v169 offset:14144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:13504
	ds_load_u8 v73, v169 offset:13376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13760
	ds_load_u8 v75, v169 offset:13632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[73:74], v[149:150], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:15040
	ds_load_u8 v73, v169 offset:14912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15296
	ds_load_u8 v74, v169 offset:15168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:14528
	ds_load_u8 v73, v169 offset:14400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14784
	ds_load_u8 v75, v169 offset:14656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[73:74], v[147:148], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16064
	ds_load_u8 v73, v169 offset:15936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:16320
	ds_load_u8 v74, v169 offset:16192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:15552
	ds_load_u8 v73, v169 offset:15424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15808
	ds_load_u8 v75, v169 offset:15680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[73:74], v[145:146], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8912
	ds_load_u8 v73, v169 offset:8784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9168
	ds_load_u8 v74, v169 offset:9040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:8400
	ds_load_u8 v73, v169 offset:8272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:8656
	ds_load_u8 v75, v169 offset:8528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[73:74], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9936
	ds_load_u8 v73, v169 offset:9808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10192
	ds_load_u8 v74, v169 offset:10064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:9424
	ds_load_u8 v73, v169 offset:9296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9680
	ds_load_u8 v75, v169 offset:9552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[73:74], v[157:158], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10960
	ds_load_u8 v73, v169 offset:10832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11216
	ds_load_u8 v74, v169 offset:11088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:10448
	ds_load_u8 v73, v169 offset:10320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10704
	ds_load_u8 v75, v169 offset:10576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[73:74], v[155:156], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11984
	ds_load_u8 v73, v169 offset:11856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12240
	ds_load_u8 v74, v169 offset:12112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:11472
	ds_load_u8 v73, v169 offset:11344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11728
	ds_load_u8 v75, v169 offset:11600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[73:74], v[153:154], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:13008
	ds_load_u8 v73, v169 offset:12880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13264
	ds_load_u8 v74, v169 offset:13136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:12496
	ds_load_u8 v73, v169 offset:12368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12752
	ds_load_u8 v75, v169 offset:12624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[73:74], v[151:152], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14032
	ds_load_u8 v73, v169 offset:13904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14288
	ds_load_u8 v74, v169 offset:14160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:13520
	ds_load_u8 v73, v169 offset:13392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13776
	ds_load_u8 v75, v169 offset:13648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[73:74], v[149:150], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:15056
	ds_load_u8 v73, v169 offset:14928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15312
	ds_load_u8 v74, v169 offset:15184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:14544
	ds_load_u8 v73, v169 offset:14416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14800
	ds_load_u8 v75, v169 offset:14672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[73:74], v[147:148], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16080
	ds_load_u8 v73, v169 offset:15952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:16336
	ds_load_u8 v74, v169 offset:16208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:15568
	ds_load_u8 v73, v169 offset:15440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15824
	ds_load_u8 v75, v169 offset:15696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[73:74], v[145:146], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8928
	ds_load_u8 v73, v169 offset:8800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9184
	ds_load_u8 v74, v169 offset:9056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:8416
	ds_load_u8 v73, v169 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:8672
	ds_load_u8 v75, v169 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[73:74], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9952
	ds_load_u8 v73, v169 offset:9824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10208
	ds_load_u8 v74, v169 offset:10080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:9440
	ds_load_u8 v73, v169 offset:9312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:9696
	ds_load_u8 v75, v169 offset:9568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[73:74], v[157:158], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10976
	ds_load_u8 v73, v169 offset:10848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11232
	ds_load_u8 v74, v169 offset:11104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:10464
	ds_load_u8 v73, v169 offset:10336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:10720
	ds_load_u8 v75, v169 offset:10592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[73:74], v[155:156], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12000
	ds_load_u8 v73, v169 offset:11872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12256
	ds_load_u8 v74, v169 offset:12128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:11488
	ds_load_u8 v73, v169 offset:11360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:11744
	ds_load_u8 v75, v169 offset:11616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[73:74], v[153:154], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:13024
	ds_load_u8 v73, v169 offset:12896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13280
	ds_load_u8 v74, v169 offset:13152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:12512
	ds_load_u8 v73, v169 offset:12384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:12768
	ds_load_u8 v75, v169 offset:12640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[73:74], v[151:152], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14048
	ds_load_u8 v73, v169 offset:13920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14304
	ds_load_u8 v74, v169 offset:14176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:13536
	ds_load_u8 v73, v169 offset:13408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:13792
	ds_load_u8 v75, v169 offset:13664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[73:74], v[149:150], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:15072
	ds_load_u8 v73, v169 offset:14944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15328
	ds_load_u8 v74, v169 offset:15200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:14560
	ds_load_u8 v73, v169 offset:14432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:14816
	ds_load_u8 v75, v169 offset:14688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[73:74], v[147:148], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16096
	ds_load_u8 v73, v169 offset:15968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:16352
	ds_load_u8 v74, v169 offset:16224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v73, 16, v0
	ds_load_u8 v0, v169 offset:15584
	ds_load_u8 v73, v169 offset:15456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:15840
	ds_load_u8 v75, v169 offset:15712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[73:74], v[145:146], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8432
	ds_load_u8 v73, v169 offset:8304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v169 offset:8688
	ds_load_u8 v74, v169 offset:8560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v73, 16, v0
	ds_load_u8 v0, v169 offset:8944
	ds_load_u8 v73, v169 offset:8816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v73, v0, 0xc0c0004
	ds_load_u8 v73, v212 offset:8192
	ds_load_u8 v74, v169 offset:9072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v171, v73, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[170:171], v[159:160], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9456
	ds_load_u8 v159, v169 offset:9328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v159, v0, 0xc0c0004
	ds_load_u8 v159, v169 offset:9712
	ds_load_u8 v160, v169 offset:9584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v159, 16, v0
	ds_load_u8 v0, v169 offset:9968
	ds_load_u8 v160, v169 offset:9840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v160, v0, 0xc0c0004
	ds_load_u8 v160, v213 offset:8192
	ds_load_u8 v163, v169 offset:10096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v163, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v160, v160, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[159:160], v[157:158], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10480
	ds_load_u8 v157, v169 offset:10352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v157, v0, 0xc0c0004
	ds_load_u8 v157, v169 offset:10736
	ds_load_u8 v158, v169 offset:10608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v157, 16, v0
	ds_load_u8 v0, v169 offset:10992
	ds_load_u8 v158, v169 offset:10864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v158, v0, 0xc0c0004
	ds_load_u8 v158, v215 offset:8192
	ds_load_u8 v159, v169 offset:11120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v158, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[157:158], v[155:156], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11504
	ds_load_u8 v155, v169 offset:11376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v155, v0, 0xc0c0004
	ds_load_u8 v155, v169 offset:11760
	ds_load_u8 v156, v169 offset:11632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v155, v155, 16, v0
	ds_load_u8 v0, v169 offset:12016
	ds_load_u8 v156, v169 offset:11888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v156, v0, 0xc0c0004
	ds_load_u8 v156, v216 offset:8192
	ds_load_u8 v157, v169 offset:12144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v156, v156, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[155:156], v[153:154], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12528
	ds_load_u8 v153, v169 offset:12400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12784
	ds_load_u8 v154, v169 offset:12656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	ds_load_u8 v0, v169 offset:13040
	ds_load_u8 v154, v169 offset:12912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v154, v0, 0xc0c0004
	ds_load_u8 v154, v217 offset:8192
	ds_load_u8 v155, v169 offset:13168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[153:154], v[151:152], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:13552
	ds_load_u8 v151, v169 offset:13424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v151, v0, 0xc0c0004
	ds_load_u8 v151, v169 offset:13808
	ds_load_u8 v152, v169 offset:13680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v0
	ds_load_u8 v0, v169 offset:14064
	ds_load_u8 v152, v169 offset:13936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v152, v0, 0xc0c0004
	ds_load_u8 v152, v220 offset:8192
	ds_load_u8 v153, v169 offset:14192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[151:152], v[149:150], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14576
	ds_load_u8 v149, v169 offset:14448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v149, v0, 0xc0c0004
	ds_load_u8 v149, v169 offset:14832
	ds_load_u8 v150, v169 offset:14704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v0
	ds_load_u8 v0, v169 offset:15088
	ds_load_u8 v150, v169 offset:14960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v150, v0, 0xc0c0004
	ds_load_u8 v150, v221 offset:8192
	ds_load_u8 v151, v169 offset:15216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[149:150], v[147:148], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:15600
	ds_load_u8 v147, v169 offset:15472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v147, v0, 0xc0c0004
	ds_load_u8 v147, v169 offset:15856
	ds_load_u8 v148, v169 offset:15728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v147, 16, v0
	ds_load_u8 v0, v169 offset:16112
	ds_load_u8 v148, v169 offset:15984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v148, v0, 0xc0c0004
	ds_load_u8 v148, v222 offset:8192
	ds_load_u8 v149, v169 offset:16240
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v208, v165 offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v209, v[137:140]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v209, v[141:144] offset:8192
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v148, 16, v0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v169 offset:16464
	ds_load_u8 v137, v169 offset:16448
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[73:80], v[147:148], v[145:146], v[73:80] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v169 offset:16496
	ds_load_u8 v138, v169 offset:16480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v137, 16, v0
	ds_load_u8 v0, v169 offset:16400
	ds_load_u8 v137, v169 offset:16384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v169 offset:16432
	ds_load_u8 v139, v169 offset:16416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v139, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v137, 16, v0
	ds_load_u8 v0, v169 offset:640
	ds_load_u8 v139, v169 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v139, v0, 0xc0c0004
	ds_load_u8 v139, v169 offset:896
	ds_load_u8 v140, v169 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v139, 16, v0
	ds_load_u8 v139, v169 offset:128
	ds_load_u8 v141, v169
	ds_load_u8 v155, v169 offset:16
	ds_load_u8 v156, v169 offset:32
	ds_load_u8 v0, v169 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v139, v141, v139, 0xc0c0004
	ds_load_u8 v141, v169 offset:384
	ds_load_u8 v142, v169 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v139, v141, 16, v139
	v_wmma_i32_16x16x16_iu4 v[65:72], v[139:140], v[137:138], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v139, v169 offset:16592
	ds_load_u8 v140, v169 offset:16576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v169 offset:16624
	ds_load_u8 v141, v169 offset:16608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v140, 16, v139
	ds_load_u8 v139, v169 offset:16528
	ds_load_u8 v141, v169 offset:16512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v141, v139, 0xc0c0004
	ds_load_u8 v141, v169 offset:16560
	ds_load_u8 v142, v169 offset:16544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v141, 16, v139
	ds_load_u8 v141, v169 offset:1664
	ds_load_u8 v142, v169 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v169 offset:1920
	ds_load_u8 v143, v169 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v142, 16, v141
	ds_load_u8 v141, v169 offset:1152
	ds_load_u8 v143, v169 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v143, v141, 0xc0c0004
	ds_load_u8 v143, v169 offset:1408
	ds_load_u8 v144, v169 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v141, v143, 16, v141
	v_wmma_i32_16x16x16_iu4 v[65:72], v[141:142], v[139:140], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v141, v169 offset:16720
	ds_load_u8 v142, v169 offset:16704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v169 offset:16752
	ds_load_u8 v143, v169 offset:16736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v142, 16, v141
	ds_load_u8 v141, v169 offset:16656
	ds_load_u8 v143, v169 offset:16640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v143, v141, 0xc0c0004
	ds_load_u8 v143, v169 offset:16688
	ds_load_u8 v144, v169 offset:16672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v143, 16, v141
	ds_load_u8 v143, v169 offset:2688
	ds_load_u8 v144, v169 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v169 offset:2944
	ds_load_u8 v145, v169 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v144, 16, v143
	ds_load_u8 v143, v169 offset:2176
	ds_load_u8 v145, v169 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v145, v143, 0xc0c0004
	ds_load_u8 v145, v169 offset:2432
	ds_load_u8 v146, v169 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v145, 16, v143
	v_wmma_i32_16x16x16_iu4 v[65:72], v[143:144], v[141:142], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v143, v169 offset:16848
	ds_load_u8 v144, v169 offset:16832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v169 offset:16880
	ds_load_u8 v145, v169 offset:16864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v144, 16, v143
	ds_load_u8 v143, v169 offset:16784
	ds_load_u8 v145, v169 offset:16768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v145, v143, 0xc0c0004
	ds_load_u8 v145, v169 offset:16816
	ds_load_u8 v146, v169 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v145, 16, v143
	ds_load_u8 v145, v169 offset:3712
	ds_load_u8 v146, v169 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v169 offset:3968
	ds_load_u8 v147, v169 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v146, 16, v145
	ds_load_u8 v145, v169 offset:3200
	ds_load_u8 v147, v169 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v147, v145, 0xc0c0004
	ds_load_u8 v147, v169 offset:3456
	ds_load_u8 v148, v169 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v145, v147, 16, v145
	v_wmma_i32_16x16x16_iu4 v[65:72], v[145:146], v[143:144], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v145, v169 offset:16976
	ds_load_u8 v146, v169 offset:16960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v169 offset:17008
	ds_load_u8 v147, v169 offset:16992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v146, 16, v145
	ds_load_u8 v145, v169 offset:16912
	ds_load_u8 v147, v169 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v147, v145, 0xc0c0004
	ds_load_u8 v147, v169 offset:16944
	ds_load_u8 v148, v169 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v145, v147, 16, v145
	ds_load_u8 v147, v169 offset:4736
	ds_load_u8 v148, v169 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v169 offset:4992
	ds_load_u8 v149, v169 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v148, 16, v147
	ds_load_u8 v147, v169 offset:4224
	ds_load_u8 v149, v169 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v149, v147, 0xc0c0004
	ds_load_u8 v149, v169 offset:4480
	ds_load_u8 v150, v169 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v147, v149, 16, v147
	v_wmma_i32_16x16x16_iu4 v[65:72], v[147:148], v[145:146], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v147, v169 offset:17104
	ds_load_u8 v148, v169 offset:17088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v169 offset:17136
	ds_load_u8 v149, v169 offset:17120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v148, 16, v147
	ds_load_u8 v147, v169 offset:17040
	ds_load_u8 v149, v169 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v149, v147, 0xc0c0004
	ds_load_u8 v149, v169 offset:17072
	ds_load_u8 v150, v169 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v149, 16, v147
	ds_load_u8 v149, v169 offset:5760
	ds_load_u8 v150, v169 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v169 offset:6016
	ds_load_u8 v151, v169 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v169 offset:5248
	ds_load_u8 v151, v169 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v169 offset:5504
	ds_load_u8 v152, v169 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[65:72], v[149:150], v[147:148], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v149, v169 offset:17232
	ds_load_u8 v150, v169 offset:17216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v169 offset:17264
	ds_load_u8 v151, v169 offset:17248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v169 offset:17168
	ds_load_u8 v151, v169 offset:17152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v169 offset:17200
	ds_load_u8 v152, v169 offset:17184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	ds_load_u8 v151, v169 offset:6784
	ds_load_u8 v152, v169 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v169 offset:7040
	ds_load_u8 v153, v169 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v152, 16, v151
	ds_load_u8 v151, v169 offset:6272
	ds_load_u8 v153, v169 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	ds_load_u8 v153, v169 offset:6528
	ds_load_u8 v154, v169 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v153, 16, v151
	v_wmma_i32_16x16x16_iu4 v[65:72], v[151:152], v[149:150], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v151, v169 offset:17296
	ds_load_u8 v152, v169 offset:17280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v169 offset:17328
	ds_load_u8 v153, v169 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v152, 16, v151
	ds_load_u8 v152, v169 offset:17360
	ds_load_u8 v153, v169 offset:17344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v212 offset:16384
	ds_load_u8 v154, v169 offset:17376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v153, 16, v152
	ds_load_u8 v153, v169 offset:7808
	ds_load_u8 v154, v169 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:8064
	ds_load_u8 v157, v169 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v157, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:7296
	ds_load_u8 v157, v169 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v157, v153, 0xc0c0004
	ds_load_u8 v157, v169 offset:7552
	ds_load_u8 v158, v169 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v157, 16, v153
	v_wmma_i32_16x16x16_iu4 v[65:72], v[153:154], v[151:152], v[65:72] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:656
	ds_load_u8 v154, v169 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:912
	ds_load_u8 v157, v169 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v157, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:400
	ds_load_u8 v157, v169 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v157, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[57:64], v[153:154], v[137:138], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:1680
	ds_load_u8 v154, v169 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:1936
	ds_load_u8 v155, v169 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:1168
	ds_load_u8 v155, v169 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:1424
	ds_load_u8 v157, v169 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v157, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[57:64], v[153:154], v[139:140], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:2704
	ds_load_u8 v154, v169 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:2960
	ds_load_u8 v155, v169 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:2192
	ds_load_u8 v155, v169 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:2448
	ds_load_u8 v157, v169 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v157, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[57:64], v[153:154], v[141:142], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:3728
	ds_load_u8 v154, v169 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:3984
	ds_load_u8 v155, v169 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:3216
	ds_load_u8 v155, v169 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:3472
	ds_load_u8 v157, v169 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v157, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[57:64], v[153:154], v[143:144], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:4752
	ds_load_u8 v154, v169 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:5008
	ds_load_u8 v155, v169 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:4240
	ds_load_u8 v155, v169 offset:4112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:4496
	ds_load_u8 v157, v169 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v157, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[57:64], v[153:154], v[145:146], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:5776
	ds_load_u8 v154, v169 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:6032
	ds_load_u8 v155, v169 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:5264
	ds_load_u8 v155, v169 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:5520
	ds_load_u8 v157, v169 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v157, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[57:64], v[153:154], v[147:148], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:6800
	ds_load_u8 v154, v169 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:7056
	ds_load_u8 v155, v169 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:6288
	ds_load_u8 v155, v169 offset:6160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:6544
	ds_load_u8 v157, v169 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v157, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[57:64], v[153:154], v[149:150], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:7824
	ds_load_u8 v154, v169 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:8080
	ds_load_u8 v155, v169 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:7312
	ds_load_u8 v155, v169 offset:7184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:7568
	ds_load_u8 v157, v169 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v157, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[57:64], v[153:154], v[151:152], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:672
	ds_load_u8 v154, v169 offset:544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:928
	ds_load_u8 v155, v169 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v156, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:416
	ds_load_u8 v156, v169 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[49:56], v[153:154], v[137:138], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:1696
	ds_load_u8 v154, v169 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:1952
	ds_load_u8 v155, v169 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:1184
	ds_load_u8 v155, v169 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:1440
	ds_load_u8 v156, v169 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[49:56], v[153:154], v[139:140], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:2720
	ds_load_u8 v154, v169 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:2976
	ds_load_u8 v155, v169 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:2208
	ds_load_u8 v155, v169 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:2464
	ds_load_u8 v156, v169 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[49:56], v[153:154], v[141:142], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:3744
	ds_load_u8 v154, v169 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:4000
	ds_load_u8 v155, v169 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:3232
	ds_load_u8 v155, v169 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:3488
	ds_load_u8 v156, v169 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[49:56], v[153:154], v[143:144], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:4768
	ds_load_u8 v154, v169 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:5024
	ds_load_u8 v155, v169 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:4256
	ds_load_u8 v155, v169 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:4512
	ds_load_u8 v156, v169 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[49:56], v[153:154], v[145:146], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:5792
	ds_load_u8 v154, v169 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:6048
	ds_load_u8 v155, v169 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:5280
	ds_load_u8 v155, v169 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:5536
	ds_load_u8 v156, v169 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[49:56], v[153:154], v[147:148], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:6816
	ds_load_u8 v154, v169 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:7072
	ds_load_u8 v155, v169 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:6304
	ds_load_u8 v155, v169 offset:6176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:6560
	ds_load_u8 v156, v169 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[49:56], v[153:154], v[149:150], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:7840
	ds_load_u8 v154, v169 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:8096
	ds_load_u8 v155, v169 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:7328
	ds_load_u8 v155, v169 offset:7200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v169 offset:7584
	ds_load_u8 v156, v169 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v155, 16, v153
	v_wmma_i32_16x16x16_iu4 v[49:56], v[153:154], v[151:152], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v153, v169 offset:688
	ds_load_u8 v154, v169 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v169 offset:944
	ds_load_u8 v155, v169 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v153
	ds_load_u8 v153, v169 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v153, 0xc0c0004
	ds_load_u8 v153, v169 offset:432
	ds_load_u8 v155, v169 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[153:154], v[137:138], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:1712
	ds_load_u8 v153, v169 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:1968
	ds_load_u8 v154, v169 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:1200
	ds_load_u8 v153, v169 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:1456
	ds_load_u8 v155, v169 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[153:154], v[139:140], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:2736
	ds_load_u8 v153, v169 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:2992
	ds_load_u8 v154, v169 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:2224
	ds_load_u8 v153, v169 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:2480
	ds_load_u8 v155, v169 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[153:154], v[141:142], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:3760
	ds_load_u8 v153, v169 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:4016
	ds_load_u8 v154, v169 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:3248
	ds_load_u8 v153, v169 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:3504
	ds_load_u8 v155, v169 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[153:154], v[143:144], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:4784
	ds_load_u8 v153, v169 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:5040
	ds_load_u8 v154, v169 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:4272
	ds_load_u8 v153, v169 offset:4144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:4528
	ds_load_u8 v155, v169 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[153:154], v[145:146], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:5808
	ds_load_u8 v153, v169 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:6064
	ds_load_u8 v154, v169 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:5296
	ds_load_u8 v153, v169 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:5552
	ds_load_u8 v155, v169 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[153:154], v[147:148], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:6832
	ds_load_u8 v153, v169 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:7088
	ds_load_u8 v154, v169 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:6320
	ds_load_u8 v153, v169 offset:6192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:6576
	ds_load_u8 v155, v169 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[153:154], v[149:150], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:7856
	ds_load_u8 v153, v169 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:8112
	ds_load_u8 v154, v169 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:7344
	ds_load_u8 v153, v169 offset:7216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:7600
	ds_load_u8 v155, v169 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[153:154], v[151:152], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:704
	ds_load_u8 v153, v169 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:960
	ds_load_u8 v154, v169 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:192
	ds_load_u8 v153, v169 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:448
	ds_load_u8 v155, v169 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[153:154], v[137:138], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:1728
	ds_load_u8 v153, v169 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:1984
	ds_load_u8 v154, v169 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:1216
	ds_load_u8 v153, v169 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:1472
	ds_load_u8 v155, v169 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[153:154], v[139:140], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:2752
	ds_load_u8 v153, v169 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:3008
	ds_load_u8 v154, v169 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:2240
	ds_load_u8 v153, v169 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:2496
	ds_load_u8 v155, v169 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[153:154], v[141:142], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:3776
	ds_load_u8 v153, v169 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:4032
	ds_load_u8 v154, v169 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:3264
	ds_load_u8 v153, v169 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:3520
	ds_load_u8 v155, v169 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[153:154], v[143:144], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:4800
	ds_load_u8 v153, v169 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:5056
	ds_load_u8 v154, v169 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:4288
	ds_load_u8 v153, v169 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:4544
	ds_load_u8 v155, v169 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[153:154], v[145:146], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:5824
	ds_load_u8 v153, v169 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:6080
	ds_load_u8 v154, v169 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:5312
	ds_load_u8 v153, v169 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:5568
	ds_load_u8 v155, v169 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[153:154], v[147:148], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:6848
	ds_load_u8 v153, v169 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:7104
	ds_load_u8 v154, v169 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:6336
	ds_load_u8 v153, v169 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:6592
	ds_load_u8 v155, v169 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[153:154], v[149:150], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:7872
	ds_load_u8 v153, v169 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:8128
	ds_load_u8 v154, v169 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:7360
	ds_load_u8 v153, v169 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:7616
	ds_load_u8 v155, v169 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[153:154], v[151:152], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:720
	ds_load_u8 v153, v169 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:976
	ds_load_u8 v154, v169 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:208
	ds_load_u8 v153, v169 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:464
	ds_load_u8 v155, v169 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[153:154], v[137:138], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:1744
	ds_load_u8 v153, v169 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:2000
	ds_load_u8 v154, v169 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:1232
	ds_load_u8 v153, v169 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:1488
	ds_load_u8 v155, v169 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[153:154], v[139:140], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:2768
	ds_load_u8 v153, v169 offset:2640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:3024
	ds_load_u8 v154, v169 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:2256
	ds_load_u8 v153, v169 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:2512
	ds_load_u8 v155, v169 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[153:154], v[141:142], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:3792
	ds_load_u8 v153, v169 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:4048
	ds_load_u8 v154, v169 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:3280
	ds_load_u8 v153, v169 offset:3152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:3536
	ds_load_u8 v155, v169 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[153:154], v[143:144], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:4816
	ds_load_u8 v153, v169 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:5072
	ds_load_u8 v154, v169 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:4304
	ds_load_u8 v153, v169 offset:4176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:4560
	ds_load_u8 v155, v169 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[153:154], v[145:146], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:5840
	ds_load_u8 v153, v169 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:6096
	ds_load_u8 v154, v169 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:5328
	ds_load_u8 v153, v169 offset:5200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:5584
	ds_load_u8 v155, v169 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[153:154], v[147:148], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:6864
	ds_load_u8 v153, v169 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:7120
	ds_load_u8 v154, v169 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:6352
	ds_load_u8 v153, v169 offset:6224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:6608
	ds_load_u8 v155, v169 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[153:154], v[149:150], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:7888
	ds_load_u8 v153, v169 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:8144
	ds_load_u8 v154, v169 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:7376
	ds_load_u8 v153, v169 offset:7248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:7632
	ds_load_u8 v155, v169 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[153:154], v[151:152], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:736
	ds_load_u8 v153, v169 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:992
	ds_load_u8 v154, v169 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:224
	ds_load_u8 v153, v169 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:480
	ds_load_u8 v155, v169 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[153:154], v[137:138], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:1760
	ds_load_u8 v153, v169 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:2016
	ds_load_u8 v154, v169 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:1248
	ds_load_u8 v153, v169 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:1504
	ds_load_u8 v155, v169 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[153:154], v[139:140], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:2784
	ds_load_u8 v153, v169 offset:2656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:3040
	ds_load_u8 v154, v169 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:2272
	ds_load_u8 v153, v169 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:2528
	ds_load_u8 v155, v169 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[153:154], v[141:142], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:3808
	ds_load_u8 v153, v169 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:4064
	ds_load_u8 v154, v169 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:3296
	ds_load_u8 v153, v169 offset:3168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:3552
	ds_load_u8 v155, v169 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[153:154], v[143:144], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:4832
	ds_load_u8 v153, v169 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:5088
	ds_load_u8 v154, v169 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:4320
	ds_load_u8 v153, v169 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:4576
	ds_load_u8 v155, v169 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[153:154], v[145:146], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:5856
	ds_load_u8 v153, v169 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:6112
	ds_load_u8 v154, v169 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:5344
	ds_load_u8 v153, v169 offset:5216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:5600
	ds_load_u8 v155, v169 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[153:154], v[147:148], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:6880
	ds_load_u8 v153, v169 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:7136
	ds_load_u8 v154, v169 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:6368
	ds_load_u8 v153, v169 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:6624
	ds_load_u8 v155, v169 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[153:154], v[149:150], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:7904
	ds_load_u8 v153, v169 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:8160
	ds_load_u8 v154, v169 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:7392
	ds_load_u8 v153, v169 offset:7264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:7648
	ds_load_u8 v155, v169 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[153:154], v[151:152], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:240
	ds_load_u8 v153, v169 offset:112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:496
	ds_load_u8 v154, v169 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	ds_load_u8 v0, v169 offset:752
	ds_load_u8 v154, v169 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v154, v0, 0xc0c0004
	ds_load_u8 v154, v212
	ds_load_u8 v155, v169 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[137:138], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:1264
	ds_load_u8 v153, v169 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:1520
	ds_load_u8 v154, v169 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	ds_load_u8 v0, v169 offset:1776
	ds_load_u8 v154, v169 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v154, v0, 0xc0c0004
	ds_load_u8 v154, v213
	ds_load_u8 v155, v169 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[139:140], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:2288
	ds_load_u8 v153, v169 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:2544
	ds_load_u8 v154, v169 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	ds_load_u8 v0, v169 offset:2800
	ds_load_u8 v154, v169 offset:2672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v154, v0, 0xc0c0004
	ds_load_u8 v154, v215
	ds_load_u8 v155, v169 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[141:142], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:3312
	ds_load_u8 v153, v169 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:3568
	ds_load_u8 v154, v169 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	ds_load_u8 v0, v169 offset:3824
	ds_load_u8 v154, v169 offset:3696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v154, v0, 0xc0c0004
	ds_load_u8 v154, v216
	ds_load_u8 v155, v169 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[143:144], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:4336
	ds_load_u8 v153, v169 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:4592
	ds_load_u8 v154, v169 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	ds_load_u8 v0, v169 offset:4848
	ds_load_u8 v154, v169 offset:4720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v154, v0, 0xc0c0004
	ds_load_u8 v154, v217
	ds_load_u8 v155, v169 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[145:146], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:5360
	ds_load_u8 v153, v169 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:5616
	ds_load_u8 v154, v169 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	ds_load_u8 v0, v169 offset:5872
	ds_load_u8 v154, v169 offset:5744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v154, v0, 0xc0c0004
	ds_load_u8 v154, v220
	ds_load_u8 v155, v169 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[147:148], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:6384
	ds_load_u8 v153, v169 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:6640
	ds_load_u8 v154, v169 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	ds_load_u8 v0, v169 offset:6896
	ds_load_u8 v154, v169 offset:6768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v154, v0, 0xc0c0004
	ds_load_u8 v154, v221
	ds_load_u8 v155, v169 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[149:150], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:7408
	ds_load_u8 v153, v169 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:7664
	ds_load_u8 v154, v169 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	ds_load_u8 v0, v169 offset:7920
	ds_load_u8 v154, v169 offset:7792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v154, v0, 0xc0c0004
	ds_load_u8 v154, v222
	ds_load_u8 v155, v169 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[151:152], v[9:16] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v0, v169 offset:8832
	ds_load_u8 v153, v169 offset:8704
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9088
	ds_load_u8 v154, v169 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:8320
	ds_load_u8 v153, v169 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:8576
	ds_load_u8 v155, v169 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[153:154], v[137:138], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9856
	ds_load_u8 v153, v169 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10112
	ds_load_u8 v154, v169 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:9344
	ds_load_u8 v153, v169 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9600
	ds_load_u8 v155, v169 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[153:154], v[139:140], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10880
	ds_load_u8 v153, v169 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11136
	ds_load_u8 v154, v169 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:10368
	ds_load_u8 v153, v169 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10624
	ds_load_u8 v155, v169 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[153:154], v[141:142], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11904
	ds_load_u8 v153, v169 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12160
	ds_load_u8 v154, v169 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:11392
	ds_load_u8 v153, v169 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11648
	ds_load_u8 v155, v169 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[153:154], v[143:144], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12928
	ds_load_u8 v153, v169 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13184
	ds_load_u8 v154, v169 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:12416
	ds_load_u8 v153, v169 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12672
	ds_load_u8 v155, v169 offset:12544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[153:154], v[145:146], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:13952
	ds_load_u8 v153, v169 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14208
	ds_load_u8 v154, v169 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:13440
	ds_load_u8 v153, v169 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13696
	ds_load_u8 v155, v169 offset:13568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[153:154], v[147:148], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14976
	ds_load_u8 v153, v169 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15232
	ds_load_u8 v154, v169 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:14464
	ds_load_u8 v153, v169 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14720
	ds_load_u8 v155, v169 offset:14592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[153:154], v[149:150], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16000
	ds_load_u8 v153, v169 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:16256
	ds_load_u8 v154, v169 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:15488
	ds_load_u8 v153, v169 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15744
	ds_load_u8 v155, v169 offset:15616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[121:128], v[153:154], v[151:152], v[121:128] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8848
	ds_load_u8 v153, v169 offset:8720
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9104
	ds_load_u8 v154, v169 offset:8976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:8336
	ds_load_u8 v153, v169 offset:8208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:8592
	ds_load_u8 v155, v169 offset:8464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[153:154], v[137:138], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9872
	ds_load_u8 v153, v169 offset:9744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10128
	ds_load_u8 v154, v169 offset:10000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:9360
	ds_load_u8 v153, v169 offset:9232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9616
	ds_load_u8 v155, v169 offset:9488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[153:154], v[139:140], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10896
	ds_load_u8 v153, v169 offset:10768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11152
	ds_load_u8 v154, v169 offset:11024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:10384
	ds_load_u8 v153, v169 offset:10256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10640
	ds_load_u8 v155, v169 offset:10512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[153:154], v[141:142], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11920
	ds_load_u8 v153, v169 offset:11792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12176
	ds_load_u8 v154, v169 offset:12048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:11408
	ds_load_u8 v153, v169 offset:11280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11664
	ds_load_u8 v155, v169 offset:11536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[153:154], v[143:144], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12944
	ds_load_u8 v153, v169 offset:12816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13200
	ds_load_u8 v154, v169 offset:13072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:12432
	ds_load_u8 v153, v169 offset:12304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12688
	ds_load_u8 v155, v169 offset:12560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[153:154], v[145:146], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:13968
	ds_load_u8 v153, v169 offset:13840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14224
	ds_load_u8 v154, v169 offset:14096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:13456
	ds_load_u8 v153, v169 offset:13328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13712
	ds_load_u8 v155, v169 offset:13584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[153:154], v[147:148], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14992
	ds_load_u8 v153, v169 offset:14864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15248
	ds_load_u8 v154, v169 offset:15120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:14480
	ds_load_u8 v153, v169 offset:14352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14736
	ds_load_u8 v155, v169 offset:14608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[153:154], v[149:150], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16016
	ds_load_u8 v153, v169 offset:15888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:16272
	ds_load_u8 v154, v169 offset:16144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:15504
	ds_load_u8 v153, v169 offset:15376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15760
	ds_load_u8 v155, v169 offset:15632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[129:136], v[153:154], v[151:152], v[129:136] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8864
	ds_load_u8 v153, v169 offset:8736
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9120
	ds_load_u8 v154, v169 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:8352
	ds_load_u8 v153, v169 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:8608
	ds_load_u8 v155, v169 offset:8480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[153:154], v[137:138], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9888
	ds_load_u8 v153, v169 offset:9760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10144
	ds_load_u8 v154, v169 offset:10016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:9376
	ds_load_u8 v153, v169 offset:9248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9632
	ds_load_u8 v155, v169 offset:9504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[153:154], v[139:140], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10912
	ds_load_u8 v153, v169 offset:10784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11168
	ds_load_u8 v154, v169 offset:11040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:10400
	ds_load_u8 v153, v169 offset:10272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10656
	ds_load_u8 v155, v169 offset:10528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[153:154], v[141:142], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11936
	ds_load_u8 v153, v169 offset:11808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12192
	ds_load_u8 v154, v169 offset:12064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:11424
	ds_load_u8 v153, v169 offset:11296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11680
	ds_load_u8 v155, v169 offset:11552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[153:154], v[143:144], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12960
	ds_load_u8 v153, v169 offset:12832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13216
	ds_load_u8 v154, v169 offset:13088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:12448
	ds_load_u8 v153, v169 offset:12320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12704
	ds_load_u8 v155, v169 offset:12576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[153:154], v[145:146], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:13984
	ds_load_u8 v153, v169 offset:13856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14240
	ds_load_u8 v154, v169 offset:14112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:13472
	ds_load_u8 v153, v169 offset:13344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13728
	ds_load_u8 v155, v169 offset:13600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[153:154], v[147:148], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:15008
	ds_load_u8 v153, v169 offset:14880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15264
	ds_load_u8 v154, v169 offset:15136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:14496
	ds_load_u8 v153, v169 offset:14368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14752
	ds_load_u8 v155, v169 offset:14624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[153:154], v[149:150], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16032
	ds_load_u8 v153, v169 offset:15904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:16288
	ds_load_u8 v154, v169 offset:16160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:15520
	ds_load_u8 v153, v169 offset:15392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15776
	ds_load_u8 v155, v169 offset:15648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[113:120], v[153:154], v[151:152], v[113:120] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8880
	ds_load_u8 v153, v169 offset:8752
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9136
	ds_load_u8 v154, v169 offset:9008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:8368
	ds_load_u8 v153, v169 offset:8240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:8624
	ds_load_u8 v155, v169 offset:8496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[153:154], v[137:138], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9904
	ds_load_u8 v153, v169 offset:9776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10160
	ds_load_u8 v154, v169 offset:10032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:9392
	ds_load_u8 v153, v169 offset:9264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9648
	ds_load_u8 v155, v169 offset:9520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[153:154], v[139:140], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10928
	ds_load_u8 v153, v169 offset:10800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11184
	ds_load_u8 v154, v169 offset:11056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:10416
	ds_load_u8 v153, v169 offset:10288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10672
	ds_load_u8 v155, v169 offset:10544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[153:154], v[141:142], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11952
	ds_load_u8 v153, v169 offset:11824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12208
	ds_load_u8 v154, v169 offset:12080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:11440
	ds_load_u8 v153, v169 offset:11312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11696
	ds_load_u8 v155, v169 offset:11568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[153:154], v[143:144], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12976
	ds_load_u8 v153, v169 offset:12848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13232
	ds_load_u8 v154, v169 offset:13104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:12464
	ds_load_u8 v153, v169 offset:12336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12720
	ds_load_u8 v155, v169 offset:12592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[153:154], v[145:146], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14000
	ds_load_u8 v153, v169 offset:13872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14256
	ds_load_u8 v154, v169 offset:14128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:13488
	ds_load_u8 v153, v169 offset:13360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13744
	ds_load_u8 v155, v169 offset:13616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[153:154], v[147:148], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:15024
	ds_load_u8 v153, v169 offset:14896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15280
	ds_load_u8 v154, v169 offset:15152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:14512
	ds_load_u8 v153, v169 offset:14384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14768
	ds_load_u8 v155, v169 offset:14640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[153:154], v[149:150], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16048
	ds_load_u8 v153, v169 offset:15920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:16304
	ds_load_u8 v154, v169 offset:16176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:15536
	ds_load_u8 v153, v169 offset:15408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15792
	ds_load_u8 v155, v169 offset:15664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[89:96], v[153:154], v[151:152], v[89:96] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8896
	ds_load_u8 v153, v169 offset:8768
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9152
	ds_load_u8 v154, v169 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:8384
	ds_load_u8 v153, v169 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:8640
	ds_load_u8 v155, v169 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[153:154], v[137:138], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9920
	ds_load_u8 v153, v169 offset:9792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10176
	ds_load_u8 v154, v169 offset:10048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:9408
	ds_load_u8 v153, v169 offset:9280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9664
	ds_load_u8 v155, v169 offset:9536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[153:154], v[139:140], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10944
	ds_load_u8 v153, v169 offset:10816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11200
	ds_load_u8 v154, v169 offset:11072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:10432
	ds_load_u8 v153, v169 offset:10304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10688
	ds_load_u8 v155, v169 offset:10560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[153:154], v[141:142], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11968
	ds_load_u8 v153, v169 offset:11840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12224
	ds_load_u8 v154, v169 offset:12096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:11456
	ds_load_u8 v153, v169 offset:11328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11712
	ds_load_u8 v155, v169 offset:11584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[153:154], v[143:144], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12992
	ds_load_u8 v153, v169 offset:12864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13248
	ds_load_u8 v154, v169 offset:13120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:12480
	ds_load_u8 v153, v169 offset:12352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12736
	ds_load_u8 v155, v169 offset:12608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[153:154], v[145:146], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14016
	ds_load_u8 v153, v169 offset:13888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14272
	ds_load_u8 v154, v169 offset:14144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:13504
	ds_load_u8 v153, v169 offset:13376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13760
	ds_load_u8 v155, v169 offset:13632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[153:154], v[147:148], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:15040
	ds_load_u8 v153, v169 offset:14912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15296
	ds_load_u8 v154, v169 offset:15168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:14528
	ds_load_u8 v153, v169 offset:14400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14784
	ds_load_u8 v155, v169 offset:14656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[153:154], v[149:150], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16064
	ds_load_u8 v153, v169 offset:15936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:16320
	ds_load_u8 v154, v169 offset:16192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:15552
	ds_load_u8 v153, v169 offset:15424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15808
	ds_load_u8 v155, v169 offset:15680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[105:112], v[153:154], v[151:152], v[105:112] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8912
	ds_load_u8 v153, v169 offset:8784
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9168
	ds_load_u8 v154, v169 offset:9040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:8400
	ds_load_u8 v153, v169 offset:8272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:8656
	ds_load_u8 v155, v169 offset:8528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[153:154], v[137:138], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9936
	ds_load_u8 v153, v169 offset:9808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10192
	ds_load_u8 v154, v169 offset:10064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:9424
	ds_load_u8 v153, v169 offset:9296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9680
	ds_load_u8 v155, v169 offset:9552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[153:154], v[139:140], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10960
	ds_load_u8 v153, v169 offset:10832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11216
	ds_load_u8 v154, v169 offset:11088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:10448
	ds_load_u8 v153, v169 offset:10320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10704
	ds_load_u8 v155, v169 offset:10576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[153:154], v[141:142], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11984
	ds_load_u8 v153, v169 offset:11856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12240
	ds_load_u8 v154, v169 offset:12112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:11472
	ds_load_u8 v153, v169 offset:11344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11728
	ds_load_u8 v155, v169 offset:11600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[153:154], v[143:144], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:13008
	ds_load_u8 v153, v169 offset:12880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13264
	ds_load_u8 v154, v169 offset:13136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:12496
	ds_load_u8 v153, v169 offset:12368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12752
	ds_load_u8 v155, v169 offset:12624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[153:154], v[145:146], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14032
	ds_load_u8 v153, v169 offset:13904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14288
	ds_load_u8 v154, v169 offset:14160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:13520
	ds_load_u8 v153, v169 offset:13392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13776
	ds_load_u8 v155, v169 offset:13648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[153:154], v[147:148], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:15056
	ds_load_u8 v153, v169 offset:14928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15312
	ds_load_u8 v154, v169 offset:15184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:14544
	ds_load_u8 v153, v169 offset:14416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14800
	ds_load_u8 v155, v169 offset:14672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[153:154], v[149:150], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16080
	ds_load_u8 v153, v169 offset:15952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:16336
	ds_load_u8 v154, v169 offset:16208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:15568
	ds_load_u8 v153, v169 offset:15440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15824
	ds_load_u8 v155, v169 offset:15696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[97:104], v[153:154], v[151:152], v[97:104] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8928
	ds_load_u8 v153, v169 offset:8800
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9184
	ds_load_u8 v154, v169 offset:9056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:8416
	ds_load_u8 v153, v169 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:8672
	ds_load_u8 v155, v169 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[153:154], v[137:138], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9952
	ds_load_u8 v153, v169 offset:9824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10208
	ds_load_u8 v154, v169 offset:10080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:9440
	ds_load_u8 v153, v169 offset:9312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:9696
	ds_load_u8 v155, v169 offset:9568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[153:154], v[139:140], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10976
	ds_load_u8 v153, v169 offset:10848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11232
	ds_load_u8 v154, v169 offset:11104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:10464
	ds_load_u8 v153, v169 offset:10336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:10720
	ds_load_u8 v155, v169 offset:10592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[153:154], v[141:142], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12000
	ds_load_u8 v153, v169 offset:11872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12256
	ds_load_u8 v154, v169 offset:12128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:11488
	ds_load_u8 v153, v169 offset:11360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:11744
	ds_load_u8 v155, v169 offset:11616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[153:154], v[143:144], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:13024
	ds_load_u8 v153, v169 offset:12896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13280
	ds_load_u8 v154, v169 offset:13152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:12512
	ds_load_u8 v153, v169 offset:12384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:12768
	ds_load_u8 v155, v169 offset:12640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[153:154], v[145:146], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14048
	ds_load_u8 v153, v169 offset:13920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14304
	ds_load_u8 v154, v169 offset:14176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:13536
	ds_load_u8 v153, v169 offset:13408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:13792
	ds_load_u8 v155, v169 offset:13664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[153:154], v[147:148], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:15072
	ds_load_u8 v153, v169 offset:14944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15328
	ds_load_u8 v154, v169 offset:15200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:14560
	ds_load_u8 v153, v169 offset:14432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:14816
	ds_load_u8 v155, v169 offset:14688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[153:154], v[149:150], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:16096
	ds_load_u8 v153, v169 offset:15968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:16352
	ds_load_u8 v154, v169 offset:16224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v153, 16, v0
	ds_load_u8 v0, v169 offset:15584
	ds_load_u8 v153, v169 offset:15456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:15840
	ds_load_u8 v155, v169 offset:15712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	v_wmma_i32_16x16x16_iu4 v[81:88], v[153:154], v[151:152], v[81:88] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:8432
	ds_load_u8 v153, v169 offset:8304
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v153, v0, 0xc0c0004
	ds_load_u8 v153, v169 offset:8688
	ds_load_u8 v154, v169 offset:8560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v0
	ds_load_u8 v0, v169 offset:8944
	ds_load_u8 v154, v169 offset:8816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v154, v0, 0xc0c0004
	ds_load_u8 v154, v212 offset:8192
	ds_load_u8 v155, v169 offset:9072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v154, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[153:154], v[137:138], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:9456
	ds_load_u8 v137, v169 offset:9328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v169 offset:9712
	ds_load_u8 v138, v169 offset:9584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v137, 16, v0
	ds_load_u8 v0, v169 offset:9968
	ds_load_u8 v138, v169 offset:9840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v138, v0, 0xc0c0004
	ds_load_u8 v138, v213 offset:8192
	ds_load_u8 v153, v169 offset:10096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v153, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[137:138], v[139:140], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:10480
	ds_load_u8 v137, v169 offset:10352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v169 offset:10736
	ds_load_u8 v138, v169 offset:10608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v137, 16, v0
	ds_load_u8 v0, v169 offset:10992
	ds_load_u8 v138, v169 offset:10864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v138, v0, 0xc0c0004
	ds_load_u8 v138, v215 offset:8192
	ds_load_u8 v139, v169 offset:11120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[137:138], v[141:142], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:11504
	ds_load_u8 v137, v169 offset:11376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v169 offset:11760
	ds_load_u8 v138, v169 offset:11632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v137, 16, v0
	ds_load_u8 v0, v169 offset:12016
	ds_load_u8 v138, v169 offset:11888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v138, v0, 0xc0c0004
	ds_load_u8 v138, v216 offset:8192
	ds_load_u8 v139, v169 offset:12144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[137:138], v[143:144], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:12528
	ds_load_u8 v137, v169 offset:12400
	scratch_load_b32 v144, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v169 offset:12784
	ds_load_u8 v138, v169 offset:12656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v137, 16, v0
	ds_load_u8 v0, v169 offset:13040
	ds_load_u8 v138, v169 offset:12912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v138, v0, 0xc0c0004
	ds_load_u8 v138, v217 offset:8192
	ds_load_u8 v139, v169 offset:13168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[137:138], v[145:146], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:13552
	ds_load_u8 v137, v169 offset:13424
	v_mov_b32_e32 v145, v193
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v169 offset:13808
	ds_load_u8 v138, v169 offset:13680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v137, 16, v0
	ds_load_u8 v0, v169 offset:14064
	ds_load_u8 v138, v169 offset:13936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v138, v0, 0xc0c0004
	ds_load_u8 v138, v220 offset:8192
	ds_load_u8 v139, v169 offset:14192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[137:138], v[147:148], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:14576
	ds_load_u8 v137, v169 offset:14448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v169 offset:14832
	ds_load_u8 v138, v169 offset:14704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v137, 16, v0
	ds_load_u8 v0, v169 offset:15088
	ds_load_u8 v138, v169 offset:14960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v138, v0, 0xc0c0004
	ds_load_u8 v138, v221 offset:8192
	ds_load_u8 v139, v169 offset:15216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v0
	v_wmma_i32_16x16x16_iu4 v[73:80], v[137:138], v[149:150], v[73:80] neg_lo:[1,1,0]
	ds_load_u8 v0, v169 offset:15600
	ds_load_u8 v137, v169 offset:15472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v169 offset:15856
	ds_load_u8 v138, v169 offset:15728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v137, 16, v0
	ds_load_u8 v0, v169 offset:16112
	ds_load_u8 v138, v169 offset:15984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v138, v0, 0xc0c0004
	ds_load_u8 v138, v222 offset:8192
	ds_load_u8 v139, v169 offset:16240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v0, v207, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v207, 2, v207
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[73:80], v[137:138], v[151:152], v[73:80] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v79, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v137, 16, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v0, s37, v144
	s_clause 0x1f
	buffer_load_u16 v193, v0, s[16:19], 0 offen offset:96
	buffer_load_u16 v143, v0, s[16:19], 0 offen offset:100
	buffer_load_u16 v150, v0, s[16:19], 0 offen offset:104
	buffer_load_u16 v149, v0, s[16:19], 0 offen offset:108
	buffer_load_u16 v154, v0, s[16:19], 0 offen offset:112
	buffer_load_u16 v153, v0, s[16:19], 0 offen offset:116
	buffer_load_u16 v158, v0, s[16:19], 0 offen offset:120
	buffer_load_u16 v157, v0, s[16:19], 0 offen offset:124
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:128
	buffer_load_u16 v241, v0, s[16:19], 0 offen
	buffer_load_u16 v240, v0, s[16:19], 0 offen offset:4
	buffer_load_u16 v242, v0, s[16:19], 0 offen offset:8
	buffer_load_u16 v165, v0, s[16:19], 0 offen offset:12
	buffer_load_u16 v215, v0, s[16:19], 0 offen offset:16
	buffer_load_u16 v239, v0, s[16:19], 0 offen offset:20
	buffer_load_u16 v138, v0, s[16:19], 0 offen offset:24
	buffer_load_u16 v235, v0, s[16:19], 0 offen offset:28
	buffer_load_u16 v224, v0, s[16:19], 0 offen offset:32
	buffer_load_u16 v225, v0, s[16:19], 0 offen offset:36
	buffer_load_u16 v248, v0, s[16:19], 0 offen offset:40
	buffer_load_u16 v231, v0, s[16:19], 0 offen offset:44
	buffer_load_u16 v139, v0, s[16:19], 0 offen offset:48
	buffer_load_u16 v216, v0, s[16:19], 0 offen offset:52
	buffer_load_u16 v170, v0, s[16:19], 0 offen offset:56
	buffer_load_u16 v171, v0, s[16:19], 0 offen offset:60
	buffer_load_u16 v208, v0, s[16:19], 0 offen offset:64
	buffer_load_u16 v209, v0, s[16:19], 0 offen offset:68
	buffer_load_u16 v222, v0, s[16:19], 0 offen offset:72
	buffer_load_u16 v254, v0, s[16:19], 0 offen offset:76
	buffer_load_u16 v250, v0, s[16:19], 0 offen offset:80
	buffer_load_u16 v141, v0, s[16:19], 0 offen offset:84
	buffer_load_u16 v253, v0, s[16:19], 0 offen offset:88
	buffer_load_u16 v142, v0, s[16:19], 0 offen offset:92
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v66, v137, v66
	v_mul_f32_e32 v67, v137, v67
	v_mul_f32_e32 v69, v137, v69
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s37, s37, s3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v241, 16, v241
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v240, 16, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v226, v66, v240
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v66, v122
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v122, 16, v165
	v_lshlrev_b32_e32 v165, 16, v242
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v233, v67, v165
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v165, 16, v215
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v206, v69, v165
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v65, v137, v65 :: v_dual_add_nc_u32 v244, s36, v144
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	scratch_store_b32 off, v140, off offset:580 ; 4-byte Folded Spill
	s_clause 0x7
	buffer_load_u16 v159, v0, s[16:19], 0 offen offset:132
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:136
	buffer_load_u16 v243, v244, s[16:19], 0 offen
	buffer_load_u16 v237, v244, s[16:19], 0 offen offset:4
	buffer_load_u16 v252, v244, s[16:19], 0 offen offset:8
	buffer_load_u16 v236, v244, s[16:19], 0 offen offset:12
	buffer_load_u16 v249, v244, s[16:19], 0 offen offset:16
	buffer_load_u16 v232, v244, s[16:19], 0 offen offset:20
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v223, v65, v241
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v68, v137, v68
	v_mul_f32_e32 v70, v137, v70
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v72, v137, v72 :: v_dual_lshlrev_b32 v165, 16, v138
	v_mul_f32_e32 v71, v137, v71
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v219, v68, v122
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v68, v124
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v124, 16, v239
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v58, v137, v58
	v_mul_f32_e32 v57, v137, v57
	v_mul_f32_e32 v60, v137, v60
	v_mul_f32_e32 v62, v137, v62
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v214, v70, v124
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v70, v126
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v126, 16, v235
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v123, v137, v123
	v_mul_f32_e32 v129, v137, v129
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v61, v137, v61
	v_mul_f32_e32 v64, v137, v64
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v198, v72, v126
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v126, v128
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v128, 16, v225
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v229, v71, v165
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v165, 16, v224
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v63, v137, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v113, v137, v113 :: v_dual_fmac_f32 v190, v58, v128
	v_cvt_f32_i32_e32 v58, v130
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v130, 16, v231
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v127, v137, v127
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v52, v137, v52
	v_mul_f32_e32 v51, v137, v51
	v_mul_f32_e32 v54, v137, v54
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v218, v60, v130
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v60, v132
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v59, v137, v59 :: v_dual_lshlrev_b32 v132, 16, v216
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v115, v137, v115
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v55, v137, v55
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v119, v137, v119 :: v_dual_fmac_f32 v174, v62, v132
	v_cvt_f32_i32_e32 v62, v134
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v41, v137, v41 :: v_dual_lshlrev_b32 v134, 16, v171
	v_mul_f32_e32 v43, v137, v43
	v_mul_f32_e32 v45, v137, v45
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v62, v137, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v166, v64, v134
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v134, v136
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v91, v137, v91 :: v_dual_lshlrev_b32 v136, 16, v209
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v47, v137, v47
	v_mul_f32_e32 v33, v137, v33
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v107, v137, v107
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v39, v137, v39
	scratch_load_b32 v171, off, off offset:208 ; 4-byte Folded Reload
	v_mul_f32_e32 v34, v137, v34
	v_mul_f32_e32 v46, v137, v46
	v_mul_f32_e32 v36, v137, v36
	v_mul_f32_e32 v48, v137, v48
	v_mul_f32_e32 v35, v137, v35
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v97, v137, v97
	v_mul_f32_e32 v109, v137, v109
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v37, v137, v37
	v_mul_f32_e32 v29, v137, v29
	v_mul_f32_e32 v25, v137, v25
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v121, v137, v121
	v_mul_f32_e32 v68, v137, v68
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v137, v27
	v_mul_f32_e32 v38, v137, v38
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v99, v137, v99
	v_mul_f32_e32 v70, v137, v70
	v_mul_f32_e32 v126, v137, v126
	v_mul_f32_e32 v58, v137, v58
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v137, v32
	v_mul_f32_e32 v31, v137, v31
	v_mul_f32_e32 v19, v137, v19
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v81, v137, v81
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v17, v137, v17
	v_mul_f32_e32 v28, v137, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v83, v137, v83
	v_mul_f32_e32 v134, v137, v134
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v30, v137, v30
	v_mul_f32_e32 v23, v137, v23
	v_mul_f32_e32 v9, v137, v9
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v73, v137, v73
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v18, v137, v18
	v_mul_f32_e32 v21, v137, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v77, v137, v77
	v_mul_f32_e32 v87, v137, v87
	v_dual_mov_b32 v241, v223 :: v_dual_mul_f32 v66, v137, v66
	v_mul_f32_e32 v89, v137, v89
	v_mul_f32_e32 v95, v137, v95
	v_mul_f32_e32 v60, v137, v60
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v11, v137, v11
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v135, v137, v135
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v15, v137, v15
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v117, v137, v117
	v_mul_f32_e32 v93, v137, v93
	v_mul_f32_e32 v105, v137, v105
	scratch_load_b32 v138, off, off offset:20 ; 4-byte Folded Reload
	v_mul_f32_e32 v85, v137, v85
	v_mul_f32_e32 v79, v137, v79
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v13, v137, v13
	v_mul_f32_e32 v14, v137, v14
	v_mul_f32_e32 v16, v137, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v111, v137, v111
	v_mul_f32_e32 v101, v137, v101
	v_mul_f32_e32 v103, v137, v103
	v_mul_f32_e32 v75, v137, v75
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s36, s36, s3
	s_cmp_lg_u32 s35, 0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v243, 16, v243
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v65, 16, v237
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v122, 16, v252
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_store_b32 off, v140, off offset:556 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:140
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v67, 16, v236
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v173, v121, v243 :: v_dual_fmac_f32 v168, v123, v122
	scratch_load_b32 v121, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v69, 16, v232
	v_lshlrev_b32_e32 v124, 16, v249
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v205, v66, v65
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v123, off, off offset:256
	scratch_load_b32 v122, off, off offset:252
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	scratch_store_b32 off, v140, off offset:560 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:144
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:540 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:148
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:544 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:152
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:524 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:156
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:528 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:160
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:516 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:164
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:520 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:168
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:492 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:172
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:496 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:176
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:476 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:180
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:480 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:184
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:460 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:188
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:464 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:192
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:452 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:196
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:456 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:200
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:428 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:204
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:432 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:208
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:412 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:212
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:416 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:216
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:396 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:220
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:400 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:224
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:388 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:228
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:392 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:232
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:364 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:236
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:368 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:240
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:348 ; 4-byte Folded Spill
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:244
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v140, off offset:352 ; 4-byte Folded Spill
	s_clause 0x1
	buffer_load_u16 v140, v0, s[16:19], 0 offen offset:248
	buffer_load_u16 v0, v0, s[16:19], 0 offen offset:252
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v140, off offset:336 ; 4-byte Folded Spill
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	s_clause 0x1a
	buffer_load_u16 v203, v244, s[16:19], 0 offen offset:24
	buffer_load_u16 v228, v244, s[16:19], 0 offen offset:28
	buffer_load_u16 v245, v244, s[16:19], 0 offen offset:32
	buffer_load_u16 v234, v244, s[16:19], 0 offen offset:36
	buffer_load_u16 v220, v244, s[16:19], 0 offen offset:40
	buffer_load_u16 v221, v244, s[16:19], 0 offen offset:44
	buffer_load_u16 v230, v244, s[16:19], 0 offen offset:48
	buffer_load_u16 v217, v244, s[16:19], 0 offen offset:52
	buffer_load_u16 v212, v244, s[16:19], 0 offen offset:56
	buffer_load_u16 v213, v244, s[16:19], 0 offen offset:60
	buffer_load_u16 v0, v244, s[16:19], 0 offen offset:64
	buffer_load_u16 v163, v244, s[16:19], 0 offen offset:68
	buffer_load_u16 v255, v244, s[16:19], 0 offen offset:72
	buffer_load_u16 v227, v244, s[16:19], 0 offen offset:76
	buffer_load_u16 v251, v244, s[16:19], 0 offen offset:80
	buffer_load_u16 v140, v244, s[16:19], 0 offen offset:84
	buffer_load_u16 v246, v244, s[16:19], 0 offen offset:88
	buffer_load_u16 v247, v244, s[16:19], 0 offen offset:92
	buffer_load_u16 v146, v244, s[16:19], 0 offen offset:96
	buffer_load_u16 v144, v244, s[16:19], 0 offen offset:100
	buffer_load_u16 v148, v244, s[16:19], 0 offen offset:104
	buffer_load_u16 v147, v244, s[16:19], 0 offen offset:108
	buffer_load_u16 v152, v244, s[16:19], 0 offen offset:112
	buffer_load_u16 v151, v244, s[16:19], 0 offen offset:116
	buffer_load_u16 v156, v244, s[16:19], 0 offen offset:120
	buffer_load_u16 v155, v244, s[16:19], 0 offen offset:124
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:128
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v125, v137, v125
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v175, v57, v165
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v50, v137, v50 :: v_dual_lshlrev_b32 v165, 16, v248
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v133, v137, v133
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v49, v137, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, v137, v56 :: v_dual_fmac_f32 v211, v59, v165
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v238, v50, v136 :: v_dual_lshlrev_b32 v165, 16, v139
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v136, 16, v222
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v42, v137, v42
	v_mul_f32_e32 v44, v137, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v167, v61, v165
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v131, v137, v131
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v72, 16, v203
	v_mov_b32_e32 v203, v189
	s_waitcnt vmcnt(24)
	v_dual_mov_b32 v189, v162 :: v_dual_lshlrev_b32 v128, 16, v245
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v57, 16, v234
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v22, v137, v22 :: v_dual_lshlrev_b32 v59, 16, v221
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v199, v127, v72
	scratch_load_b32 v127, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v132, 16, v230
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v50, 16, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v114
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v165, 16, v170
	v_lshlrev_b32_e32 v114, 16, v254
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v71, 16, v228
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v137, v20
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v0, v137, v0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v210, v63, v165 :: v_dual_lshlrev_b32 v165, 16, v208
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v63, 16, v213
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v203, v52, v114
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v52, v116
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v116, 16, v141
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v189, v49, v165
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v161, v51, v136 :: v_dual_lshlrev_b32 v114, 16, v255
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v160, off offset:572 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:132
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v53, v137, v53 :: v_dual_lshlrev_b32 v136, 16, v250
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v202, v54, v116 :: v_dual_lshlrev_b32 v51, 16, v227
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v54, v118
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v118, 16, v142
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v200, v53, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v136, 16, v253
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v165, off, off offset:192
	scratch_load_b32 v142, off, off offset:52
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v201, v126, v71
	scratch_load_b32 v126, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v195, v55, v136
	v_dual_fmac_f32 v196, v56, v118 :: v_dual_lshlrev_b32 v55, 16, v247
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v56, 16, v246
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v118, v120
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v120, 16, v143
	v_lshlrev_b32_e32 v136, 16, v193
	v_mov_b32_e32 v193, v145
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v10, v137, v10 :: v_dual_lshlrev_b32 v49, 16, v163
	scratch_load_b32 v163, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v118, v137, v118
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v193, v41, v136 :: v_dual_lshlrev_b32 v136, 16, v150
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v41, 16, v144
	v_lshlrev_b32_e32 v61, 16, v217
	scratch_load_b32 v150, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v204, v125, v124
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v188, v43, v136 :: v_dual_lshlrev_b32 v43, 16, v147
	v_fmac_f32_e32 v194, v42, v120
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v42, v90
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v90, 16, v149
	v_lshlrev_b32_e32 v136, 16, v154
	scratch_load_b32 v154, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v120, 16, v146
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v146, off, off offset:84
	scratch_load_b32 v125, off, off offset:264
	scratch_load_b32 v124, off, off offset:260
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v186, v45, v136 :: v_dual_lshlrev_b32 v45, 16, v151
	v_fmac_f32_e32 v192, v44, v90
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v136, 16, v158
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v44, v92
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v92, 16, v153
	scratch_load_b32 v158, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v130, 16, v220
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v185, v47, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v139, off, off offset:32
	scratch_load_b32 v136, off, off offset:580
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v42, v137, v42 :: v_dual_fmac_f32 v187, v46, v92
	v_cvt_f32_i32_e32 v46, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v94, 16, v157
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v44, v137, v44 :: v_dual_lshlrev_b32 v47, 16, v155
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v92, 16, v152
	scratch_load_b32 v152, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v182, v131, v130
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v90, 16, v148
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v148, off, off offset:100
	scratch_load_b32 v131, off, off offset:288
	scratch_load_b32 v130, off, off offset:284
	v_lshlrev_b32_e32 v64, 16, v212
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v197, v129, v128
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:280
	scratch_load_b32 v128, off, off offset:276
	v_dual_fmac_f32 v191, v58, v57 :: v_dual_lshlrev_b32 v116, 16, v251
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v52, v137, v52 :: v_dual_fmac_f32 v123, v91, v90
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v91, off, off offset:92
	scratch_load_b32 v90, off, off offset:88
	v_dual_mul_f32 v54, v137, v54 :: v_dual_lshlrev_b32 v53, 16, v140
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v140, off, off offset:36
	scratch_load_b32 v57, off, off offset:8
	v_fmac_f32_e32 v183, v60, v59
	s_waitcnt vmcnt(23)
	v_fmac_f32_e32 v127, v119, v56
	scratch_load_b32 v119, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(23)
	scratch_store_b32 off, v160, off offset:576 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:136
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v126, v42, v41 :: v_dual_fmac_f32 v125, v89, v120
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v120, off, off offset:244
	scratch_load_b32 v89, off, off offset:76
	s_waitcnt vmcnt(17)
	v_fmac_f32_e32 v124, v44, v43
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v136, 16, v136
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v180, v33, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v145, off, off offset:80
	scratch_load_b32 v136, off, off offset:556
	scratch_load_b32 v33, off, off offset:576
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v131, v115, v114
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v115, off, off offset:224
	scratch_load_b32 v114, off, off offset:220
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v130, v54, v53 :: v_dual_fmac_f32 v129, v117, v116
	s_waitcnt vmcnt(13)
	v_fmac_f32_e32 v128, v118, v55
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v118, off, off offset:236
	scratch_load_b32 v117, off, off offset:232
	scratch_load_b32 v116, off, off offset:228
	v_fmac_f32_e32 v121, v93, v92
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v93, off, off offset:108
	scratch_load_b32 v92, off, off offset:104
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(12)
	scratch_store_b32 off, v160, off offset:564 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:140
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v136, 16, v136
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v46, v137, v46 :: v_dual_fmac_f32 v179, v35, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:112
	scratch_load_b32 v136, off, off offset:540
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v26, v137, v26
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v122, v46, v45
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	scratch_store_b32 off, v160, off offset:568 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:144
	scratch_load_b32 v35, off, off offset:568 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v184, v48, v94
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v94, v96
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v96, 16, v159
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v48, 16, v156
	scratch_load_b32 v156, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v181, v34, v96
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v141, off, off offset:48
	scratch_load_b32 v34, off, off offset:572
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v120, v95, v48
	scratch_load_b32 v95, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v136, 16, v136
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v176, v37, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v153, off, off offset:144
	scratch_load_b32 v136, off, off offset:524
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v40, v137, v40
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	scratch_store_b32 off, v160, off offset:548 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:148
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v96, 16, v34
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v34, v106
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v106, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v160, off offset:552 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:152
	scratch_load_b32 v37, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v94, v137, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v24, v137, v24 :: v_dual_fmac_f32 v119, v94, v47
	scratch_load_b32 v94, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v177, v36, v106
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v159, off, off offset:308
	scratch_load_b32 v143, off, off offset:64
	scratch_load_b32 v36, off, off offset:564
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v172, v68, v67
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	scratch_store_b32 off, v160, off offset:532 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:156
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v159, v133, v132
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:296
	scratch_load_b32 v132, off, off offset:292
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v106, 16, v36
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v36, v108
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v108, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v164, v70, v69 :: v_dual_fmac_f32 v115, v107, v106
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v107, off, off offset:196
	scratch_load_b32 v106, off, off offset:184
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	scratch_store_b32 off, v160, off offset:536 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:160
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v133, v113, v50
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:216
	scratch_load_b32 v170, off, off offset:204
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v171, v39, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v108, 16, v108
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v155, off, off offset:160
	scratch_load_b32 v136, off, off offset:516
	scratch_load_b32 v39, off, off offset:536
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v178, v38, v108
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v147, off, off offset:96
	scratch_load_b32 v38, off, off offset:548
	s_waitcnt vmcnt(7)
	scratch_store_b32 off, v160, off offset:508 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:164
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v165, v25, v136 :: v_dual_lshlrev_b32 v108, 16, v38
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v38, v110
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v110, off, off offset:528
	scratch_load_b32 v136, off, off offset:492
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v113, v109, v108
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v109, off, off offset:212
	scratch_load_b32 v108, off, off offset:200
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(4)
	scratch_store_b32 off, v160, off offset:512 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:168
	scratch_load_b32 v25, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v110, 16, v110
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v170, v40, v110
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v110, v112
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v112, off, off offset:520
	scratch_load_b32 v151, off, off offset:128
	scratch_load_b32 v40, off, off offset:532
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(4)
	scratch_store_b32 off, v160, off offset:500 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:172
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v112, 16, v112
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v34, v137, v34
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v40, 16, v40
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v163, v26, v112
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v157, off, off offset:172
	scratch_load_b32 v26, off, off offset:508
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v109, v111, v40
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	scratch_store_b32 off, v160, off offset:504 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:176
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v112, 16, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v26, v98
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v98, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v108, v97, v112
	scratch_load_b32 v97, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	scratch_store_b32 off, v160, off offset:484 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:180
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v98, 16, v98
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v158, v28, v98
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v28, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v160, off offset:488 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:184
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v98, 16, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v28, v100
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v100, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v106, v99, v98
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v99, off, off offset:156
	scratch_load_b32 v98, off, off offset:152
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	scratch_store_b32 off, v160, off offset:468 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:188
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v100, 16, v100
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v156, v30, v100
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v30, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v160, off offset:472 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:192
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v100, 16, v30
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v30, v102
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v102, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v160, off offset:444 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:196
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v102, 16, v102
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v153, v32, v102
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v102, v104
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v104, off, off offset:456 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v32, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v157, v27, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:476
	scratch_load_b32 v27, off, off offset:504
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(4)
	scratch_store_b32 off, v160, off offset:448 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:200
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v104, 16, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v152, v18, v104
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v18, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v155, v29, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:460
	scratch_load_b32 v29, off, off offset:488
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	scratch_store_b32 off, v160, off offset:436 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:204
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v104, 16, v18
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v18, v82
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v82, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v136, 16, v136
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v154, v31, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:452
	scratch_load_b32 v31, off, off offset:472
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	scratch_store_b32 off, v160, off offset:440 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:208
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v82, 16, v82
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v150, v20, v82
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v20, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v160, off offset:420 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:212
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v82, 16, v20
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v20, v84
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v84, off, off offset:416 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v137, v20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v151, v17, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:428
	scratch_load_b32 v17, off, off offset:448
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	scratch_store_b32 off, v160, off offset:424 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:216
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v84, 16, v84
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v147, v22, v84
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v22, off, off offset:420 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v35, 16, v35
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v160, off offset:404 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:220
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v84, 16, v22
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v22, v86
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v86, off, off offset:400 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v93, v85, v84
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v85, off, off offset:44
	scratch_load_b32 v84, off, off offset:40
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v12, v137, v12
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v149, v19, v136
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:412
	scratch_load_b32 v19, off, off offset:440
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v22, v137, v22 :: v_dual_lshlrev_b32 v37, 16, v37
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	scratch_store_b32 off, v160, off offset:408 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:224
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v86, 16, v86
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v28, v137, v28 :: v_dual_fmac_f32 v145, v24, v86
	v_cvt_f32_i32_e32 v86, v88
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v88, off, off offset:392
	scratch_load_b32 v24, off, off offset:404
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(2)
	scratch_store_b32 off, v160, off offset:380 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:228
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v88, 16, v88
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v160, off offset:384 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:232
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v160, off offset:372 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:236
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v160, off offset:376 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:240
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v160, off offset:356 ; 4-byte Folded Spill
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:244
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v160, off offset:360 ; 4-byte Folded Spill
	s_clause 0x1
	buffer_load_u16 v160, v244, s[16:19], 0 offen offset:248
	buffer_load_u16 v244, v244, s[16:19], 0 offen offset:252
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v18, v137, v18
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	scratch_store_b32 off, v160, off offset:344 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v160, off, off offset:312
	scratch_load_b32 v144, off, off offset:68
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v160, v62, v61
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v144, v10, v88
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v10, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v88, 16, v10
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v132, v52, v51
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v10, v74
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	scratch_load_b32 v74, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v89, v73, v88
	scratch_load_b32 v88, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v148, v21, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v136, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v36, v137, v36 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v137, v10
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v21, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v116, v36, v35 :: v_dual_lshlrev_b32 v33, 16, v33
	v_fmac_f32_e32 v91, v87, v24
	scratch_load_b32 v87, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v117, v34, v33 :: v_dual_lshlrev_b32 v136, 16, v136
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v146, v23, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v136, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v29, 16, v29
	scratch_load_b32 v23, off, off offset:408 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v136, 16, v136
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v143, v9, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:364
	scratch_load_b32 v9, off, off offset:384
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v38, v137, v38 :: v_dual_lshlrev_b32 v31, 16, v31
	v_dual_mul_f32 v26, v137, v26 :: v_dual_lshlrev_b32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v114, v38, v37
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v107, v26, v25 :: v_dual_lshlrev_b32 v136, 16, v136
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v102, v137, v102 :: v_dual_fmac_f32 v141, v11, v136
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	scratch_load_b32 v136, off, off offset:348 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v74, 16, v74
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v11, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v99, v102, v31 :: v_dual_lshlrev_b32 v32, 16, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v142, v12, v74
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v12, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v110, v137, v110 :: v_dual_lshlrev_b32 v17, 16, v17
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v98, v103, v32
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v136, 16, v136
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v139, v13, v136
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v13, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v74, 16, v12
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v12, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v76, off, off offset:352
	scratch_load_b32 v136, off, off offset:336
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v12, v137, v12 :: v_dual_lshlrev_b32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v87, v12, v11
	scratch_load_b32 v12, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v76, 16, v76
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v136, 16, v136
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v138, v15, v136
	scratch_load_b32 v136, off, off offset:16 ; 4-byte Folded Reload
	v_fmac_f32_e32 v140, v14, v76
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v14, off, off offset:356 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v15, 16, v244
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v97, v18, v17
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v21, 16, v21
	scratch_load_b32 v18, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v92, v22, v21
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v76, 16, v14
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v14, v78
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v78, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v30, v137, v30 :: v_dual_lshlrev_b32 v9, 16, v9
	v_mul_f32_e32 v86, v137, v86
	v_mul_f32_e32 v14, v137, v14
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v84, v77, v76
	scratch_load_b32 v77, off, off offset:320 ; 4-byte Folded Reload
	v_fmac_f32_e32 v88, v10, v9
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v12, s38, v12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v78, 16, v78
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v136, v16, v78
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v78, v80
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v16, off, off offset:344 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v78, v137, v78 :: v_dual_add_nc_u32 v77, s38, v77
	scratch_load_b32 v137, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v90, v86, v23
	scratch_load_b32 v86, off, off offset:56 ; 4-byte Folded Reload
	v_fmac_f32_e32 v94, v83, v82
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v83, off, off offset:28
	scratch_load_b32 v82, off, off offset:24
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v137, v134, v63
	scratch_load_b32 v134, off, off offset:300 ; 4-byte Folded Reload
	v_fmac_f32_e32 v95, v20, v19
	scratch_load_b32 v19, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v18, s22, v18
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v86, v75, v74
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v82, v78, v15 :: v_dual_fmac_f32 v83, v79, v16
	scratch_load_b32 v16, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v85, v14, v13
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v134, v0, v49
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	v_fmac_f32_e32 v57, v135, v64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v19, s38, v19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v16, s38, v16
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v110, v39
	scratch_store_b32 off, v57, off offset:8 ; 4-byte Folded Spill
	scratch_load_b32 v135, off, off offset:8 ; 4-byte Folded Reload
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v110, off, off offset:4
	scratch_load_b32 v0, off, off
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v101, v100
	scratch_load_b32 v101, off, off offset:168 ; 4-byte Folded Reload
	v_fmac_f32_e32 v118, v105, v96
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v105, off, off offset:180
	scratch_load_b32 v96, off, off offset:136
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:12
	scratch_load_b32 v100, off, off
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v101, v30, v29
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v105, v28, v27 :: v_dual_fmac_f32 v96, v81, v104
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s22, v0
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:636
	scratch_load_b32 v81, off, off offset:640
	scratch_load_b32 v76, off, off offset:644
.LBB0_4:                                ; %._crit_edge
	.loc	1 185 44 is_stmt 1              ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v2, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v168
	v_dual_mul_f32 v1, 0xbfb8aa3b, v173 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v172
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s33, 7
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s2, s2, s23
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v11, 0xbfb8aa3b, v164 :: v_dual_mul_f32 v62, 0xbfb8aa3b, v197
	v_dual_mul_f32 v7, 0xbfb8aa3b, v204 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v199
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_dual_mul_f32 v61, 0xbfb8aa3b, v201 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v5, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v45, 0xbfb8aa3b, v115
	v_dual_mul_f32 v63, 0xbfb8aa3b, v191 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v160
	v_exp_f32_e32 v1, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v173
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_dual_mul_f32 v59, 0xbfb8aa3b, v183 :: v_dual_mul_f32 v56, 0xbfb8aa3b, v134
	v_dual_mul_f32 v17, 0xbfb8aa3b, v159 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v130
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v1, v1, v2
	v_exp_f32_e32 v2, v6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_mul_f32_e32 v24, 0xbfb8aa3b, v96
	v_dual_mul_f32 v20, 0xbfb8aa3b, v135 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v137
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v23, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v64, null, v1, v1, v205
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v2, v2, v5
	v_mul_f32_e32 v31, 0xbfb8aa3b, v101
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v68, s0, v205, v1, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v65, v64
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v55, 0xbfb8aa3b, v132 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v127
	v_dual_mul_f32 v29, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v66, null, v2, v2, v173
	v_div_scale_f32 v3, s1, v173, v2, v173
	v_fma_f32 v5, -v64, v65, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v67, v66
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v172
	v_dual_mul_f32 v53, 0xbfb8aa3b, v128 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v123
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v65, v5, v65
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v35, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v71, v4
	v_dual_mul_f32 v51, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v117
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v5, -v66, v67, 1.0
	v_mul_f32_e32 v70, v68, v65
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v41, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v120
	v_dual_mul_f32 v49, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v46, 0xbfb8aa3b, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v67, v5, v67
	v_fma_f32 v74, -v64, v70, v68
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v69, v71, v69
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v168
	.loc	1 190 18 is_stmt 1              ; generate_amdgcn.py:190:18
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v71, s23, v76
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v75, v3, v67 :: v_dual_fmac_f32 v70, v74, v65
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v47, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v113
	v_dual_mul_f32 v43, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v36, 0xbfb8aa3b, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v74, -v66, v75, v3
	v_fma_f32 v64, -v64, v70, v68
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v68, 1.0, v69
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v73, v73
	v_dual_mul_f32 v39, 0xbfb8aa3b, v109 :: v_dual_mul_f32 v30, 0xbfb8aa3b, v100
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v75, v74, v67
	v_div_fmas_f32 v64, v64, v65, v70
	v_div_scale_f32 v65, null, v68, v68, v172
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v3, -v66, v75, v3
	v_div_fixup_f32 v64, v64, v1, v205
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v66, v73, v72
	.loc	1 190 18 is_stmt 1              ; generate_amdgcn.py:190:18
	v_add3_u32 v1, s2, s3, v71
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v37, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v105
	v_dual_mul_f32 v33, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v99
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v3, v3, v67, v75
	v_rcp_f32_e32 v67, v65
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v11, s0, v172, v68, v172
	v_div_scale_f32 v69, null, v66, v66, v168
	v_div_fixup_f32 v2, v3, v2, v173
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v3, v226, v64
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v71, v69
	v_fma_f32 v70, -v65, v67, 1.0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v64, v241, v2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.h, 0
	v_mov_b16_e32 v2.l, v3.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v27, 0xbfb8aa3b, v98 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v72.l, v64.h
	v_mov_b16_e32 v72.h, v2.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v67, v70, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v69, v71, 1.0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v7, s1, v168, v66, v168
	v_dual_fmac_f32 v71, v74, v71 :: v_dual_and_b32 v72, 1, v72
	v_dual_mul_f32 v76, v11, v67 :: v_dual_and_b32 v75, 1, v2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v79, v7, v71
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v75, v3, v75, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v78, -v65, v76, v11
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v164
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_add3_u32 v72, v64, v72, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v25, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v90
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v76, v78, v67
	v_fma_f32 v78, -v69, v79, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v3.h, 0x7fff, v75.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v73, v73
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v11, -v65, v76, v11
	v_fmac_f32_e32 v79, v78, v71
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v60
	v_dual_mul_f32 v21, 0xbfb8aa3b, v94 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v11, v11, v67, v76
	v_fma_f32 v7, -v69, v79, v7
	s_mov_b32 vcc_lo, s1
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v76, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v70, v73, v70
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v11, v11, v68, v172
	v_div_fmas_f32 v7, v7, v71, v79
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v76, 0xbfb8aa3b, v199 :: v_dual_add_f32 v65, 1.0, v70
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v7, v66, v168
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v204
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v3.l, 0x7fff, v72.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v69, null, v65, v65, v164
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v66, v233, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v73, v77
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v68, v69
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v76, v76
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.l, v66.h
	v_mov_b16_e32 v61.h, v2.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v19, 0xbfb8aa3b, v92 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v89
	v_dual_mul_f32 v15, 0xbfb8aa3b, v91 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v84
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v67, v73, v74
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v7, -v69, v68, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v13, 0xbfb8aa3b, v88 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v87
	v_dual_mul_f32 v9, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v67, 1.0, v67 :: v_dual_fmac_f32 v68, v7, v68
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v72, vcc_lo, v164, v65, v164
	v_div_scale_f32 v64, null, v67, v67, v204
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v4, 0xbfb8aa3b, v83 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v74, v72, v68
	v_rcp_f32_e32 v70, v64
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v80, 1, v81
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v77, -v69, v74, v72
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v11, v219, v11
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v74, v77, v68
	v_fma_f32 v60, -v64, v70, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v11.h
	v_cmp_o_f32_e64 s1, v11, v11
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v70, v60, v70 :: v_dual_fmac_f32 v71, 0xbfb8aa3b, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v73, 1, v2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v60, v71
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v71, s0, v204, v67, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v73, v11, v73, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v78, v71, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v11, v60, v7
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v60, -v64, v78, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v7.h, 0x7fff, v73.h, s1
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v73, 1.0, v11
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v11, -v69, v74, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v60, v70
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v60, v76, v75
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v69, null, v73, v73, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v11, v11, v68, v74
	v_fma_f32 v64, -v64, v78, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v68, v69
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v11, v11, v65, v164
	v_div_fmas_f32 v64, v64, v70, v78
	v_div_scale_f32 v65, null, v60, v60, v199
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v66, v61, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v64, v64, v67, v204
	v_fma_f32 v66, -v69, v68, 1.0
	v_rcp_f32_e32 v67, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v71.h, v2.h
	v_cndmask_b16 v7.l, 0x7fff, v61.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v68, v66, v68
	v_div_scale_f32 v63, s0, v201, v73, v201
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v61, v206, v64
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v70, -v65, v67, 1.0
	v_mul_f32_e32 v72, v63, v68
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v191
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v62, s1, v199, v60, v199
	v_fma_f32 v75, -v69, v72, v63
	v_fmac_f32_e32 v67, v70, v67
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v66, v66
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v11, v214, v11 :: v_dual_fmac_f32 v72, v75, v68
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v11.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v76, v62, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v11, v11
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v64, v66, v64
	v_exp_f32_e32 v66, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v77, 1, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v75, -v65, v76, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v71.l, v61.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v74, v11, v77, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v11, -v69, v72, v63
	v_dual_fmac_f32 v76, v75, v67 :: v_dual_add_f32 v63, 1.0, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v69.h, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v64, v11, v68, v72
	v_fma_f32 v11, -v65, v76, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_div_scale_f32 v65, null, v63, v63, v191
	s_mov_b32 vcc_lo, s1
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v62, v66, v70
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v66, v11, v67, v76
	v_rcp_f32_e32 v67, v65
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v71, 1, v71
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v64, v64, v73, v201
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v60, v66, v60, v199
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_add3_u32 v71, v61, v71, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v74.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v61, null, v62, v62, v197
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v66, -v65, v67, 1.0
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v60, v229, v60
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v11.l, 0x7fff, v71.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v59, s0, v191, v63, v191
	v_fmac_f32_e32 v67, v66, v67
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v69.l, v60.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v64, v198, v64
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v73, v59, v67
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v69, 1, v69
	v_mov_b16_e32 v2.l, v64.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v68, v61
	v_fma_f32 v75, -v65, v73, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v183
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v72, 1, v2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v14, s1, v197, v62, v197
	v_fmac_f32_e32 v73, v75, v67
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v182
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v71, -v61, v68, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v72, v64, v72, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v59, -v65, v73, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v64, v64
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v64, v74
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v68, v71, v68
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v66, v70, v66
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v59, v59, v67, v73
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v69, v60, v69, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v65, 1.0, v66
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v59, v59, v63, v191
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v64, v64, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v59, v190, v59 :: v_dual_add_f32 v64, 1.0, v64
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v59.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v76, v14, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v63, null, v64, v64, v182
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v71, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v75, -v61, v76, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v71, v59, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v76, v75, v68
	v_fma_f32 v14, -v61, v76, v14
	v_div_scale_f32 v61, null, v65, v65, v183
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v14, v68, v76
	v_rcp_f32_e32 v67, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_cndmask_b16 v14.h, 0x7fff, v72.h, s2
	v_mov_b16_e32 v68.h, v2.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v62, v66, v62, v197
	v_rcp_f32_e32 v66, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.l, 0x7fff, v69.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v58, s0, v183, v65, v183
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v60, v175, v62
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v62, -v61, v67, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v63, v66, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v68.l, v60.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v67, v62, v67
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_exp_f32_e32 v17, v69
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v66, v70, v66
	v_div_scale_f32 v70, s1, v182, v64, v182
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v159
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v75, v70, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v62, v17, v62
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v68, 1, v68
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v73, v73
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v17.h, 0x7fff, v71.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v59, -v63, v75, v70
	v_mul_f32_e32 v72, v58, v67
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v75, v59, v66
	v_fma_f32 v74, -v61, v72, v58
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v59, 1.0, v62
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v68, v60, v68, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v62, v73, v69
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s0
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v72, v74, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v61, v72, v58
	v_fma_f32 v61, -v63, v75, v70
	v_div_scale_f32 v63, null, v59, v59, v160
	v_div_fmas_f32 v58, v58, v67, v72
	s_mov_b32 vcc_lo, s1
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v72, 0, 0x42800000, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v61, v61, v66, v75
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v58, v58, v65, v183
	v_rcp_f32_e32 v65, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v60, v61, v64, v182
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v17.l, 0x7fff, v68.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.h, v2.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v60, v211, v60
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v62, 1.0, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v64, -v63, v65, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.l, v60.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v58, v218, v58 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v137
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v61, null, v62, v62, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v64, v65
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v68, vcc_lo, v160, v59, v160
	v_rcp_f32_e32 v66, v61
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v57, 1, v57
	v_mov_b16_e32 v2.l, v58.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v70, v68, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v58, v58
	v_and_b32_e32 v69, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v73, -v63, v70, v68
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v60, v57, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v20, -v61, v66, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v69, v58, v69, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v70, v73, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v20, v66
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v20, v67
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v67, s0, v159, v62, v159
	v_fma_f32 v63, -v63, v70, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v74, v67, v66
	v_div_fmas_f32 v63, v63, v65, v70
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v58, v20, v64
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v64, -v61, v74, v67
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.h, 0x7fff, v69.h, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v59, v63, v59, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v74, v64, v66 :: v_dual_mul_f32 v59, v174, v59
	v_fma_f32 v61, -v61, v74, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.h, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v2.l, v59.h
	v_cmp_o_f32_e64 s2, v59, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v61, v61, v66, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_and_b32_e32 v73, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v60, v61, v62, v159
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.l, 0x7fff, v57.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v57, v167, v60
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.l, v57.h
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v58, 1.0, v58 :: v_dual_and_b32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v68, null, v58, v58, v137
	v_div_scale_f32 v56, s0, v137, v58, v137
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v67, v57, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v65, v68
	v_fma_f32 v61, -v68, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v72, 0xbfb8aa3b, v135 :: v_dual_fmac_f32 v65, v61, v65
	v_exp_f32_e32 v72, v72
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v69, v56, v65
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v134
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v64, v72, v71
	v_exp_f32_e32 v61, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v71, -v68, v69, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v133
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v64, 1.0, v64 :: v_dual_fmac_f32 v69, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v63, null, v64, v64, v135
	v_div_scale_f32 v23, s1, v135, v64, v135
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v60, v61, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v62, v63
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v61, v70
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v70, v59, v73, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v56, -v68, v69, v56
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v59, 1.0, v60
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v66, -v63, v62, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v62, v66, v62
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v56, v56, v65, v69
	v_mul_f32_e32 v72, v23, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v60, v61, v66
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v61, null, v59, v59, v134
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v65.h, v2.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v71, -v63, v72, v23
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v56, v56, v58, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v71, v62
	v_fma_f32 v23, -v63, v72, v23
	v_rcp_f32_e32 v63, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v62, v23, v62, v72
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_cndmask_b16 v23.h, 0x7fff, v70.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v58, v62, v64, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v61, v63, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v67.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v55, s0, v134, v59, v134
	v_fmac_f32_e32 v63, v62, v63
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v69, v55, v63 :: v_dual_fmac_f32 v66, 0xbfb8aa3b, v132
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v71, -v61, v69, v55
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v60, 1.0, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v66, v66
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v69, v71, v63
	v_div_scale_f32 v57, null, v60, v60, v133
	v_div_scale_f32 v26, s1, v133, v60, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v61, v69, v55
	v_rcp_f32_e32 v64, v57
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v62, v66, v62
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v56, v166, v56 :: v_dual_add_f32 v61, 1.0, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v56.h
	v_cmp_o_f32_e64 s2, v56, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v67, -v57, v64, 1.0
	v_fmac_f32_e32 v64, v67, v64
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v55, v55, v63, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v72, v26, v64
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v55, v55, v59, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v57, v72, v26
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v55, v238, v55 :: v_dual_and_b32 v68, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v72, v71, v64
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v68, v56, v68, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v56, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v55.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v26, -v57, v72, v26
	v_div_scale_f32 v57, null, v61, v61, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v62, v26, v64, v72
	v_rcp_f32_e32 v63, v57
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v58, v210, v58
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v56, v56, v67
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v68.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v59, v62, v60, v133
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v67, 1, v2
	v_mov_b16_e32 v65.l, v58.h
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v64.h, v2.h
	v_add3_u32 v67, v55, v67, 0x7fff
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v60, null, v56, v56, v131
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v65, v58, v65, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v58, v189, v59
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v59, -v57, v63, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v62, v60
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v65.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v63, v59, v63
	v_div_scale_f32 v54, s0, v132, v61, v132
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v68, v54, v63
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v66, -v60, v62, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v130
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v70, -v57, v68, v54
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v62, v66, v62
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v29, v65
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v68, v70, v63
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v66, s1, v131, v56, v131
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v54, -v57, v68, v54
	v_mul_f32_e32 v71, v66, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v59, v29, v59
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.h, 0x7fff, v67.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v69, v69
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v54, v54, v63, v68
	v_fma_f32 v55, -v60, v71, v66
	s_mov_b32 vcc_lo, s1
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v54, v54, v61, v132
	v_fmac_f32_e32 v71, v55, v62
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v55, 1.0, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s0
	v_ldexp_f32 v59, v69, v65
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v54, v203, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v57, -v60, v71, v66
	v_div_scale_f32 v60, null, v55, v55, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v54.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v57, v57, v62, v71
	v_rcp_f32_e32 v61, v60
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v68, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v65, 1, v2
	v_mov_b16_e32 v64.l, v58.h
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v56, v57, v56, v131
	v_div_scale_f32 v57, null, v59, v59, v129
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v56, v161, v56
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v62, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v58, v64, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v58, -v60, v61, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.l, 0x7fff, v64.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v61, v58, v61
	v_fma_f32 v32, -v57, v62, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v53.l, v56.h
	v_mov_b16_e32 v53.h, v2.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v64, vcc_lo, v130, v55, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v62, v32, v62 :: v_dual_and_b32 v53, 1, v53
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v128 :: v_dual_mul_f32 v66, v64, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v53, v56, v53, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v32, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v69, -v60, v66, v64
	v_div_scale_f32 v63, s0, v129, v59, v129
	v_fmac_f32_e32 v66, v69, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v70, v63, v62
	v_fma_f32 v60, -v60, v66, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v60, v60, v61, v66
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v55, v60, v55, v130
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v55, v202, v55
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v65, v54, v65, 0x7fff
	v_cmp_o_f32_e64 s1, v54, v54
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v54, v32, v58
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v58, -v57, v70, v63
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v55.h
	v_cmp_o_f32_e64 s2, v55, v55
	v_cndmask_b16 v32.h, 0x7fff, v65.h, s1
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v70, v58, v62
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v69, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v64, null, v54, v54, v128
	v_fma_f32 v57, -v57, v70, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v63.h, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v61, v64
	v_div_fmas_f32 v57, v57, v62, v70
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v56, v57, v59, v129
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v127
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v53.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v57, -v64, v61, 1.0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v53, v200, v56
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v68, v68
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v52, s0, v128, v54, v128
	v_fmac_f32_e32 v61, v57, v61
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v63.l, v53.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v65, v52, v61
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v126
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v58, v68, v67
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v63, 1, v63
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v67, -v64, v65, v52
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v57, v57
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v125
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v63, v53, v63, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v65, v67, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v60, null, v58, v58, v127
	v_div_scale_f32 v35, s1, v127, v58, v127
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v56, v57, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v59, v60
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v57, v66
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v66, v55, v69, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v52, -v64, v65, v52
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v55, 1.0, v56
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v62, -v60, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v59, v62, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v52, v52, v61, v65
	v_mul_f32_e32 v68, v35, v59
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v56, v57, v62
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v57, null, v55, v55, v126
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v67, -v60, v68, v35
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v52, v52, v54, v128
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v68, v67, v59
	v_fma_f32 v35, -v60, v68, v35
	v_rcp_f32_e32 v60, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v59, v35, v59, v68
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v53, null, v56, v56, v125
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v35.h, 0x7fff, v66.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v54, v59, v58, v127
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v35.l, 0x7fff, v63.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v59, v53
	v_fma_f32 v58, -v57, v60, 1.0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v51, s0, v126, v55, v126
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v54, v195, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v60, v58, v60
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v63, -v53, v59, 1.0
	v_mul_f32_e32 v65, v51, v60
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v124
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.l, v54.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v59, v63, v59
	v_div_scale_f32 v38, s1, v125, v56, v125
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v62, v62
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v67, -v57, v65, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v68, v38, v59 :: v_dual_and_b32 v61, 1, v61
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v65, v67, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v54, v61, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v67, -v53, v68, v38
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v58, v62, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v51, -v57, v65, v51
	v_dual_fmac_f32 v68, v67, v59 :: v_dual_add_f32 v57, 1.0, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v51, v60, v65
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v38, -v53, v68, v38
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.h, v2.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v53, null, v57, v57, v124
	v_div_fixup_f32 v51, v51, v55, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v58, v38, v59, v68
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v59, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v52, v196, v52 :: v_dual_mul_f32 v51, v194, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v55, v58, v56, v125
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v38.l, 0x7fff, v61.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v52.h
	v_cmp_o_f32_e64 s2, v52, v52
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v54, v193, v55
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v50, s0, v124, v57, v124
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v123
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v55, -v53, v59, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v122
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v59, v55, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v41, v61
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v55, v41, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v64, 1, v2
	v_mov_b16_e32 v2.l, v51.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v64, v52, v64, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v52, v66
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v38.h, 0x7fff, v64.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v64, v50, v59
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v52, v52, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v66, -v53, v64, v50
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v52, 1.0, v52 :: v_dual_and_b32 v63, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v64, v66, v59
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v63, v51, v63, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v56, null, v52, v52, v123
	v_fma_f32 v50, -v53, v64, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.h, 0x7fff, v63.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v58, v56
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v44
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v50, v50, v59, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v50, v50, v57, v124
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v64, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v62, -v56, v58, 1.0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v50, v192, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v58, v62, v58
	v_div_scale_f32 v62, s1, v123, v52, v123
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v50.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v62, v58
	v_fma_f32 v51, -v56, v67, v62
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v67, v51, v58
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v51, 1.0, v55
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v55, v65, v61
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v2
	v_mov_b16_e32 v60.l, v54.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v53, -v56, v67, v62
	v_div_scale_f32 v56, null, v51, v51, v122
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v55, 1.0, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v53, v53, v58, v67
	v_rcp_f32_e32 v57, v56
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v60, 1, v60
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v52, v53, v52, v123
	v_div_scale_f32 v53, null, v55, v55, v121
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v60, v54, v60, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v58, v53
	v_fma_f32 v54, -v56, v57, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.l, 0x7fff, v60.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.h, v2.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v57, v54, v57
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v44, -v53, v58, 1.0
	v_div_scale_f32 v60, vcc_lo, v122, v51, v122
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v119
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v50, v61, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v58, v44, v58
	v_mul_f32_e32 v62, v60, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v50, v50
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v44, v59
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v59, s0, v121, v55, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v56, v62, v60
	v_mul_f32_e32 v66, v59, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
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
	v_mov_b16_e32 v59.h, v2.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v62, v65, v57
	v_fma_f32 v56, -v56, v62, v60
	v_div_scale_f32 v60, null, v50, v50, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v56, v56, v57, v62
	v_rcp_f32_e32 v57, v60
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v53, v53, v58, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v51, v56, v51, v122
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v52, v188, v52 :: v_dual_mul_f32 v51, v187, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.l, v52.h
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v2.l, v51.h
	v_and_b32_e32 v49, 1, v49
	v_cmp_o_f32_e64 s2, v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v65, 1, v2
	v_add3_u32 v49, v52, v49, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v52, v53, v55, v121
	v_fma_f32 v53, -v60, v57, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.l, 0x7fff, v49.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v57, v53, v57
	v_div_scale_f32 v48, s0, v119, v50, v119
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v120
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v49, v186, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v61, v48, v57
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v64, v64
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v117
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v59.l, v49.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v53, v53
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v59, 1, v59
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v54, v64, v63
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v63, -v60, v61, v48
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v59, v49, v59, 0x7fff
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v54, 1.0, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v52, v53, v52
	v_exp_f32_e32 v53, v62
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v61, v63, v57
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v62, v51, v65, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v56, null, v54, v54, v120
	v_div_scale_f32 v47, s1, v120, v54, v120
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v51, 1.0, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v55, v56
	v_fma_f32 v48, -v60, v61, v48
	v_fma_f32 v58, -v56, v55, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v55, v58, v55
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v48, v48, v57, v61
	v_mul_f32_e32 v64, v47, v55
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v52, v53, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v53, null, v51, v51, v117
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v63, -v56, v64, v47
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v48, v48, v50, v119
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v64, v63, v55
	v_fma_f32 v47, -v56, v64, v47
	v_rcp_f32_e32 v56, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v55, v47, v55, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v49, null, v52, v52, v118
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v47.h, 0x7fff, v62.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v50, v55, v54, v120
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v47.l, 0x7fff, v59.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v55, v49
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v54, -v53, v56, 1.0
	v_div_scale_f32 v46, s0, v117, v51, v117
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v56, v54, v56
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v59, -v49, v55, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v116
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v61, v46, v56
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v55, v59, v55
	v_div_scale_f32 v45, s1, v118, v52, v118
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v58, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v63, -v53, v61, v46
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v50, v185, v50
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v64, v45, v55
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v61, v63, v56
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.l, v50.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v63, -v49, v64, v45
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v115
	v_ldexp_f32 v54, v58, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v46, -v53, v61, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v64, v63, v55 :: v_dual_and_b32 v57, 1, v57
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v53, 1.0, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v46, v46, v56, v61
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v45, -v49, v64, v45
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v50, v57, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v49, null, v53, v53, v116
	v_div_fixup_f32 v46, v46, v51, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v54, v45, v55, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v55, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v56.h, v2.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v46, v181, v46
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v51, v54, v52, v118
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.l, 0x7fff, v57.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v43, s0, v116, v53, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v50, v180, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v51, -v49, v55, 1.0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v48, v184, v48
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v55, v51, v55
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v48.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v48, v48
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v60, 1, v2
	v_mov_b16_e32 v2.l, v46.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v42, v57
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v113
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v60, v48, v60, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v48, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v61, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.h, 0x7fff, v60.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v60, v43, v55
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v51, v42, v51
	v_ldexp_f32 v48, v48, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v62, -v49, v60, v43
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v48, 1.0, v48 :: v_dual_and_b32 v59, 1, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v60, v62, v55
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v59, v46, v59, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v52, null, v48, v48, v115
	v_fma_f32 v43, -v49, v60, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.h, 0x7fff, v59.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v54, v52
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v39
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v43, v43, v55, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v43, v43, v53, v116
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v60, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v58, -v52, v54, 1.0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v43, v177, v43 :: v_dual_fmac_f32 v60, 0xbfb8aa3b, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v54, v58, v54
	v_div_scale_f32 v58, s1, v115, v48, v115
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v43.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v63, v58, v54
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v60, v60
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v46, -v52, v63, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v63, v46, v54 :: v_dual_add_f32 v46, 1.0, v51
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v51, v61, v57
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v57, 1, v2
	v_mov_b16_e32 v56.l, v50.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v49, -v52, v63, v58
	v_div_scale_f32 v52, null, v46, v46, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v51, 1.0, v51 :: v_dual_and_b32 v56, 1, v56
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v49, v49, v54, v63
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v53, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v43, v57, 0x7fff
	v_add3_u32 v56, v50, v56, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v48, v49, v48, v115
	v_div_scale_f32 v49, null, v51, v51, v113
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.l, 0x7fff, v56.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v54, v49
	v_fma_f32 v50, -v52, v53, 1.0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v48, v179, v48
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v40.h, v2.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v53, v50, v53
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v56, vcc_lo, v114, v46, v114
	v_fma_f32 v39, -v49, v54, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v110
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v40.l, v48.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v58, v56, v53
	v_fmac_f32_e32 v54, v39, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v39, v55
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v55, s0, v113, v51, v113
	v_fma_f32 v61, -v52, v58, v56
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v62, v55, v54
	v_fmac_f32_e32 v58, v61, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v48, v40, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v43, v39, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v50, -v49, v62, v55
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v39.h, 0x7fff, v57.h, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v52, -v52, v58, v56
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v43, 1.0, v43 :: v_dual_fmac_f32 v62, v50, v54
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v50, v60, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v52, v52, v53, v58
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v56, null, v43, v43, v110
	v_fma_f32 v49, -v49, v62, v55
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v46, v52, v46, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v53, v56
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v55.h, v2.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v49, v49, v54, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v52, null, v50, v50, v109
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v46, v178, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v48, v49, v51, v113
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v39.l, 0x7fff, v40.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v49, -v56, v53, 1.0
	v_rcp_f32_e32 v51, v52
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v40, v176, v48
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v37, s0, v110, v43, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v49, v53
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v36, s1, v109, v50, v109
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v107
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v54, -v52, v51, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v57, v37, v53
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v46.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v49, v49
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v51, v54, v51 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v56, v57, v37
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_mul_f32 v60, v36, v51 :: v_dual_and_b32 v61, 1, v2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v55.l, v40.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v57, v59, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v46, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v48, v49, v48
	v_exp_f32_e32 v49, v58
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v59, -v52, v60, v36
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v58, v46, v61, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v37, -v56, v57, v37
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v46, 1.0, v48 :: v_dual_and_b32 v55, 1, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v60, v59, v51
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v37, v37, v53, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v48, v49, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v36, -v52, v60, v36
	v_div_scale_f32 v49, null, v46, v46, v107
	s_mov_b32 vcc_lo, s1
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v55, v40, v55, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v51, v36, v51, v60
	v_rcp_f32_e32 v52, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v40, null, v48, v48, v108
	v_div_fixup_f32 v37, v37, v43, v110
	v_div_fixup_f32 v43, v51, v50, v109
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.l, 0x7fff, v55.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v51, v40
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v34, s0, v107, v46, v107
	v_fma_f32 v50, -v49, v52, 1.0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v43, v171, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v53.h, v2.h
	v_cndmask_b16 v36.h, 0x7fff, v58.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v52, v50, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v55, -v40, v51, 1.0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v33, s1, v108, v48, v108
	v_mul_f32_e32 v57, v34, v52
	v_dual_fmac_f32 v51, v55, v51 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v105
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v53.l, v43.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v59, -v49, v57, v34
	v_mul_f32_e32 v60, v33, v51
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v54, v54
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v53, 1, v53
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v57, v59, v52
	v_fma_f32 v59, -v40, v60, v33
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v53, v43, v53, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v37, v170, v37
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v49, v57, v34
	v_fmac_f32_e32 v60, v59, v51
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v50, v54, v50
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v106
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v37.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v34, v34, v52, v57
	v_fma_f32 v33, -v40, v60, v33
	s_mov_b32 vcc_lo, s1
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v49, 1.0, v50
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v37, v37
	v_mov_b16_e32 v52.h, v2.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v50, v33, v51, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v40, null, v49, v49, v105
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.l, 0x7fff, v53.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v51, v40
	v_div_scale_f32 v31, s0, v105, v49, v105
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v101
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v34, v34, v46, v107
	v_div_fixup_f32 v46, v50, v48, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v34, v163, v34
	v_mul_f32_e32 v43, v165, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v46, -v40, v51, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v52.l, v43.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v51, v46, v51
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_exp_f32_e32 v30, v53
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v52, 1, v52
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v56, 1, v2
	v_mov_b16_e32 v2.l, v34.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v56, v37, v56, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v37, v58
	v_ldexp_f32 v46, v30, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v52, v43, v52, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v57, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.h, 0x7fff, v56.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v56, v31, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v37, v37, v55
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v55, 1, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v58, -v40, v56, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v55, v34, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v56, v58, v51
	v_div_scale_f32 v48, null, v37, v37, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v40, v56, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.h, 0x7fff, v55.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v50, v48
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v31, v31, v51, v56
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v56, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v31, v31, v49, v105
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v54, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v56, 0xbfb8aa3b, v98 :: v_dual_mul_f32 v31, v158, v31
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v50, v54, v50
	v_div_scale_f32 v54, s1, v106, v37, v106
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v31.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v56, v56
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v59, v54, v50
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v31, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v48, v59, v54
	v_fmac_f32_e32 v59, v34, v50
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v46, v57, v53
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v53, 1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v40, -v48, v59, v54
	v_div_scale_f32 v48, null, v34, v34, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v53, v31, v53, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v40, v40, v50, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v49, v48
	v_div_fixup_f32 v37, v40, v37, v106
	v_div_scale_f32 v40, null, v46, v46, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.l, 0x7fff, v52.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v37, v157, v37
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v50, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v48, v49, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.h, v2.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.l, v37.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v49, v43, v49
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v99 :: v_dual_and_b32 v28, 1, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v27, -v40, v50, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v37, v28, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v50, v27, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v27, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v51, s0, v100, v46, v100
	v_mul_f32_e32 v58, v51, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v31, v27, v43
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v43, -v40, v58, v51
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.h, 0x7fff, v53.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_fmac_f32 v58, v43, v50
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v43, v56, v55
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v40, -v40, v58, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v52, vcc_lo, v101, v34, v101
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.h, v2.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v54, v52, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v48, v54, v52
	v_fmac_f32_e32 v54, v57, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v48, v54, v52
	v_div_scale_f32 v52, null, v31, v31, v99
	v_div_fmas_f32 v48, v48, v49, v54
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v49, v52
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v40, v40, v50, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v34, v48, v34, v101
	v_div_scale_f32 v48, null, v43, v43, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v37, v40, v46, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.l, 0x7fff, v28.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v40, -v52, v49, 1.0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v46, v48
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v28, v155, v37
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v25, s0, v99, v31, v99
	v_fmac_f32_e32 v49, v40, v49
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v34, v156, v34 :: v_dual_mul_f32 v53, v25, v49
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v50, -v48, v46, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v24, s1, v98, v43, v98
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v46, v50, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v96
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v34.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v55, -v52, v53, v25
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v56, v24, v46
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.l, v28.h
	v_and_b32_e32 v57, 1, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v53, v55, v49
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v37, v40, v37
	v_exp_f32_e32 v40, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v55, -v48, v56, v24
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v54, v34, v57, 0x7fff
	v_cmp_o_f32_e64 s2, v34, v34
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v37
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v25, -v52, v53, v25
	v_dual_fmac_f32 v56, v55, v46 :: v_dual_and_b32 v51, 1, v51
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v37, v40, v50
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v24, -v48, v56, v24
	v_div_scale_f32 v40, null, v34, v34, v97
	v_div_fmas_f32 v25, v25, v49, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v28, v51, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v46, v24, v46, v56
	v_rcp_f32_e32 v48, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v37, v37, v96
	v_div_fixup_f32 v25, v25, v31, v99
	v_div_fixup_f32 v31, v46, v43, v98
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.l, 0x7fff, v51.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v46, v28
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v153, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v43, -v40, v48, 1.0
	v_div_scale_f32 v22, s0, v97, v34, v97
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.h, 0x7fff, v54.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v48, v43, v48
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v51, -v28, v46, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v25.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v53, v22, v48
	v_div_scale_f32 v21, s1, v96, v37, v96
	v_fmac_f32_e32 v46, v51, v46
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v95
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v52, 1, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v55, -v40, v53, v22
	v_mul_f32_e32 v56, v21, v46
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v94
	v_exp_f32_e32 v50, v50
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v52, v25, v52, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v53, v55, v48
	v_fma_f32 v55, -v28, v56, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v25, v25
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v25, v54
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v22, -v40, v53, v22
	v_fmac_f32_e32 v56, v55, v46
	s_mov_b32 vcc_lo, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v43, v50, v43
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v31, v154, v31
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v48, v53
	v_fma_f32 v21, -v28, v56, v21
	s_mov_b32 vcc_lo, s1
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v25, v25, v51
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v40, 1.0, v43
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.l, v31.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v43, v21, v46, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.h, v2.h
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v40, v40, v95
	v_div_fixup_f32 v22, v22, v34, v97
	v_div_fixup_f32 v34, v43, v37, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v37, null, v25, v25, v94
	v_rcp_f32_e32 v46, v28
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v49, 1, v49
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v43, v37
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v22, v152, v22
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.h, 0x7fff, v52.h, s2
	v_add3_u32 v49, v31, v49, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v31, v151, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v48.h, v2.h
	v_mov_b16_e32 v2.l, v22.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v28, v46, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.l, 0x7fff, v49.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v50, -v37, v43, 1.0
	v_div_scale_f32 v19, s0, v95, v40, v95
	v_fmac_f32_e32 v46, v34, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v43, v50, v43
	v_div_scale_f32 v50, s1, v94, v25, v94
	v_mul_f32_e32 v52, v19, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v51, 1, v2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v92
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v55, v50, v43
	v_fma_f32 v54, -v28, v52, v19
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v22, v51, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v18, v49
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v22, -v37, v55, v50
	v_fmac_f32_e32 v52, v54, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v48.l, v31.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v55, v22, v43
	v_fma_f32 v19, -v28, v52, v19
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v34, v18, v34
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.h, 0x7fff, v51.h, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v28, -v37, v55, v50
	v_div_fmas_f32 v19, v19, v46, v52
	s_mov_b32 vcc_lo, s1
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v48, 1, v48
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v28, v43, v55
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v53, v53
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v51, 0, 0x42800000, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v48, v31, v48, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v25, v28, v25, v94
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v34
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v91
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.l, 0x7fff, v48.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v149, v25
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v2.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v34, v53, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v25.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v37, null, v22, v22, v92
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v16
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v34, v34, v93
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v25, v16, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v25, v51, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v90
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v43, v28
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.h, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v19, v19, v40, v95
	v_rcp_f32_e32 v40, v37
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v150, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v15, -v28, v43, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v19.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v31, -v37, v40, 1.0
	v_fmac_f32_e32 v43, v15, v43
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v15, v46
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v46, s0, v93, v34, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v31, v40
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v48, vcc_lo, v92, v22, v92
	v_mul_f32_e32 v54, v46, v43
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v52, 1, v2
	v_cmp_o_f32_e64 s1, v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v49, v48, v40
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v15, v15, v31
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v31, -v28, v54, v46
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v52, v19, v52, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v53, -v37, v49, v48
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v54, v31, v43 :: v_dual_fmac_f32 v49, v53, v40
	v_div_scale_f32 v31, null, v15, v15, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v28, v54, v46
	v_fma_f32 v19, -v37, v49, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v37, v31
	v_div_fmas_f32 v19, v19, v40, v49
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v40, null, v25, v25, v91
	v_div_fmas_f32 v28, v28, v43, v54
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.l, 0x7fff, v16.h, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v19, v22, v92
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v16, v28, v34, v93
	v_rcp_f32_e32 v34, v40
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v28, -v31, v37, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v49, 0, 0x42800000, s0
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v88 :: v_dual_fmac_f32 v37, v28, v37
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, vcc_lo, v90, v15, v90
	v_fma_f32 v12, -v40, v34, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v89
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.h, 0x7fff, v52.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v46, v28, v37
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v13, v147, v13 :: v_dual_fmac_f32 v34, v12, v34
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v12, v22
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, s0, v91, v25, v91
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v49, v49
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v51, -v31, v46, v28
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v148, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v52, v22, v34
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v13.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v46, v51, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v12, v12, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v19, -v40, v52, v22
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.l, v16.h
	v_and_b32_e32 v51, 1, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v28, -v31, v46, v28
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v52, v19, v34
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v19, v49, v48
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v50, 1, v50
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v28, v37, v46
	v_div_scale_f32 v31, null, v12, v12, v88
	v_fma_f32 v22, -v40, v52, v22
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v37, v31
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v13, v51, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v34, v52
	v_div_scale_f32 v34, null, v19, v19, v89
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v22, v22, v25, v91
	v_rcp_f32_e32 v25, v34
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v13, v16, v50, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v46, -v31, v37, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v146, v22
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v10, s1, v88, v12, v88
	v_fmac_f32_e32 v37, v46, v37
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v22, -v34, v25, 1.0
	v_div_fixup_f32 v15, v28, v15, v90
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v48, v10, v37
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v46, 0xbfb8aa3b, v87 :: v_dual_fmac_f32 v25, v22, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, s0, v89, v19, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v31, v48, v10
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v46, v46
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.l, 0x7fff, v13.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v51, v22, v25
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v48, v50, v37 :: v_dual_mul_f32 v15, v145, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.l, v16.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v13, -v34, v51, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v9, -v31, v48, v10
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v10, v46, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v51, v13, v25
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v15.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v86
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v22, -v34, v51, v22
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v50, 1, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v9, v9, v37, v48
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v49, 1, v49
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v22, v22, v25, v51
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v25, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v10, v10, v87
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v31, v15, v50, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v9, v9, v12, v88
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v15, v28
	v_div_fixup_f32 v12, v22, v19, v89
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v19, v16, v49, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v144, v9
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v13, v25, v13
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.h, 0x7fff, v31.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v12, v143, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_mov_b16_e32 v2.l, v9.h
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v25, -v28, v15, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v12.h
	v_mov_b16_e32 v16.h, v2.h
	v_and_b32_e32 v34, 1, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, null, v13, v13, v86
	v_fmac_f32_e32 v15, v25, v15
	v_div_scale_f32 v25, s0, v87, v10, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v34, v9, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v9, v9
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v9, v25, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v19.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v16
	v_cndmask_b16 v8.h, 0x7fff, v34.h, s1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v19, -v28, v9, v25
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v6
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v12, v16, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v31, v37, 1.0
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v9, v19, v15 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v6, s2, v86, v13, v86
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.l, 0x7fff, v16.h, vcc_lo
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v16, v48
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v25, -v28, v9, v25
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v28, v6, v37 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v84
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v9, v25, v15, v9
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v15, -v31, v28, v6
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v5, v19
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v16, v16, v46
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v28, v15, v37
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v15, 1.0, v16
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v82
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v6, -v31, v28, v6
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v5, v5, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v12, null, v15, v15, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v4, v4
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v83
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v5, 1.0, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v31, v12
	s_mov_b32 vcc_lo, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s0
	v_exp_f32_e32 v25, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v6, v6, v37, v28
	v_div_scale_f32 v28, null, v5, v5, v84
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v4, v4, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v9, v9, v10, v87
	v_div_fixup_f32 v6, v6, v13, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v10, -v12, v31, 1.0
	v_rcp_f32_e32 v13, v28
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v16, v25, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, vcc_lo, v85, v15, v85
	v_fmac_f32_e32 v31, v10, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v10, null, v4, v4, v82
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v48, s0, v84, v5, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v34, v10
	v_fma_f32 v25, -v28, v13, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v37, null, v16, v16, v83
	v_dual_mul_f32 v46, v19, v31 :: v_dual_mul_f32 v9, v142, v9
	v_fmac_f32_e32 v13, v25, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v25, v37
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v141, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v51, -v12, v46, v19
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v10, v34, 1.0
	v_mul_f32_e32 v52, v48, v13
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v9.h
	v_mov_b16_e32 v50.l, v6.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v46, v51, v31
	v_fmac_f32_e32 v34, v49, v34
	v_div_scale_f32 v49, s1, v82, v4, v82
	v_fma_f32 v53, -v37, v25, 1.0
	v_fma_f32 v51, -v28, v52, v48
	v_fma_f32 v12, -v12, v46, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v49, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.h, v2.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v25, v53, v25
	v_div_scale_f32 v53, s2, v83, v16, v83
	v_fma_f32 v19, -v10, v55, v49
	v_fmac_f32_e32 v52, v51, v13
	v_div_fmas_f32 v12, v12, v31, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v51, v53, v25
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v55, v19, v34
	v_fma_f32 v28, -v28, v52, v48
	v_div_fixup_f32 v12, v12, v15, v85
	v_fma_f32 v31, -v37, v51, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v54, 1, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v10, -v10, v55, v49
	v_div_fmas_f32 v13, v28, v13, v52
	s_mov_b32 vcc_lo, s1
	v_dual_fmac_f32 v51, v31, v25 :: v_dual_and_b32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v10, v10, v34, v55
	v_div_fixup_f32 v5, v13, v5, v84
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v12, v140, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v13, -v37, v51, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v4, v10, v4, v82
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v19, v6, v50, 0x7fff
	v_add3_u32 v15, v9, v54, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v13, v13, v25, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b16_e32 v2.l, v12.h
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v4, v136, v4 :: v_dual_mul_f32 v5, v139, v5
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v9, v13, v16, v83
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v15.h, 0x7fff, v15.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v15.l, 0x7fff, v19.h, s0
	v_and_b32_e32 v6, 1, v2
	v_mov_b16_e32 v2.l, v4.h
	v_mov_b16_e32 v10.l, v5.h
	v_mov_b16_e32 v10.h, v2.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v138, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.h, v2.h
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v6, v12, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_mov_b16_e32 v13.l, v9.h
	v_cmp_o_f32_e64 s1, v4, v4
	v_add3_u32 v2, v4, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v5, v5
	v_cndmask_b16 v4.h, 0x7fff, v6.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v81
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v13, 1, v13
	v_cmp_o_f32_e64 s2, v9, v9
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	v_cndmask_b32_e32 v12, v20, v26, vcc_lo
	v_add3_u32 v10, v5, v10, 0x7fff
	v_add3_u32 v5, v9, v13, 0x7fff
	v_cndmask_b32_e32 v28, v42, v36, vcc_lo
	v_dual_cndmask_b32 v6, v14, v7 :: v_dual_cndmask_b32 v7, v7, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v4.l, 0x7fff, v10.h, s0
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s2
	v_cndmask_b32_e32 v5, v11, v3, vcc_lo
	v_cndmask_b32_e32 v3, v3, v11, vcc_lo
	v_dual_cndmask_b32 v11, v26, v20 :: v_dual_cndmask_b32 v26, v36, v42
	v_cndmask_b32_e32 v34, v4, v8, vcc_lo
	v_cndmask_b32_e32 v4, v8, v4, vcc_lo
	v_mov_b32_e32 v8, 0x5410
	v_dual_mov_b32 v36, 0x7632 :: v_dual_cndmask_b32 v13, v35, v29
	v_cndmask_b32_e32 v14, v29, v35, vcc_lo
	v_dual_cndmask_b32 v35, v2, v15 :: v_dual_cndmask_b32 v2, v15, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v8, 0x1054, v8, vcc_lo
	v_dual_cndmask_b32 v15, 0x3276, v36 :: v_dual_cndmask_b32 v10, v17, v23
	v_cndmask_b32_e32 v20, v41, v47, vcc_lo
	v_cndmask_b32_e32 v29, v33, v39, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v8, v8, 8, v8
	v_lshl_or_b32 v15, v15, 8, v15
	v_cndmask_b32_e32 v31, v39, v33, vcc_lo
	v_dual_cndmask_b32 v33, v22, v43 :: v_dual_cndmask_b32 v22, v43, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 0x540054, v8
	v_and_b32_e32 v15, 0x760076, v15
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v9, v23, v17, vcc_lo
	v_cndmask_b32_e32 v17, v32, v38, vcc_lo
	v_lshl_or_b32 v8, v8, 4, v8
	v_lshl_or_b32 v15, v15, 4, v15
	v_dual_cndmask_b32 v16, v38, v32 :: v_dual_cndmask_b32 v19, v47, v41
	v_cndmask_b32_e32 v32, v24, v30, vcc_lo
	v_cndmask_b32_e32 v24, v30, v24, vcc_lo
	v_dual_cndmask_b32 v30, v21, v27 :: v_dual_cndmask_b32 v21, v27, v21
	v_dual_cndmask_b32 v27, v40, v18 :: v_dual_cndmask_b32 v18, v18, v40
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v38, 0x5040504, v8
	v_and_b32_e32 v39, 0x7060706, v15
	v_permlanex16_b32 v40, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v25, v44, v45, vcc_lo
	v_permlanex16_b32 v36, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v3, v5, v38
	v_perm_b32 v3, v3, v5, v39
	v_perm_b32 v4, v7, v6, v38
	v_perm_b32 v5, v7, v6, v39
	v_perm_b32 v6, v10, v9, v38
	v_perm_b32 v7, v10, v9, v39
	v_perm_b32 v8, v12, v11, v38
	v_perm_b32 v9, v12, v11, v39
	v_perm_b32 v10, v14, v13, v38
	v_perm_b32 v11, v14, v13, v39
	v_perm_b32 v14, v20, v19, v38
	v_perm_b32 v15, v20, v19, v39
	v_perm_b32 v18, v28, v26, v38
	v_perm_b32 v19, v28, v26, v39
	v_perm_b32 v20, v31, v29, v38
	v_perm_b32 v21, v31, v29, v39
	v_perm_b32 v28, v40, v33, v38
	v_perm_b32 v29, v40, v33, v39
	v_and_b32_e32 v33, 0x1e0, v0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v0, v1, v80, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v23, v45, v44, vcc_lo
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v33
	v_add_nc_u32_e32 v1, 32, v0
	v_add_nc_u32_e32 v33, 64, v0
	v_perm_b32 v12, v17, v16, v38
	v_perm_b32 v13, v17, v16, v39
	v_perm_b32 v16, v25, v23, v38
	v_perm_b32 v17, v25, v23, v39
	v_perm_b32 v22, v24, v32, v38
	v_perm_b32 v23, v24, v32, v39
	v_perm_b32 v24, v36, v30, v38
	v_perm_b32 v25, v36, v30, v39
	v_perm_b32 v30, v41, v34, v38
	v_perm_b32 v31, v41, v34, v39
	v_dual_cndmask_b32 v34, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v36, 0x80000000, v33, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[2:5], v34, s[20:23], 0 offen
	buffer_store_b128 v[6:9], v1, s[20:23], 0 offen
	buffer_store_b128 v[10:13], v36, s[20:23], 0 offen
	v_add_nc_u32_e32 v1, 0x60, v0
	v_add_nc_u32_e32 v2, 0x80, v0
	v_add_nc_u32_e32 v3, 0xa0, v0
	v_add_nc_u32_e32 v4, 0xc0, v0
	v_add_nc_u32_e32 v0, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_perm_b32 v26, v37, v27, v38
	v_perm_b32 v27, v37, v27, v39
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_perm_b32 v32, v42, v35, v38
	v_perm_b32 v33, v42, v35, v39
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[14:17], v1, s[20:23], 0 offen
	buffer_store_b128 v[18:21], v2, s[20:23], 0 offen
	buffer_store_b128 v[22:25], v3, s[20:23], 0 offen
	buffer_store_b128 v[26:29], v4, s[20:23], 0 offen
	buffer_store_b128 v[30:33], v0, s[20:23], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp18:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 652
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 652
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 66188
; TotalNumSgprs: 41
; NumVgprs: 256
; ScratchSize: 652
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 652
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_swiglu_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 165
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
