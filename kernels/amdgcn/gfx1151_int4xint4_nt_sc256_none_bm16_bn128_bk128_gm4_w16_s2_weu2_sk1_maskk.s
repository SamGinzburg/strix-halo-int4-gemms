	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
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
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v55, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s4
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v56, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v198, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v170, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v172, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v178, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v180, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v182, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v186, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v184, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v188, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v190, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v196, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v194, 0
	s_sub_i32 s6, s6, s10
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v192, 0
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
	v_dual_mov_b32 v197, 0 :: v_dual_and_b32 v18, 15, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s9
	s_xor_b32 s6, s2, s9
	s_cvt_f32_u32 s10, s7
	s_sub_i32 s11, 0, s7
	s_ashr_i32 s6, s6, 31
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v37, 16, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_rcp_iflag_f32_e32 v1, s10
	v_mov_b32_e32 v193, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v1
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
	v_dual_mov_b32 v193, 0 :: v_dual_lshlrev_b32 v2, 3, v0
	v_dual_mov_b32 v192, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v5, 5, v0
	v_lshrrev_b32_e32 v6, 1, v0
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_dual_mov_b32 v194, 0 :: v_dual_lshlrev_b32 v7, 2, v0
	v_dual_mov_b32 v197, 0 :: v_dual_and_b32 v0, 56, v2
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s3, s3, 6
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s0, s5, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v13, s3, v0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s1, s2, 31
	v_dual_mov_b32 v196, 0 :: v_dual_and_b32 v1, 62, v3
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s5, s5, s0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s1, 24
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v16, 64, v13
	s_add_i32 s2, s2, s0
	v_cmp_gt_i32_e64 s0, 0x80, v13
.Ltmp17:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshrrev_b32_e32 v13, 3, v37
	v_or_b32_e32 v14, s3, v1
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s5, s5, 1
	v_dual_mov_b32 v195, 0 :: v_dual_and_b32 v8, 56, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v19, s5, v1
	v_lshl_or_b32 v4, s7, 7, v4
	v_dual_mov_b32 v184, 0 :: v_dual_and_b32 v13, 2, v13
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v17, 64, v14
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v14
	v_dual_mov_b32 v183, 0 :: v_dual_add_nc_u32 v14, s33, v18
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s2, 8
	v_dual_mov_b32 v191, 0 :: v_dual_and_b32 v6, 56, v6
.Ltmp19:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v19, off offset:68
	scratch_store_b32 off, v37, off offset:116
	scratch_store_b32 off, v13, off offset:76
	v_or_b32_e32 v13, 64, v4
	v_mul_lo_u32 v14, s34, v14
	s_lshl_b32 s8, s7, 8
	s_lshl_b32 s7, s6, 8
	s_lshl_b32 s6, s6, 7
	v_xor_b32_e32 v2, v2, v6
	v_dual_mov_b32 v182, 0 :: v_dual_add_nc_u32 v5, s33, v5
	v_subrev_nc_u32_e32 v13, s6, v13
	v_subrev_nc_u32_e32 v4, s6, v4
	v_sub_nc_u32_e32 v19, s5, v0
	v_cmp_gt_i32_e64 s1, 0x80, v17
	v_cmp_gt_i32_e64 s2, 0x80, v16
	v_dual_mov_b32 v186, 0 :: v_dual_lshlrev_b32 v201, 1, v14
	v_mad_u64_u32 v[16:17], null, s5, v5, v[1:2]
	v_mad_u64_u32 v[13:14], null, s5, v13, v[0:1]
	v_mad_u64_u32 v[0:1], null, s5, v4, v[0:1]
	v_dual_mov_b32 v190, 0 :: v_dual_and_b32 v7, 56, v7
	v_xor_b32_e32 v3, v3, v8
	s_clause 0x3                            ; 28-byte Folded Spill
	scratch_store_b32 off, v19, off offset:72
	scratch_store_b64 off, v[16:17], off offset:80
	scratch_store_b64 off, v[13:14], off offset:88
	scratch_store_b64 off, v[0:1], off offset:96
	v_lshl_or_b32 v7, v18, 6, v7
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v0, 0, v3
	scratch_store_b32 off, v18, off offset:120 ; 4-byte Folded Spill
	s_sub_i32 s35, s8, s7
	v_xor_b32_e32 v6, 8, v7
	v_xor_b32_e32 v8, 16, v7
	v_xor_b32_e32 v9, 24, v7
	v_xor_b32_e32 v10, 32, v7
	v_xor_b32_e32 v11, 40, v7
	v_xor_b32_e32 v12, 48, v7
	v_xor_b32_e32 v15, 56, v7
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_dual_mov_b32 v181, 0 :: v_dual_add_nc_u32 v0, 0, v2
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v204, 0, v7
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v205, 0, v6
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v206, 0, v8
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v207, 0, v9
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v208, 0, v10
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v209, 0, v11
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v210, 0, v12
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v211, 0, v15
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
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
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_clause 0x4                            ; 32-byte Folded Reload
	scratch_load_b64 v[9:10], off, off offset:96
	scratch_load_b32 v18, off, off offset:72
	scratch_load_b64 v[10:11], off, off offset:80
	scratch_load_b32 v17, off, off offset:68
	scratch_load_b64 v[11:12], off, off offset:88
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s4, s37, 64
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v59, off offset:64
	scratch_store_b32 off, v36, off offset:60
	scratch_store_b32 off, v56, off offset:56
	scratch_store_b32 off, v55, off offset:52
	scratch_store_b32 off, v52, off offset:48
	scratch_store_b32 off, v51, off offset:44
	scratch_store_b32 off, v48, off offset:40
	scratch_store_b32 off, v47, off offset:36
	scratch_store_b32 off, v46, off offset:32
	scratch_store_b32 off, v33, off offset:28
	scratch_store_b32 off, v45, off offset:24
	scratch_store_b32 off, v34, off offset:20
	scratch_store_b32 off, v44, off offset:16
	scratch_store_b32 off, v43, off offset:12
	scratch_store_b32 off, v35, off offset:8
	scratch_store_b32 off, v42, off offset:4
	scratch_store_b32 off, v41, off
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s34, s34, -1
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v13, s37, v9
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(3)
	v_cmp_lt_i32_e64 s3, s4, v18
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v14, s37, v10
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(1)
	v_cmp_lt_i32_e64 s4, s4, v17
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
	v_cmp_lt_i32_e64 s4, s37, v18
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s37, v17
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
	scratch_load_b32 v130, off, off offset:108
	scratch_load_b32 v129, off, off offset:104
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s37, 0x80
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b64 v130, v[9:10], v[11:12] offset1:8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v14, s3
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s4, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v129, v16 offset:8192
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
	ds_load_b64 v[108:109], v204 offset:8192
	ds_load_b64 v[110:111], v205 offset:8192
	ds_load_b64 v[112:113], v206 offset:8192
	ds_load_b64 v[114:115], v207 offset:8192
	ds_load_b64 v[116:117], v208 offset:8192
	ds_load_b64 v[118:119], v209 offset:8192
	ds_load_b64 v[120:121], v210 offset:8192
	ds_load_b64 v[122:123], v211 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[220:223], v204 offset1:2
	ds_load_2addr_stride64_b64 v[73:76], v204 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[41:44], v204 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[9:12], v204 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[224:227], v205 offset1:2
	ds_load_2addr_stride64_b64 v[77:80], v205 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[45:48], v205 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[13:16], v205 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[228:231], v206 offset1:2
	ds_load_2addr_stride64_b64 v[81:84], v206 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[49:52], v206 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[17:20], v206 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[232:235], v207 offset1:2
	ds_load_2addr_stride64_b64 v[85:88], v207 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[53:56], v207 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[21:24], v207 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[236:239], v208 offset1:2
	ds_load_2addr_stride64_b64 v[89:92], v208 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[57:60], v208 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[25:28], v208 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[240:243], v209 offset1:2
	ds_load_2addr_stride64_b64 v[93:96], v209 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[61:64], v209 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[29:32], v209 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[244:247], v210 offset1:2
	ds_load_2addr_stride64_b64 v[97:100], v210 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[65:68], v210 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[33:36], v210 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[248:251], v211 offset1:2
	ds_load_2addr_stride64_b64 v[101:104], v211 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[69:72], v211 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[37:40], v211 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(31)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[220:221], v[108:109], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v130, v[124:125], v[126:127] offset1:8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b16 v129, v128 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[224:225], v[110:111], v[212:219] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[124:125], v204 offset:8192
	ds_load_b64 v[126:127], v205 offset:8192
	ds_load_b64 v[128:129], v206 offset:8192
	ds_load_b64 v[130:131], v207 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[252:255], v204 offset1:2
	ds_load_2addr_stride64_b64 v[132:135], v205 offset1:2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[228:229], v[112:113], v[212:219] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[136:139], v206 offset1:2
	ds_load_2addr_stride64_b64 v[140:143], v207 offset1:2
	ds_load_2addr_stride64_b64 v[148:151], v209 offset1:2
	ds_load_2addr_stride64_b64 v[152:155], v210 offset1:2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[232:233], v[114:115], v[212:219] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[156:159], v211 offset1:2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[236:237], v[116:117], v[212:219] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[224:225], v208 offset:8192
	ds_load_b64 v[228:229], v209 offset:8192
	ds_load_b64 v[232:233], v210 offset:8192
	ds_load_b64 v[236:237], v211 offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[144:147], v208 offset1:2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[240:241], v[118:119], v[212:219] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[244:245], v[120:121], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[248:249], v[122:123], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[252:253], v[124:125], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[132:133], v[126:127], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[136:137], v[128:129], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[140:141], v[130:131], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[144:145], v[224:225], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[148:149], v[228:229], v[212:219] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[152:153], v[232:233], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[156:157], v[236:237], v[212:219] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v240, v212
	v_cvt_f32_i32_e32 v241, v213
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v244, v214
	v_cvt_f32_i32_e32 v245, v215
	v_cvt_f32_i32_e32 v248, v216
	v_cvt_f32_i32_e32 v249, v217
	v_cvt_f32_i32_e32 v252, v218
	v_cvt_f32_i32_e32 v253, v219
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[222:223], v[108:109], v[1:8] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[220:223], v211 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[226:227], v[110:111], v[212:219] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[230:231], v[112:113], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[234:235], v[114:115], v[212:219] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[238:239], v[116:117], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[242:243], v[118:119], v[212:219] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[246:247], v[120:121], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[250:251], v[122:123], v[212:219] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[254:255], v[124:125], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[134:135], v[126:127], v[212:219] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[132:135], v204 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[138:139], v[128:129], v[212:219] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[136:139], v205 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[142:143], v[130:131], v[212:219] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[140:143], v206 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[146:147], v[224:225], v[212:219] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[144:147], v207 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[150:151], v[228:229], v[212:219] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[148:151], v208 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[154:155], v[232:233], v[212:219] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[152:155], v209 offset0:4 offset1:6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[158:159], v[236:237], v[212:219] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[156:159], v210 offset0:4 offset1:6
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v226, v212
	v_cvt_f32_i32_e32 v227, v213
	v_cvt_f32_i32_e32 v230, v214
	v_cvt_f32_i32_e32 v231, v215
	v_cvt_f32_i32_e32 v234, v216
	v_cvt_f32_i32_e32 v235, v217
	v_cvt_f32_i32_e32 v238, v218
	v_cvt_f32_i32_e32 v239, v219
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[73:74], v[108:109], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[77:78], v[110:111], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[81:82], v[112:113], v[212:219] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[85:86], v[114:115], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[89:90], v[116:117], v[212:219] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[93:94], v[118:119], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[97:98], v[120:121], v[212:219] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[101:102], v[122:123], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[132:133], v[124:125], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[136:137], v[126:127], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[140:141], v[128:129], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[144:145], v[130:131], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[148:149], v[224:225], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[152:153], v[228:229], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[156:157], v[232:233], v[212:219] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[220:221], v[236:237], v[212:219] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v140, v212
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v141, v213
	v_cvt_f32_i32_e32 v144, v214
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v145, v215
	v_cvt_f32_i32_e32 v148, v216
	v_cvt_f32_i32_e32 v149, v217
	v_cvt_f32_i32_e32 v152, v218
	v_cvt_f32_i32_e32 v153, v219
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[75:76], v[108:109], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[79:80], v[110:111], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[41:42], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[83:84], v[112:113], v[212:219] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[45:46], v[110:111], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[81:84], v204 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[87:88], v[114:115], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[49:50], v[112:113], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[85:88], v205 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[91:92], v[116:117], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[53:54], v[114:115], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[89:92], v206 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[95:96], v[118:119], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[57:58], v[116:117], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[93:96], v207 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[99:100], v[120:121], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[61:62], v[118:119], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[97:100], v208 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[103:104], v[122:123], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[65:66], v[120:121], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[101:104], v209 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[134:135], v[124:125], v[212:219] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[69:70], v[122:123], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[132:135], v210 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[138:139], v[126:127], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[81:82], v[124:125], v[73:80] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[136:139], v211 offset0:8 offset1:10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[212:219], v[142:143], v[128:129], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[85:86], v[126:127], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[146:147], v[130:131], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[89:90], v[128:129], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[150:151], v[224:225], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[93:94], v[130:131], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[154:155], v[228:229], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[97:98], v[224:225], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[158:159], v[232:233], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[101:102], v[228:229], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[212:219], v[222:223], v[236:237], v[212:219] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[132:133], v[232:233], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v146, v214
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[136:137], v[236:237], v[73:80] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v150, v216
	v_cvt_f32_i32_e32 v154, v218
	v_cvt_f32_i32_e32 v142, v212
	v_cvt_f32_i32_e32 v143, v213
	v_cvt_f32_i32_e32 v81, v73
	v_cvt_f32_i32_e32 v82, v74
	v_cvt_f32_i32_e32 v85, v75
	v_cvt_f32_i32_e32 v86, v76
	v_cvt_f32_i32_e32 v89, v77
	v_cvt_f32_i32_e32 v90, v78
	v_cvt_f32_i32_e32 v93, v79
	v_cvt_f32_i32_e32 v94, v80
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[43:44], v[108:109], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v147, v215
	v_cvt_f32_i32_e32 v151, v217
	v_cvt_f32_i32_e32 v155, v219
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[47:48], v[110:111], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[51:52], v[112:113], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[13:14], v[110:111], v[41:48] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[49:52], v204 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[55:56], v[114:115], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[17:18], v[112:113], v[41:48] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[53:56], v205 offset0:12 offset1:14
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v17, v201, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v201, 2, v201
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[59:60], v[116:117], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[21:22], v[114:115], v[41:48] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[57:60], v206 offset0:12 offset1:14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	scratch_load_b32 v18, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[63:64], v[118:119], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[25:26], v[116:117], v[41:48] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[61:64], v207 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[67:68], v[120:121], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[29:30], v[118:119], v[41:48] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[65:68], v208 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[71:72], v[122:123], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[33:34], v[120:121], v[41:48] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[69:72], v209 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[83:84], v[124:125], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[37:38], v[122:123], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[87:88], v[126:127], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[124:125], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[91:92], v[128:129], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[53:54], v[126:127], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[95:96], v[130:131], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[57:58], v[128:129], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[99:100], v[224:225], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[61:62], v[130:131], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[103:104], v[228:229], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[224:225], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[134:135], v[232:233], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[69:70], v[228:229], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[138:139], v[236:237], v[73:80] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v83, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v84, v74
	v_cvt_f32_i32_e32 v87, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v88, v76
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[73:76], v210 offset0:12 offset1:14
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v91, v77
	v_cvt_f32_i32_e32 v92, v78
	v_cvt_f32_i32_e32 v95, v79
	v_cvt_f32_i32_e32 v96, v80
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_stride64_b64 v[77:80], v211 offset0:12 offset1:14
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[232:233], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[77:78], v[236:237], v[41:48] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v29, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v21, v42
	v_cvt_f32_i32_e32 v30, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v33, v45
	v_cvt_f32_i32_e32 v25, v46
	v_cvt_f32_i32_e32 v34, v47
	v_cvt_f32_i32_e32 v26, v48
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[41:48], v[11:12], v[108:109], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[15:16], v[110:111], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[19:20], v[112:113], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[23:24], v[114:115], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[27:28], v[116:117], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[31:32], v[118:119], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[35:36], v[120:121], v[41:48] neg_lo:[1,1,0]
	scratch_load_b32 v36, off, off offset:60 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[41:48], v[39:40], v[122:123], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[51:52], v[124:125], v[41:48] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:48
	scratch_load_b32 v51, off, off offset:44
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[126:127], v[41:48] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v56, off, off offset:56
	scratch_load_b32 v55, off, off offset:52
	v_wmma_i32_16x16x16_iu4 v[41:48], v[59:60], v[128:129], v[41:48] neg_lo:[1,1,0]
	scratch_load_b32 v59, off, off offset:64 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[41:48], v[63:64], v[130:131], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[224:225], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[71:72], v[228:229], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[75:76], v[232:233], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[79:80], v[236:237], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v11, v46
	scratch_load_b32 v46, off, off offset:32 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v16, v47
	scratch_load_b32 v47, off, off offset:36 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v12, v48
	scratch_load_b32 v48, off, off offset:40 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v10, v44
	v_cvt_f32_i32_e32 v13, v41
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off
	scratch_load_b32 v44, off, off offset:16
	v_cvt_f32_i32_e32 v9, v42
	scratch_load_b32 v42, off, off offset:4 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v15, v45
	scratch_load_b32 v45, off, off offset:24 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v14, v43
	scratch_load_b32 v43, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(14)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v35, v17, v240 :: v_dual_add_nc_u32 v18, s35, v18
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
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v193, v35, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v241
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v197, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v20, v17, v244 :: v_dual_lshlrev_b32 v19, 16, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v196, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v245
	v_mul_f32_e32 v35, v17, v226
	v_mul_f32_e32 v10, v17, v10
	v_mul_f32_e32 v29, v17, v29
	v_mul_f32_e32 v13, v17, v13
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v195, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v20, v17, v248 :: v_dual_lshlrev_b32 v19, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v9, v17, v9 :: v_dual_fmac_f32 v192, v20, v19
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v20, v17, v249 :: v_dual_lshlrev_b32 v19, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v194, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v20, v17, v252 :: v_dual_lshlrev_b32 v19, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v191, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v20, v17, v253 :: v_dual_lshlrev_b32 v19, 16, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v190, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:32
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:36
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:40
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:44
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:48
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:52
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:56
	buffer_load_u16 v32, v18, s[16:19], 0 offen offset:60
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v188, v35, v19 :: v_dual_lshlrev_b32 v19, 16, v20
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v227
	v_mul_f32_e32 v35, v17, v140
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v189, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v20, v17, v230 :: v_dual_lshlrev_b32 v19, 16, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v186, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v231
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v187, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v20, v17, v234 :: v_dual_lshlrev_b32 v19, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v183, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v20, v17, v235 :: v_dual_lshlrev_b32 v19, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v184, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v20, v17, v238 :: v_dual_lshlrev_b32 v19, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v182, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v239
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v181, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:64
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:68
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:72
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:76
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:80
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:84
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:88
	buffer_load_u16 v32, v18, s[16:19], 0 offen offset:92
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v179, v35, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v141
	v_dual_mul_f32 v35, v17, v142 :: v_dual_fmac_f32 v180, v20, v19
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v20, v17, v144 :: v_dual_lshlrev_b32 v19, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v177, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v20, v17, v145 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v178, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v20, v17, v148 :: v_dual_lshlrev_b32 v19, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v175, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v20, v17, v149 :: v_dual_lshlrev_b32 v19, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v176, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v20, v17, v152 :: v_dual_lshlrev_b32 v19, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v173, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v20, v17, v153 :: v_dual_lshlrev_b32 v19, 16, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v174, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:96
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:100
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:104
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:108
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:112
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:116
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:120
	buffer_load_u16 v32, v18, s[16:19], 0 offen offset:124
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v171, v35, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v143
	v_dual_mul_f32 v35, v17, v81 :: v_dual_fmac_f32 v172, v20, v19
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v20, v17, v146 :: v_dual_lshlrev_b32 v19, 16, v23
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v170, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v147
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v169, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v20, v17, v150 :: v_dual_lshlrev_b32 v19, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v167, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v20, v17, v151 :: v_dual_lshlrev_b32 v19, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v168, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v20, v17, v154 :: v_dual_lshlrev_b32 v19, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v165, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v20, v17, v155 :: v_dual_lshlrev_b32 v19, 16, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v166, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:128
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:132
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:136
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:140
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:144
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:148
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:152
	buffer_load_u16 v32, v18, s[16:19], 0 offen offset:156
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v164, v35, v19 :: v_dual_lshlrev_b32 v19, 16, v20
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v82
	v_mul_f32_e32 v35, v17, v83
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v163, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v20, v17, v85 :: v_dual_lshlrev_b32 v19, 16, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v160, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v86
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v162, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v20, v17, v89 :: v_dual_lshlrev_b32 v19, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v203, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v20, v17, v90 :: v_dual_lshlrev_b32 v19, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v161, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v20, v17, v93 :: v_dual_lshlrev_b32 v19, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v198, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v94
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v59, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:160
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:164
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:168
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:172
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:176
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:180
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:184
	buffer_load_u16 v32, v18, s[16:19], 0 offen offset:188
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v56, v35, v19 :: v_dual_lshlrev_b32 v19, 16, v20
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v84
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v107, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v19, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v55, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v88
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v106, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v19, 16, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v199, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v92
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v105, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v31
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v51, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v96
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v52, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:192
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:196
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:200
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:204
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:208
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:212
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:216
	buffer_load_u16 v32, v18, s[16:19], 0 offen offset:220
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v185, v29, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v21
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v200, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v20, v17, v30 :: v_dual_lshlrev_b32 v19, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v47, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v20, v17, v22 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v48, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v33
	scratch_load_b32 v33, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v20, v19
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v20, v17, v25 :: v_dual_lshlrev_b32 v19, 16, v28
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v46, v20, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v34
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:20
	scratch_load_b32 v35, off, off offset:8
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v19, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v34, v20, v19 :: v_dual_lshlrev_b32 v19, 16, v32
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v17, v26
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v45, v20, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:224
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:228
	buffer_load_u16 v21, v18, s[16:19], 0 offen offset:232
	buffer_load_u16 v22, v18, s[16:19], 0 offen offset:236
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:240
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:244
	buffer_load_u16 v25, v18, s[16:19], 0 offen offset:248
	buffer_load_u16 v18, v18, s[16:19], 0 offen offset:252
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v44, v13, v19 :: v_dual_lshlrev_b32 v13, 16, v20
	v_fmac_f32_e32 v43, v9, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v9, 16, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v13, v17, v14
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v36, v13, v9 :: v_dual_lshlrev_b32 v9, 16, v22
	v_dual_fmac_f32 v35, v10, v9 :: v_dual_mul_f32 v10, v17, v15
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v9, 16, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v42, v10, v9 :: v_dual_lshlrev_b32 v9, 16, v24
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v17, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v41, v10, v9
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v10, v17, v16 :: v_dual_lshlrev_b32 v9, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v202, v10, v9 :: v_dual_mul_f32 v9, v17, v12
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v18
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v0, v9, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v39, v0
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:112
	scratch_load_b32 v37, off, off offset:116
	scratch_load_b32 v18, off, off offset:120
.LBB0_4:                                ; %._crit_edge
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, 0
	v_mov_b16_e64 v3.l, v197.h
	v_mov_b16_e64 v2.l, v193.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v4, s23, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v197, v197
	v_mov_b16_e32 v2.h, v3.h
	v_and_b32_e32 v5, 1, v3
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	s_lshl_b32 s0, s22, 7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s23
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v3.l, v195.h
	v_and_b32_e32 v7, 1, v2
	v_add3_u32 v5, v197, v5, 0x7fff
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v2, s33, s0, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v6.l, v196.h
	v_mov_b16_e32 v6.h, v3.h
	v_add3_u32 v7, v193, v7, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v5.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v193, v193
	v_cmp_o_f32_e64 s0, v195, v195
	v_cmp_o_f32_e64 s1, v196, v196
	v_mov_b16_e64 v10.l, v188.h
	v_mov_b16_e32 v10.h, v3.h
	v_cndmask_b16 v4.l, 0x7fff, v7.h, vcc_lo
	v_and_b32_e32 v8, 1, v3
	v_mov_b16_e64 v3.l, v194.h
	v_cmp_o_f32_e32 vcc_lo, v194, v194
	v_mov_b16_e64 v11.l, v186.h
	v_mov_b16_e32 v11.h, v3.h
	v_add3_u32 v5, v195, v8, 0x7fff
	v_mov_b16_e64 v8.l, v192.h
	v_mov_b16_e32 v8.h, v3.h
	v_mov_b16_e64 v13.l, v182.h
	v_mov_b16_e32 v13.h, v3.h
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s0
	v_and_b32_e32 v6, 1, v6
	v_cmp_o_f32_e64 s0, v190, v190
	v_mov_b16_e64 v14.l, v179.h
	v_mov_b16_e32 v14.h, v3.h
	v_mov_b16_e64 v16.l, v175.h
	v_add3_u32 v6, v196, v6, 0x7fff
	v_mov_b16_e32 v16.h, v3.h
	v_mov_b16_e64 v17.l, v173.h
	v_mov_b16_e32 v17.h, v3.h
	v_mov_b16_e64 v19.l, v170.h
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s1
	v_and_b32_e32 v9, 1, v3
	v_and_b32_e32 v6, 1, v8
	v_mov_b16_e64 v3.l, v190.h
	v_mov_b16_e64 v8.l, v191.h
	v_cmp_o_f32_e64 s1, v188, v188
	v_add3_u32 v7, v194, v9, 0x7fff
	v_add3_u32 v9, v192, v6, 0x7fff
	v_mov_b16_e32 v19.h, v3.h
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e64 v20.l, v167.h
	v_cndmask_b16 v6.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	v_and_b32_e32 v7, 1, v3
	v_mov_b16_e64 v3.l, v189.h
	v_add3_u32 v8, v191, v8, 0x7fff
	v_mov_b16_e32 v20.h, v3.h
	v_cndmask_b16 v6.l, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v7, v190, v7, 0x7fff
	v_and_b32_e32 v9, 1, v10
	v_and_b32_e32 v10, 1, v3
	v_mov_b16_e64 v3.l, v187.h
	v_cmp_o_f32_e32 vcc_lo, v191, v191
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s0
	v_add3_u32 v9, v188, v9, 0x7fff
	v_add3_u32 v10, v189, v10, 0x7fff
	v_cmp_o_f32_e64 s0, v189, v189
	v_and_b32_e32 v12, 1, v3
	v_cndmask_b16 v7.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s1
	v_and_b32_e32 v9, 1, v11
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s0
	v_add3_u32 v10, v187, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v187, v187
	v_mov_b16_e64 v3.l, v184.h
	v_mov_b16_e64 v11.l, v183.h
	v_add3_u32 v12, v186, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v184, v184
	v_cndmask_b16 v9.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	v_and_b32_e32 v10, 1, v3
	v_mov_b16_e64 v3.l, v181.h
	v_and_b32_e32 v11, 1, v11
	v_cmp_o_f32_e64 s1, v182, v182
	v_cndmask_b16 v9.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v10, v184, v10, 0x7fff
	v_and_b32_e32 v12, 1, v13
	v_and_b32_e32 v13, 1, v3
	v_mov_b16_e64 v3.l, v180.h
	v_add3_u32 v11, v183, v11, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s0
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	v_add3_u32 v12, v182, v12, 0x7fff
	v_add3_u32 v13, v181, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v181, v181
	v_and_b32_e32 v15, 1, v3
	v_cndmask_b16 v10.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v14
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s0
	v_add3_u32 v13, v180, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v180, v180
	v_mov_b16_e64 v3.l, v178.h
	v_mov_b16_e64 v14.l, v177.h
	v_add3_u32 v12, v179, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v178, v178
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	v_and_b32_e32 v15, 1, v3
	v_mov_b16_e64 v3.l, v176.h
	v_and_b32_e32 v14, 1, v14
	v_cmp_o_f32_e64 s1, v175, v175
	v_cndmask_b16 v13.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v15, v178, v15, 0x7fff
	v_and_b32_e32 v12, 1, v16
	v_and_b32_e32 v16, 1, v3
	v_mov_b16_e64 v3.l, v174.h
	v_add3_u32 v14, v177, v14, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s0
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	v_add3_u32 v12, v175, v12, 0x7fff
	v_add3_u32 v16, v176, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v176, v176
	v_and_b32_e32 v18, 1, v3
	v_cndmask_b16 v15.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v17
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s0
	v_add3_u32 v16, v174, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	v_mov_b16_e64 v3.l, v172.h
	v_mov_b16_e64 v17.l, v171.h
	v_add3_u32 v12, v173, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v172, v172
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	v_and_b32_e32 v18, 1, v3
	v_mov_b16_e64 v3.l, v169.h
	v_and_b32_e32 v17, 1, v17
	v_cmp_o_f32_e64 s1, v170, v170
	v_cndmask_b16 v16.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v18, v172, v18, 0x7fff
	v_and_b32_e32 v12, 1, v19
	v_and_b32_e32 v19, 1, v3
	v_mov_b16_e64 v3.l, v168.h
	v_add3_u32 v17, v171, v17, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	v_cmp_o_f32_e32 vcc_lo, v171, v171
	v_add3_u32 v12, v170, v12, 0x7fff
	v_add3_u32 v19, v169, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v169, v169
	v_and_b32_e32 v21, 1, v3
	v_cndmask_b16 v18.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v20
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s0
	v_add3_u32 v19, v168, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	v_mov_b16_e64 v3.l, v166.h
	v_mov_b16_e64 v20.l, v165.h
	v_add3_u32 v12, v167, v12, 0x7fff
	v_mov_b16_e64 v22.l, v164.h
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	v_and_b32_e32 v21, 1, v3
	v_mov_b16_e32 v22.h, v3.h
	v_mov_b16_e64 v3.l, v163.h
	v_and_b32_e32 v20, 1, v20
	v_cmp_o_f32_e64 s0, v166, v166
	v_add3_u32 v21, v166, v21, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v22
	v_and_b32_e32 v22, 1, v3
	v_mov_b16_e64 v3.l, v162.h
	v_add3_u32 v20, v165, v20, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s0
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_add3_u32 v12, v164, v12, 0x7fff
	v_add3_u32 v22, v163, v22, 0x7fff
	v_cmp_o_f32_e64 s0, v163, v163
	v_cmp_o_f32_e64 s1, v164, v164
	v_mov_b16_e64 v23.l, v160.h
	v_mov_b16_e32 v23.h, v3.h
	v_and_b32_e32 v24, 1, v3
	v_cndmask_b16 v21.l, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s0
	v_cndmask_b16 v20.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v23
	v_add3_u32 v22, v162, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	v_mov_b16_e64 v3.l, v161.h
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v23.l, v203.h
	v_add3_u32 v12, v160, v12, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	v_and_b32_e32 v24, 1, v3
	v_mov_b16_e64 v25.l, v198.h
	v_mov_b16_e32 v25.h, v3.h
	v_mov_b16_e32 v3.l, v59.h
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v24, v161, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v161, v161
	v_cndmask_b16 v22.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v25
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v3
	v_mov_b16_e32 v3.l, v107.h
	v_add3_u32 v23, v203, v23, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s0
	v_cmp_o_f32_e32 vcc_lo, v203, v203
	v_add3_u32 v12, v198, v12, 0x7fff
	v_add3_u32 v25, v59, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v59, v59
	v_cmp_o_f32_e64 s1, v198, v198
	v_mov_b16_e32 v26.l, v56.h
	v_mov_b16_e32 v26.h, v3.h
	v_and_b32_e32 v27, 1, v3
	v_cndmask_b16 v24.l, 0x7fff, v23.h, vcc_lo
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s0
	v_cndmask_b16 v23.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v26
	v_add3_u32 v25, v107, v27, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	v_mov_b16_e32 v3.l, v106.h
	v_mov_b16_e32 v26.l, v55.h
	v_add3_u32 v12, v56, v12, 0x7fff
	v_mov_b16_e64 v27.l, v199.h
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_and_b32_e32 v28, 1, v3
	v_mov_b16_e32 v27.h, v3.h
	v_mov_b16_e32 v3.l, v105.h
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s0, v106, v106
	v_add3_u32 v28, v106, v28, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v27
	v_add_nc_u32_e32 v2, 64, v1
	v_and_b32_e32 v27, 1, v3
	v_mov_b16_e32 v3.l, v52.h
	v_add3_u32 v26, v55, v26, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v28.h, s0
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_add3_u32 v12, v199, v12, 0x7fff
	v_add3_u32 v27, v105, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v105, v105
	v_cmp_o_f32_e64 s1, v199, v199
	v_mov_b16_e32 v28.l, v51.h
	v_mov_b16_e32 v28.h, v3.h
	v_and_b32_e32 v29, 1, v3
	v_cndmask_b16 v38.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s0
	v_cndmask_b16 v26.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v28
	v_add3_u32 v27, v52, v29, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_mov_b16_e64 v3.l, v200.h
	v_mov_b16_e64 v28.l, v185.h
	v_add3_u32 v12, v51, v12, 0x7fff
	v_mov_b16_e32 v30.l, v47.h
	v_cndmask_b16 v27.h, 0x7fff, v27.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_and_b32_e32 v29, 1, v3
	v_mov_b16_e32 v30.h, v3.h
	v_mov_b16_e32 v3.l, v48.h
	v_and_b32_e32 v28, 1, v28
	v_cmp_o_f32_e64 s0, v200, v200
	v_add3_u32 v29, v200, v29, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v12, 1, v30
	v_and_b32_e32 v30, 1, v3
	v_mov_b16_e32 v3.l, v46.h
	v_add3_u32 v28, v185, v28, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s0
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	v_add3_u32 v12, v47, v12, 0x7fff
	v_add3_u32 v30, v48, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v48, v48
	v_cmp_o_f32_e64 s1, v47, v47
	v_mov_b16_e32 v31.l, v33.h
	v_mov_b16_e32 v31.h, v3.h
	v_and_b32_e32 v32, 1, v3
	v_cndmask_b16 v29.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s0
	v_cndmask_b16 v28.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v31
	v_add3_u32 v30, v46, v32, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_mov_b16_e32 v3.l, v45.h
	v_mov_b16_e32 v31.l, v34.h
	v_add3_u32 v12, v33, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v45, v45
	v_cndmask_b16 v30.h, 0x7fff, v30.h, vcc_lo
	v_and_b32_e32 v32, 1, v3
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v33.l, v44.h
	v_mov_b16_e32 v33.h, v3.h
	v_mov_b16_e32 v3.l, v43.h
	v_add3_u32 v32, v45, v32, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v31, v34, v31, 0x7fff
	v_and_b32_e32 v12, 1, v33
	v_and_b32_e32 v33, 1, v3
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_mov_b16_e32 v34.l, v36.h
	v_mov_b16_e32 v34.h, v3.h
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s0
	v_add3_u32 v12, v44, v12, 0x7fff
	v_add3_u32 v33, v43, v33, 0x7fff
	v_cmp_o_f32_e64 s0, v43, v43
	v_cmp_o_f32_e64 s1, v44, v44
	v_mov_b16_e32 v3.l, v35.h
	v_and_b32_e32 v34, 1, v34
	v_cndmask_b16 v32.l, 0x7fff, v31.h, vcc_lo
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s0
	v_cndmask_b16 v31.l, 0x7fff, v12.h, s1
	v_and_b32_e32 v12, 1, v3
	v_add3_u32 v33, v36, v34, 0x7fff
	v_mov_b16_e32 v3.l, v41.h
	v_mov_b16_e32 v34.l, v42.h
	v_mov_b16_e32 v34.h, v3.h
	v_add3_u32 v12, v35, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_cmp_o_f32_e64 s0, v36, v36
	v_and_b32_e32 v35, 1, v3
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e64 v36.l, v202.h
	v_mov_b16_e32 v36.h, v3.h
	v_mov_b16_e32 v3.l, v39.h
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v12.l, 0x7fff, v33.h, s0
	v_add3_u32 v33, v42, v34, 0x7fff
	v_and_b32_e32 v34, 1, v36
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v35, v41, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_cmp_o_f32_e64 s0, v42, v42
	v_add3_u32 v34, v202, v34, 0x7fff
	v_add3_u32 v3, v39, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v39, v39
	v_cmp_o_f32_e64 s2, v202, v202
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v37
	v_cndmask_b16 v35.l, 0x7fff, v33.h, s0
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s1
	v_cndmask_b16 v3.l, 0x7fff, v34.h, s2
	s_mov_b32 s0, 0x76543210
	v_dual_cndmask_b32 v33, v6, v4 :: v_dual_cndmask_b32 v4, v4, v6
	v_dual_cndmask_b32 v6, v7, v5 :: v_dual_cndmask_b32 v5, v5, v7
	v_dual_cndmask_b32 v34, v10, v8 :: v_dual_cndmask_b32 v7, v8, v10
	v_cndmask_b32_e32 v10, v11, v9, vcc_lo
	v_cndmask_b32_e32 v8, v9, v11, vcc_lo
	v_dual_cndmask_b32 v36, v14, v13 :: v_dual_cndmask_b32 v9, v13, v14
	v_dual_cndmask_b32 v14, v16, v15 :: v_dual_cndmask_b32 v11, v15, v16
	v_dual_cndmask_b32 v16, v19, v18 :: v_dual_cndmask_b32 v13, v18, v19
	v_cndmask_b32_e32 v18, v21, v17, vcc_lo
	v_cndmask_b32_e32 v15, v17, v21, vcc_lo
	v_cndmask_b32_e32 v21, v24, v20, vcc_lo
	v_dual_cndmask_b32 v17, v20, v24 :: v_dual_cndmask_b32 v24, v23, v22
	v_cndmask_b32_e32 v19, v22, v23, vcc_lo
	v_dual_cndmask_b32 v37, v26, v25 :: v_dual_cndmask_b32 v20, v25, v26
	v_cndmask_b32_e32 v26, v27, v38, vcc_lo
	v_cndmask_b32_e32 v44, v38, v27, vcc_lo
	v_cndmask_b32_e32 v38, v30, v29, vcc_lo
	v_cndmask_b32_e32 v22, v29, v30, vcc_lo
	v_cndmask_b32_e32 v30, v32, v28, vcc_lo
	v_cndmask_b32_e32 v23, v28, v32, vcc_lo
	v_mov_b32_e32 v27, 0x5410
	v_mov_b32_e32 v28, 0x7632
	v_cndmask_b32_e32 v32, v35, v31, vcc_lo
	v_cndmask_b32_e32 v25, v31, v35, vcc_lo
	v_cndmask_b32_e32 v35, v3, v12, vcc_lo
	v_cndmask_b32_e32 v3, v12, v3, vcc_lo
	v_cndmask_b32_e32 v12, 0x1054, v27, vcc_lo
	v_cndmask_b32_e32 v27, 0x3276, v28, vcc_lo
	v_permlanex16_b32 v28, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x1e0, v0
	v_lshl_or_b32 v5, v12, 8, v12
	v_lshl_or_b32 v7, v27, 8, v27
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v5, 0x540054, v5
	v_and_b32_e32 v7, 0x760076, v7
	v_permlanex16_b32 v31, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v0, 32, v1
	v_permlanex16_b32 v27, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 4, v5
	v_lshl_or_b32 v7, v7, 4, v7
	v_permlanex16_b32 v49, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_permlanex16_b32 v39, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v45, 0x5040504, v5
	v_and_b32_e32 v46, 0x7060706, v7
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	v_perm_b32 v3, v4, v33, v45
	v_perm_b32 v4, v4, v33, v46
	v_perm_b32 v5, v28, v6, v45
	v_perm_b32 v6, v28, v6, v46
	v_perm_b32 v11, v12, v36, v45
	v_perm_b32 v12, v12, v36, v46
	v_cndmask_b32_e32 v36, 0x80000000, v1, vcc_lo
	v_perm_b32 v7, v29, v34, v45
	v_perm_b32 v8, v29, v34, v46
	v_perm_b32 v9, v31, v10, v45
	v_perm_b32 v10, v31, v10, v46
	v_perm_b32 v13, v27, v14, v45
	v_perm_b32 v14, v27, v14, v46
	s_mov_b32 s22, 0x7ffffffe
	v_permlanex16_b32 v40, v15, s0, 0xfedcba98 op_sel:[1,0]
	s_clause 0x2
	buffer_store_b128 v[3:6], v36, s[20:23], 0 offen
	buffer_store_b128 v[7:10], v0, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v2, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v1
	v_permlanex16_b32 v41, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v2, 0x80, v1
	v_permlanex16_b32 v43, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v44, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v3, 0xa0, v1
	v_permlanex16_b32 v44, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v4, 0xc0, v1
	v_permlanex16_b32 v48, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v1, 0xe0, v1
	v_perm_b32 v15, v39, v16, v45
	v_perm_b32 v16, v39, v16, v46
	v_perm_b32 v17, v40, v18, v45
	v_perm_b32 v18, v40, v18, v46
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v19, v41, v21, v45
	v_perm_b32 v20, v41, v21, v46
	v_perm_b32 v21, v42, v24, v45
	v_perm_b32 v22, v42, v24, v46
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_perm_b32 v23, v43, v37, v45
	v_perm_b32 v24, v43, v37, v46
	v_perm_b32 v25, v50, v26, v45
	v_perm_b32 v26, v50, v26, v46
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_perm_b32 v27, v44, v38, v45
	v_perm_b32 v28, v44, v38, v46
	v_perm_b32 v29, v47, v30, v45
	v_perm_b32 v30, v47, v30, v46
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_perm_b32 v31, v48, v32, v45
	v_perm_b32 v32, v48, v32, v46
	v_perm_b32 v33, v49, v35, v45
	v_perm_b32 v34, v49, v35, v46
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[20:23], 0 offen
	buffer_store_b128 v[19:22], v2, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v3, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v4, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v1, s[20:23], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 128
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9848
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 128
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
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
