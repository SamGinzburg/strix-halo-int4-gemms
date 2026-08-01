	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b32 s5, s[0:1], 0x38
	v_dual_mov_b32 v51, v0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v55, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s22, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s4
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v183, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v59, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v175, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v173, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v177, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v185, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v181, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v187, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v189, 0
	s_sub_i32 s8, s6, s10
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v193, 0
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s9, s8
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s4, s8, s4
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s9, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s9
	v_dual_mov_b32 v194, 0 :: v_dual_and_b32 v37, 16, v51
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s10, 0, s7
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v195, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v18, 15, v51
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	v_readfirstlane_b32 s6, v1
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
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s22, s9
	s_sub_i32 s4, s2, s4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s5, 0xff
.Ltmp13:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s33, s4, 4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_lt_i32 s2, 0x100
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v191, 0 :: v_dual_lshlrev_b32 v2, 3, v51
	v_dual_mov_b32 v190, 0 :: v_dual_lshlrev_b32 v3, 1, v51
	.loc	1 197 39 is_stmt 1              ; generate_amdgcn.py:197:39
	s_lshl_b32 s3, s3, 6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v195, 0 :: v_dual_and_b32 v0, 56, v2
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s0, s5, 31
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s1, s2, 31
.Ltmp15:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v12, s3, v0
	v_dual_mov_b32 v194, 0 :: v_dual_and_b32 v1, 62, v3
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s5, s5, s0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s1, 24
.Ltmp17:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v4, 3, v51
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s2, s0
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v16, 64, v12
	v_cmp_gt_i32_e64 s0, 0x80, v12
.Ltmp19:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshrrev_b32_e32 v12, 3, v37
	v_or_b32_e32 v13, s3, v1
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s5, s5, 1
	v_lshrrev_b32_e32 v6, 1, v51
	v_dual_mov_b32 v193, 0 :: v_dual_and_b32 v8, 56, v4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v19, s5, v1
	v_lshl_or_b32 v4, s7, 7, v4
	v_dual_mov_b32 v181, 0 :: v_dual_and_b32 v12, 2, v12
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v17, 64, v13
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v13
	v_dual_mov_b32 v182, 0 :: v_dual_add_nc_u32 v13, s33, v18
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v5, 5, v51
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s34, s2, 8
	v_dual_mov_b32 v189, 0 :: v_dual_and_b32 v6, 56, v6
.Ltmp21:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v19, off offset:72
	scratch_store_b32 off, v51, off offset:116
	scratch_store_b32 off, v12, off offset:80
	v_or_b32_e32 v12, 64, v4
	v_mul_lo_u32 v13, s34, v13
	v_dual_mov_b32 v192, 0 :: v_dual_lshlrev_b32 v7, 2, v51
	s_lshl_b32 s8, s7, 8
	s_lshl_b32 s7, s6, 8
	s_lshl_b32 s6, s6, 7
	v_xor_b32_e32 v2, v2, v6
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v5, s33, v5
	v_subrev_nc_u32_e32 v12, s6, v12
	v_subrev_nc_u32_e32 v4, s6, v4
	v_dual_mov_b32 v188, 0 :: v_dual_and_b32 v7, 56, v7
	v_sub_nc_u32_e32 v19, s5, v0
	v_cmp_gt_i32_e64 s1, 0x80, v17
	v_cmp_gt_i32_e64 s2, 0x80, v16
	v_dual_mov_b32 v184, 0 :: v_dual_lshlrev_b32 v199, 1, v13
	v_mad_u64_u32 v[16:17], null, s5, v5, v[1:2]
	v_mad_u64_u32 v[12:13], null, s5, v12, v[0:1]
	v_mad_u64_u32 v[0:1], null, s5, v4, v[0:1]
	v_lshl_or_b32 v7, v18, 6, v7
	v_xor_b32_e32 v3, v3, v8
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b32 off, v19, off offset:76
	scratch_store_b64 off, v[16:17], off offset:84
	scratch_store_b64 off, v[12:13], off offset:92
	v_xor_b32_e32 v6, 8, v7
	v_xor_b32_e32 v8, 16, v7
	scratch_store_b64 off, v[0:1], off offset:100 ; 8-byte Folded Spill
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v0, 0, v3
	v_xor_b32_e32 v9, 24, v7
	v_xor_b32_e32 v10, 32, v7
	v_xor_b32_e32 v11, 40, v7
	v_xor_b32_e32 v14, 48, v7
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
	scratch_store_b32 off, v37, off offset:120
	scratch_store_b32 off, v0, off offset:108
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v0, 0, v2
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v202, 0, v7
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v203, 0, v6
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v204, 0, v8
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v1, s4
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v205, 0, v9
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v206, 0, v10
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v207, 0, v11
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v208, 0, v14
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v209, 0, v15
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_lshl_b32 s36, s23, 1
	s_add_i32 s37, s3, 64
	s_mov_b32 s24, s16
	s_mov_b32 s25, s17
	s_mov_b32 s28, s12
	s_mov_b32 s29, s13
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v18, off offset:124
	scratch_store_b32 off, v0, off offset:112
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_clause 0x3                            ; 24-byte Folded Reload
	scratch_load_b64 v[9:10], off, off offset:100
	scratch_load_b32 v17, off, off offset:76
	scratch_load_b64 v[10:11], off, off offset:84
	scratch_load_b32 v0, off, off offset:72
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_sub_i32 s4, s37, 64
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	scratch_load_b64 v[11:12], off, off offset:92 ; 8-byte Folded Reload
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v63, off offset:64
	scratch_store_b32 off, v36, off offset:60
	scratch_store_b32 off, v60, off offset:56
	scratch_store_b32 off, v59, off offset:52
	scratch_store_b32 off, v56, off offset:48
	scratch_store_b32 off, v55, off offset:44
	scratch_store_b32 off, v52, off offset:40
	scratch_store_b32 off, v48, off offset:36
	scratch_store_b32 off, v47, off offset:32
	scratch_store_b32 off, v46, off offset:28
	scratch_store_b32 off, v45, off offset:24
	scratch_store_b32 off, v44, off offset:20
	scratch_store_b32 off, v34, off offset:16
	scratch_store_b32 off, v43, off offset:12
	scratch_store_b32 off, v42, off offset:8
	scratch_store_b32 off, v35, off offset:4
	scratch_store_b32 off, v41, off
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s34, s34, -1
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v13, s37, v9
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_waitcnt vmcnt(3)
	v_cmp_lt_i32_e64 s3, s4, v17
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v14, s37, v10
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_waitcnt vmcnt(1)
	v_cmp_lt_i32_e64 s4, s4, v0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s37, v11
	.loc	1 218 34 is_stmt 0              ; generate_amdgcn.py:218:34
	v_subrev_nc_u32_e32 v9, 64, v13
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_subrev_nc_u32_e32 v10, 64, v14
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s4, s4, vcc_lo
	s_and_b32 s3, s3, s0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_subrev_nc_u32_e32 v11, 64, v15
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s4, s37, v17
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v16, v10, s[28:31], 0 offen
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v10, v199, s[24:27], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s37, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s37, 0x80
	v_add_nc_u32_e32 v199, 2, v199
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s1
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v10, off offset:68 ; 4-byte Folded Spill
	s_clause 0x1
	buffer_load_b64 v[9:10], v9, s[12:15], 0 offen
	buffer_load_b64 v[11:12], v11, s[12:15], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v130, off, off offset:112
	scratch_load_b32 v129, off, off offset:108
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b64 v130, v[9:10], v[11:12] offset1:8
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v9, 0x80000000, v14, s3
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s4, s2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v129, v16 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e64 v10, 0x80000000, v13, s3
	v_cndmask_b32_e64 v11, 0x80000000, v15, s3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v128, v9, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[124:125], v10, s[12:15], 0 offen
	buffer_load_b64 v[126:127], v11, s[12:15], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[108:109], v202 offset:8192
	ds_load_b64 v[110:111], v203 offset:8192
	ds_load_b64 v[112:113], v204 offset:8192
	ds_load_b64 v[114:115], v205 offset:8192
	ds_load_b64 v[116:117], v206 offset:8192
	ds_load_b64 v[118:119], v207 offset:8192
	ds_load_b64 v[120:121], v208 offset:8192
	ds_load_b64 v[122:123], v209 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[219:222], v202 offset1:2
	ds_load_2addr_stride64_b64 v[73:76], v202 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[41:44], v202 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[9:12], v202 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[223:226], v203 offset1:2
	ds_load_2addr_stride64_b64 v[77:80], v203 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[45:48], v203 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[13:16], v203 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[227:230], v204 offset1:2
	ds_load_2addr_stride64_b64 v[81:84], v204 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[49:52], v204 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[17:20], v204 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[231:234], v205 offset1:2
	ds_load_2addr_stride64_b64 v[85:88], v205 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[53:56], v205 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[21:24], v205 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[235:238], v206 offset1:2
	ds_load_2addr_stride64_b64 v[89:92], v206 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[57:60], v206 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[25:28], v206 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[239:242], v207 offset1:2
	ds_load_2addr_stride64_b64 v[93:96], v207 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[61:64], v207 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[29:32], v207 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[243:246], v208 offset1:2
	ds_load_2addr_stride64_b64 v[97:100], v208 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[65:68], v208 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[33:36], v208 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[247:250], v209 offset1:2
	ds_load_2addr_stride64_b64 v[101:104], v209 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[69:72], v209 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[37:40], v209 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(31)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[219:220], v[108:109], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v130, v[124:125], v[126:127] offset1:8
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b16 v129, v128 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[223:224], v[110:111], v[211:218] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[124:125], v202 offset:8192
	ds_load_b64 v[126:127], v203 offset:8192
	ds_load_b64 v[128:129], v204 offset:8192
	ds_load_b64 v[223:224], v205 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[251:254], v202 offset1:2
	ds_load_2addr_stride64_b64 v[130:133], v203 offset1:2
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[227:228], v[112:113], v[211:218] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[134:137], v204 offset1:2
	ds_load_2addr_stride64_b64 v[138:141], v205 offset1:2
	ds_load_2addr_stride64_b64 v[146:149], v207 offset1:2
	ds_load_2addr_stride64_b64 v[150:153], v208 offset1:2
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[231:232], v[114:115], v[211:218] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[154:157], v209 offset1:2
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[235:236], v[116:117], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[239:240], v[118:119], v[211:218] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[227:228], v206 offset:8192
	ds_load_b64 v[231:232], v207 offset:8192
	ds_load_b64 v[235:236], v208 offset:8192
	ds_load_b64 v[239:240], v209 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[142:145], v206 offset1:2
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[243:244], v[120:121], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[247:248], v[122:123], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[251:252], v[124:125], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[130:131], v[126:127], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[134:135], v[128:129], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[138:139], v[223:224], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[142:143], v[227:228], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[146:147], v[231:232], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[211:218], v[150:151], v[235:236], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[154:155], v[239:240], v[211:218] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v243, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v244, v212
	v_cvt_f32_i32_e32 v247, v213
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v248, v214
	v_cvt_f32_i32_e32 v251, v215
	v_cvt_f32_i32_e32 v252, v216
	v_cvt_f32_i32_e32 v255, v217
	v_cvt_f32_i32_e32 v0, v218
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[221:222], v[108:109], v[1:8] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[219:222], v209 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[225:226], v[110:111], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[229:230], v[112:113], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[211:218], v[233:234], v[114:115], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[237:238], v[116:117], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[211:218], v[241:242], v[118:119], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[245:246], v[120:121], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[211:218], v[249:250], v[122:123], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[253:254], v[124:125], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[211:218], v[132:133], v[126:127], v[211:218] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[130:133], v202 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[136:137], v[128:129], v[211:218] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[134:137], v203 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[140:141], v[223:224], v[211:218] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[138:141], v204 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[144:145], v[227:228], v[211:218] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[142:145], v205 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[148:149], v[231:232], v[211:218] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[146:149], v206 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[152:153], v[235:236], v[211:218] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[150:153], v207 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[156:157], v[239:240], v[211:218] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[154:157], v208 offset0:4 offset1:6
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v225, v211
	v_cvt_f32_i32_e32 v226, v212
	v_cvt_f32_i32_e32 v229, v213
	v_cvt_f32_i32_e32 v230, v214
	v_cvt_f32_i32_e32 v233, v215
	v_cvt_f32_i32_e32 v234, v216
	v_cvt_f32_i32_e32 v237, v217
	v_cvt_f32_i32_e32 v238, v218
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[73:74], v[108:109], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[77:78], v[110:111], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[211:218], v[81:82], v[112:113], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[85:86], v[114:115], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[211:218], v[89:90], v[116:117], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[93:94], v[118:119], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[211:218], v[97:98], v[120:121], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[101:102], v[122:123], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[130:131], v[124:125], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[134:135], v[126:127], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[138:139], v[128:129], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[142:143], v[223:224], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[146:147], v[227:228], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[150:151], v[231:232], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[154:155], v[235:236], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[219:220], v[239:240], v[211:218] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v138, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v139, v212
	v_cvt_f32_i32_e32 v142, v213
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v143, v214
	v_cvt_f32_i32_e32 v146, v215
	v_cvt_f32_i32_e32 v147, v216
	v_cvt_f32_i32_e32 v150, v217
	v_cvt_f32_i32_e32 v151, v218
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[75:76], v[108:109], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[79:80], v[110:111], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[41:42], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[211:218], v[83:84], v[112:113], v[211:218] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[45:46], v[110:111], v[73:80] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[81:84], v202 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[87:88], v[114:115], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[49:50], v[112:113], v[73:80] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[85:88], v203 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[91:92], v[116:117], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[53:54], v[114:115], v[73:80] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[89:92], v204 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[95:96], v[118:119], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[57:58], v[116:117], v[73:80] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[93:96], v205 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[99:100], v[120:121], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[61:62], v[118:119], v[73:80] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[97:100], v206 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[103:104], v[122:123], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[65:66], v[120:121], v[73:80] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[101:104], v207 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[132:133], v[124:125], v[211:218] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[69:70], v[122:123], v[73:80] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[130:133], v208 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[136:137], v[126:127], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[81:82], v[124:125], v[73:80] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[134:137], v209 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[211:218], v[140:141], v[128:129], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[85:86], v[126:127], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[144:145], v[223:224], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[89:90], v[128:129], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[148:149], v[227:228], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[93:94], v[223:224], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[152:153], v[231:232], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[97:98], v[227:228], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[156:157], v[235:236], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[101:102], v[231:232], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[211:218], v[221:222], v[239:240], v[211:218] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[130:131], v[235:236], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v140, v211
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[134:135], v[239:240], v[73:80] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v141, v212
	v_cvt_f32_i32_e32 v144, v213
	v_cvt_f32_i32_e32 v145, v214
	v_cvt_f32_i32_e32 v148, v215
	v_cvt_f32_i32_e32 v81, v73
	v_cvt_f32_i32_e32 v82, v74
	v_cvt_f32_i32_e32 v85, v75
	v_cvt_f32_i32_e32 v86, v76
	v_cvt_f32_i32_e32 v89, v77
	v_cvt_f32_i32_e32 v90, v78
	v_cvt_f32_i32_e32 v93, v79
	v_cvt_f32_i32_e32 v94, v80
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[43:44], v[108:109], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v149, v216
	v_cvt_f32_i32_e32 v152, v217
	v_cvt_f32_i32_e32 v153, v218
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[47:48], v[110:111], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[51:52], v[112:113], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[13:14], v[110:111], v[41:48] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[49:52], v202 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[55:56], v[114:115], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[17:18], v[112:113], v[41:48] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[53:56], v203 offset0:12 offset1:14
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	scratch_load_b32 v18, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[59:60], v[116:117], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[21:22], v[114:115], v[41:48] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[57:60], v204 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[63:64], v[118:119], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[25:26], v[116:117], v[41:48] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[61:64], v205 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[67:68], v[120:121], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[29:30], v[118:119], v[41:48] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[65:68], v206 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[71:72], v[122:123], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[33:34], v[120:121], v[41:48] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[69:72], v207 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
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
	v_wmma_i32_16x16x16_iu4 v[73:80], v[95:96], v[223:224], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[57:58], v[128:129], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[99:100], v[227:228], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[61:62], v[223:224], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[103:104], v[231:232], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[227:228], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[132:133], v[235:236], v[73:80] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[69:70], v[231:232], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[136:137], v[239:240], v[73:80] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v83, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v84, v74
	v_cvt_f32_i32_e32 v87, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v88, v76
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[73:76], v208 offset0:12 offset1:14
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v91, v77
	v_cvt_f32_i32_e32 v92, v78
	v_cvt_f32_i32_e32 v95, v79
	v_cvt_f32_i32_e32 v96, v80
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[77:80], v209 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[235:236], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[77:78], v[239:240], v[41:48] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v34, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v21, v42
	v_cvt_f32_i32_e32 v29, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v30, v45
	v_cvt_f32_i32_e32 v25, v46
	v_cvt_f32_i32_e32 v33, v47
	v_cvt_f32_i32_e32 v26, v48
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[51:52], v[124:125], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[126:127], v[41:48] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v56, off, off offset:48
	scratch_load_b32 v55, off, off offset:44
	v_wmma_i32_16x16x16_iu4 v[41:48], v[59:60], v[128:129], v[41:48] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v60, off, off offset:56
	scratch_load_b32 v59, off, off offset:52
	v_wmma_i32_16x16x16_iu4 v[41:48], v[63:64], v[223:224], v[41:48] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v63, off, off offset:64
	scratch_load_b32 v52, off, off offset:40
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[227:228], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[71:72], v[231:232], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[75:76], v[235:236], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[79:80], v[239:240], v[41:48] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v12, v48
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:36
	scratch_load_b32 v13, off, off offset:68
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v42
	scratch_load_b32 v42, off, off offset:8 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v15, v43
	scratch_load_b32 v43, off, off offset:12 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v14, v41
	v_cvt_f32_i32_e32 v17, v47
	scratch_load_b32 v47, off, off offset:32 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v10, v44
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v44, off, off offset:20
	scratch_load_b32 v41, off, off
	v_cvt_f32_i32_e32 v16, v45
	scratch_load_b32 v45, off, off offset:24 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v11, v46
	scratch_load_b32 v46, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v19, v13, v243 :: v_dual_add_nc_u32 v18, s35, v18
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v20, v18, s[16:19], 0 offen
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:4
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:8
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:12
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:16
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:20
	buffer_load_u16 v32, v18, s[16:19], 0 offen offset:24
	buffer_load_u16 v35, v18, s[16:19], 0 offen offset:28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s35, s35, s36
	s_cmp_lg_u32 s34, 0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v191, v19, v20
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v19, v13, v244 :: v_dual_lshlrev_b32 v20, 16, v23
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v195, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v19, v13, v247 :: v_dual_lshlrev_b32 v20, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v194, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v19, v13, v248 :: v_dual_lshlrev_b32 v20, 16, v27
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v193, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v19, v13, v251 :: v_dual_lshlrev_b32 v20, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v190, v19, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v19, v13, v252 :: v_dual_lshlrev_b32 v20, 16, v31
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v192, v19, v20 :: v_dual_mul_f32 v19, v13, v255
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v32
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v13, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v14, v13, v14 :: v_dual_fmac_f32 v189, v19, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v35
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v188, v0, v19
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:32
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:36
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:40
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:44
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:48
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:52
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:56
	buffer_load_u16 v32, v18, s[16:19], 0 offen offset:60
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v0, v13, v225 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v186, v0, v19 :: v_dual_lshlrev_b32 v19, 16, v20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v13, v226
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v187, v0, v19 :: v_dual_mul_f32 v0, v13, v229
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v19, 16, v23
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v184, v0, v19 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v13, v230
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v185, v0, v19 :: v_dual_mul_f32 v0, v13, v233
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v19, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v181, v0, v19 :: v_dual_mul_f32 v0, v13, v234
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v182, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v13, v237 :: v_dual_lshlrev_b32 v19, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v180, v0, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v13, v238 :: v_dual_lshlrev_b32 v19, 16, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v179, v0, v19 :: v_dual_mul_f32 v0, v13, v138
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v177, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v13, v139 :: v_dual_lshlrev_b32 v19, 16, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v178, v0, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v0, v13, v142 :: v_dual_lshlrev_b32 v19, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v175, v0, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v0, v13, v143 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v176, v0, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v13, v146 :: v_dual_lshlrev_b32 v19, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v173, v0, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v0, v13, v147 :: v_dual_lshlrev_b32 v19, 16, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v174, v0, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v13, v150 :: v_dual_lshlrev_b32 v19, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v171, v0, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v13, v151 :: v_dual_lshlrev_b32 v19, 16, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v172, v0, v19
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:96
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:100
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:104
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:108
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:112
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:116
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:120
	buffer_load_u16 v32, v18, s[16:19], 0 offen offset:124
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v0, v13, v140 :: v_dual_lshlrev_b32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v169, v0, v19 :: v_dual_mul_f32 v0, v13, v141
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v170, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v0, v13, v144 :: v_dual_lshlrev_b32 v19, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v168, v0, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v0, v13, v145 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v167, v0, v19 :: v_dual_mul_f32 v0, v13, v148
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v19, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v165, v0, v19 :: v_dual_mul_f32 v0, v13, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v166, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v13, v152 :: v_dual_lshlrev_b32 v19, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v163, v0, v19 :: v_dual_mul_f32 v0, v13, v153
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v164, v0, v19
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:128
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:132
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:136
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:140
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:144
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:148
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:152
	buffer_load_u16 v32, v18, s[16:19], 0 offen offset:156
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v0, v13, v81 :: v_dual_lshlrev_b32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v162, v0, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v13, v82 :: v_dual_lshlrev_b32 v19, 16, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v161, v0, v19 :: v_dual_mul_f32 v0, v13, v85
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v19, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v159, v0, v19 :: v_dual_mul_f32 v0, v13, v86
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v24
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v160, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v13, v89 :: v_dual_lshlrev_b32 v19, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v63, v0, v19 :: v_dual_mul_f32 v0, v13, v90
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v197, v0, v19 :: v_dual_mul_f32 v0, v13, v93
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v60, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v0, v13, v94 :: v_dual_lshlrev_b32 v19, 16, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v158, v0, v19
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:160
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:164
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:168
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:172
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:176
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:180
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:184
	buffer_load_u16 v32, v18, s[16:19], 0 offen offset:188
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v13, v83
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v105, v0, v19 :: v_dual_mul_f32 v0, v13, v84
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v19, 16, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v59, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v13, v87
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v19, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v56, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v13, v88
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v24
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v198, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v13, v91
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v19, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v183, v0, v19 :: v_dual_mul_f32 v0, v13, v92
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v55, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v13, v95
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v52, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v13, v96
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v210, v0, v19
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:192
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:196
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:200
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:204
	buffer_load_u16 v27, v18, s[16:19], 0 offen offset:208
	buffer_load_u16 v28, v18, s[16:19], 0 offen offset:212
	buffer_load_u16 v31, v18, s[16:19], 0 offen offset:216
	buffer_load_u16 v32, v18, s[16:19], 0 offen offset:220
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v0, v13, v34
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:16
	scratch_load_b32 v35, off, off offset:4
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v200, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v0, v13, v21 :: v_dual_lshlrev_b32 v19, 16, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v201, v0, v19 :: v_dual_mul_f32 v0, v13, v29
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v48, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v0, v13, v22 :: v_dual_lshlrev_b32 v19, 16, v24
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v47, v0, v19 :: v_dual_mul_f32 v0, v13, v30
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v19, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v45, v0, v19 :: v_dual_mul_f32 v0, v13, v25
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v46, v0, v19
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v13, v33 :: v_dual_lshlrev_b32 v19, 16, v31
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v0, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v0, v13, v26 :: v_dual_lshlrev_b32 v19, 16, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v44, v0, v19
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v0, v18, s[16:19], 0 offen offset:224
	buffer_load_u16 v19, v18, s[16:19], 0 offen offset:228
	buffer_load_u16 v20, v18, s[16:19], 0 offen offset:232
	buffer_load_u16 v21, v18, s[16:19], 0 offen offset:236
	buffer_load_u16 v22, v18, s[16:19], 0 offen offset:240
	buffer_load_u16 v23, v18, s[16:19], 0 offen offset:244
	buffer_load_u16 v24, v18, s[16:19], 0 offen offset:248
	buffer_load_u16 v18, v18, s[16:19], 0 offen offset:252
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v43, v14, v0 :: v_dual_mul_f32 v0, v13, v9
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v9, 16, v19
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v42, v0, v9
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v0, v13, v15 :: v_dual_lshlrev_b32 v9, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v35, v0, v9 :: v_dual_mul_f32 v0, v13, v10
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v9, 16, v21
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v36, v0, v9
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v0, v13, v16 :: v_dual_lshlrev_b32 v9, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v41, v0, v9 :: v_dual_mul_f32 v0, v13, v11
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v9, 16, v23
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v196, v0, v9
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v0, v13, v17 :: v_dual_lshlrev_b32 v9, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v107, v0, v9 :: v_dual_mul_f32 v0, v13, v12
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v18
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v106, v0, v9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v51, off, off offset:116
	scratch_load_b32 v37, off, off offset:120
	scratch_load_b32 v18, off, off offset:124
.LBB0_4:                                ; %._crit_edge
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v3.h, 0
	v_mov_b16_e64 v3.l, v195.h
	v_mov_b16_e64 v5.l, v194.h
	v_cmp_o_f32_e32 vcc_lo, v195, v195
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v2, s23, v18
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v5.h, v3.h
	v_and_b32_e32 v4, 1, v3
	v_mov_b16_e64 v3.l, v193.h
	.loc	1 127 14 is_stmt 1              ; generate_amdgcn.py:127:14
	s_lshl_b32 s0, s22, 7
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	s_mul_i32 s33, s33, s23
	.loc	1 245 9 is_stmt 0               ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v0.l, v191.h
	v_add3_u32 v4, v195, v4, 0x7fff
	v_and_b32_e32 v6, 1, v3
	v_mov_b16_e32 v0.h, v3.h
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v2, s33, s0, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v193, v193
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_and_b32_e32 v5, 1, v5
	v_cmp_o_f32_e64 s1, v194, v194
	v_cmp_o_f32_e32 vcc_lo, v191, v191
	v_mov_b16_e64 v3.l, v192.h
	v_mov_b16_e64 v9.l, v186.h
	v_add3_u32 v7, v194, v5, 0x7fff
	v_add3_u32 v5, v193, v6, 0x7fff
	v_mov_b16_e64 v6.l, v190.h
	v_mov_b16_e32 v6.h, v3.h
	v_mov_b16_e64 v7.l, v189.h
	v_cndmask_b16 v5.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s0
	v_and_b32_e32 v0, 1, v0
	v_mov_b16_e32 v7.h, v3.h
	v_mov_b16_e32 v9.h, v3.h
	v_cmp_o_f32_e64 s0, v188, v188
	v_cmp_o_f32_e64 s1, v186, v186
	v_add3_u32 v0, v191, v0, 0x7fff
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e64 v12.l, v180.h
	v_mov_b16_e32 v12.h, v3.h
	v_mov_b16_e64 v15.l, v173.h
	v_cndmask_b16 v4.l, 0x7fff, v0.h, vcc_lo
	v_and_b32_e32 v8, 1, v3
	v_and_b32_e32 v0, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	v_mov_b16_e64 v3.l, v188.h
	v_add3_u32 v10, v189, v7, 0x7fff
	v_add3_u32 v6, v192, v8, 0x7fff
	v_add3_u32 v0, v190, v0, 0x7fff
	v_mov_b16_e64 v10.l, v181.h
	v_and_b32_e32 v8, 1, v3
	v_mov_b16_e64 v3.l, v187.h
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	v_mov_b16_e32 v15.h, v3.h
	v_add3_u32 v8, v188, v8, 0x7fff
	v_mov_b16_e64 v16.l, v171.h
	v_mov_b16_e32 v16.h, v3.h
	v_cndmask_b16 v6.l, 0x7fff, v0.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v189, v189
	v_and_b32_e32 v0, 1, v9
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s0
	v_cmp_o_f32_e64 s0, v187, v187
	v_mov_b16_e64 v18.l, v168.h
	v_cndmask_b16 v7.l, 0x7fff, v10.h, vcc_lo
	v_and_b32_e32 v9, 1, v3
	v_mov_b16_e64 v3.l, v185.h
	v_add3_u32 v0, v186, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	v_mov_b16_e32 v10.h, v3.h
	v_add3_u32 v8, v187, v9, 0x7fff
	v_mov_b16_e64 v9.l, v184.h
	v_mov_b16_e32 v9.h, v3.h
	v_and_b32_e32 v11, 1, v3
	v_cndmask_b16 v8.l, 0x7fff, v0.h, s1
	v_mov_b16_e64 v3.l, v182.h
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s0
	v_and_b32_e32 v0, 1, v9
	v_add3_u32 v9, v185, v11, 0x7fff
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v11, 1, v3
	v_mov_b16_e64 v3.l, v179.h
	v_add3_u32 v0, v184, v0, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v9.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	v_add3_u32 v11, v182, v11, 0x7fff
	v_cmp_o_f32_e64 s0, v182, v182
	v_add3_u32 v13, v181, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v180, v180
	v_cndmask_b16 v9.l, 0x7fff, v0.h, vcc_lo
	v_and_b32_e32 v0, 1, v12
	v_and_b32_e32 v12, 1, v3
	v_mov_b16_e64 v3.l, v178.h
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s0
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	v_add3_u32 v0, v180, v0, 0x7fff
	v_add3_u32 v11, v179, v12, 0x7fff
	v_mov_b16_e64 v12.l, v177.h
	v_mov_b16_e32 v12.h, v3.h
	v_and_b32_e32 v14, 1, v3
	v_cndmask_b16 v10.l, 0x7fff, v13.h, vcc_lo
	v_cndmask_b16 v11.l, 0x7fff, v0.h, s1
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	v_and_b32_e32 v0, 1, v12
	v_add3_u32 v12, v178, v14, 0x7fff
	v_mov_b16_e64 v3.l, v176.h
	v_cmp_o_f32_e64 s0, v179, v179
	v_mov_b16_e64 v13.l, v175.h
	v_mov_b16_e32 v13.h, v3.h
	v_add3_u32 v0, v177, v0, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	v_and_b32_e32 v14, 1, v3
	v_mov_b16_e64 v3.l, v174.h
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s0
	v_and_b32_e32 v13, 1, v13
	v_cmp_o_f32_e64 s0, v176, v176
	v_add3_u32 v14, v176, v14, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v0.h, vcc_lo
	v_and_b32_e32 v0, 1, v15
	v_and_b32_e32 v15, 1, v3
	v_mov_b16_e64 v3.l, v172.h
	v_add3_u32 v13, v175, v13, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s0
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	v_add3_u32 v0, v173, v0, 0x7fff
	v_add3_u32 v15, v174, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v174, v174
	v_cmp_o_f32_e64 s1, v173, v173
	v_and_b32_e32 v17, 1, v3
	v_cndmask_b16 v14.l, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s0
	v_cndmask_b16 v13.l, 0x7fff, v0.h, s1
	v_and_b32_e32 v0, 1, v16
	v_add3_u32 v15, v172, v17, 0x7fff
	v_mov_b16_e64 v3.l, v170.h
	v_mov_b16_e64 v16.l, v169.h
	v_mov_b16_e32 v18.h, v3.h
	v_add3_u32 v0, v171, v0, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v15.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v171, v171
	v_and_b32_e32 v17, 1, v3
	v_mov_b16_e64 v3.l, v167.h
	v_and_b32_e32 v16, 1, v16
	v_cmp_o_f32_e64 s0, v170, v170
	v_cndmask_b16 v15.l, 0x7fff, v0.h, vcc_lo
	v_add3_u32 v17, v170, v17, 0x7fff
	v_and_b32_e32 v0, 1, v18
	v_and_b32_e32 v18, 1, v3
	v_mov_b16_e64 v3.l, v166.h
	v_add3_u32 v16, v169, v16, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s0
	v_cmp_o_f32_e32 vcc_lo, v169, v169
	v_add3_u32 v0, v168, v0, 0x7fff
	v_add3_u32 v18, v167, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v167, v167
	v_cmp_o_f32_e64 s1, v168, v168
	v_mov_b16_e64 v19.l, v165.h
	v_mov_b16_e32 v19.h, v3.h
	v_and_b32_e32 v20, 1, v3
	v_cndmask_b16 v17.l, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v16.l, 0x7fff, v0.h, s1
	v_and_b32_e32 v0, 1, v19
	v_add3_u32 v18, v166, v20, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	v_mov_b16_e64 v3.l, v164.h
	v_mov_b16_e64 v19.l, v163.h
	v_add3_u32 v0, v165, v0, 0x7fff
	v_mov_b16_e64 v21.l, v162.h
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_and_b32_e32 v20, 1, v3
	v_mov_b16_e32 v21.h, v3.h
	v_mov_b16_e64 v3.l, v161.h
	v_cmp_o_f32_e64 s0, v164, v164
	v_cndmask_b16 v18.l, 0x7fff, v0.h, vcc_lo
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v20, v164, v20, 0x7fff
	v_and_b32_e32 v0, 1, v21
	v_and_b32_e32 v21, 1, v3
	v_mov_b16_e64 v3.l, v160.h
	v_add3_u32 v19, v163, v19, 0x7fff
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s0
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	v_add3_u32 v0, v162, v0, 0x7fff
	v_add3_u32 v21, v161, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v161, v161
	v_cmp_o_f32_e64 s1, v162, v162
	v_mov_b16_e64 v22.l, v159.h
	v_mov_b16_e32 v22.h, v3.h
	v_and_b32_e32 v23, 1, v3
	v_cndmask_b16 v20.l, 0x7fff, v19.h, vcc_lo
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s0
	v_cndmask_b16 v19.l, 0x7fff, v0.h, s1
	v_and_b32_e32 v0, 1, v22
	v_add3_u32 v21, v160, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	v_mov_b16_e64 v3.l, v197.h
	v_mov_b16_e32 v22.l, v63.h
	v_add3_u32 v0, v159, v0, 0x7fff
	v_mov_b16_e32 v24.l, v60.h
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_and_b32_e32 v23, 1, v3
	v_mov_b16_e32 v24.h, v3.h
	v_mov_b16_e64 v3.l, v158.h
	v_and_b32_e32 v22, 1, v22
	v_cmp_o_f32_e64 s0, v197, v197
	v_add3_u32 v23, v197, v23, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v0.h, vcc_lo
	v_and_b32_e32 v0, 1, v24
	v_and_b32_e32 v24, 1, v3
	v_mov_b16_e32 v3.l, v59.h
	v_add3_u32 v22, v63, v22, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_add3_u32 v0, v60, v0, 0x7fff
	v_add3_u32 v24, v158, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v158, v158
	v_cmp_o_f32_e64 s1, v60, v60
	v_mov_b16_e32 v25.l, v105.h
	v_mov_b16_e32 v25.h, v3.h
	v_and_b32_e32 v26, 1, v3
	v_cndmask_b16 v23.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s0
	v_cndmask_b16 v22.l, 0x7fff, v0.h, s1
	v_and_b32_e32 v0, 1, v25
	v_add3_u32 v24, v59, v26, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_mov_b16_e64 v3.l, v198.h
	v_mov_b16_e32 v25.l, v56.h
	v_add3_u32 v0, v105, v0, 0x7fff
	v_mov_b16_e64 v27.l, v183.h
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_and_b32_e32 v26, 1, v3
	v_mov_b16_e32 v27.h, v3.h
	v_mov_b16_e32 v3.l, v55.h
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v1, 1, v37
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v26, v198, v26, 0x7fff
	v_cmp_o_f32_e64 s0, v198, v198
	v_cndmask_b16 v24.l, 0x7fff, v0.h, vcc_lo
	v_and_b32_e32 v0, 1, v27
	v_and_b32_e32 v27, 1, v3
	v_mov_b16_e64 v3.l, v210.h
	v_add3_u32 v25, v56, v25, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s0
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_add3_u32 v0, v183, v0, 0x7fff
	v_add3_u32 v27, v55, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v55, v55
	v_cmp_o_f32_e64 s1, v183, v183
	v_mov_b16_e32 v28.l, v52.h
	v_mov_b16_e32 v28.h, v3.h
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v29, 1, v3
	v_cndmask_b16 v26.l, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s0
	v_cndmask_b16 v25.l, 0x7fff, v0.h, s1
	v_and_b32_e32 v0, 1, v28
	v_add3_u32 v27, v210, v29, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v210, v210
	v_mov_b16_e64 v3.l, v201.h
	v_mov_b16_e64 v28.l, v200.h
	v_add3_u32 v0, v52, v0, 0x7fff
	v_mov_b16_e32 v30.l, v48.h
	v_cndmask_b16 v27.h, 0x7fff, v27.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_mov_b16_e32 v30.h, v3.h
	v_add_nc_u32_e32 v2, 32, v1
	v_and_b32_e32 v29, 1, v3
	v_mov_b16_e32 v3.l, v47.h
	v_and_b32_e32 v28, 1, v28
	v_cmp_o_f32_e64 s0, v201, v201
	v_cndmask_b16 v27.l, 0x7fff, v0.h, vcc_lo
	v_add3_u32 v29, v201, v29, 0x7fff
	v_and_b32_e32 v0, 1, v30
	v_and_b32_e32 v30, 1, v3
	v_mov_b16_e32 v3.l, v46.h
	v_add3_u32 v28, v200, v28, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s0
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	v_add3_u32 v0, v48, v0, 0x7fff
	v_add3_u32 v30, v47, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v47, v47
	v_cmp_o_f32_e64 s1, v48, v48
	v_mov_b16_e32 v31.l, v45.h
	v_mov_b16_e32 v31.h, v3.h
	v_and_b32_e32 v32, 1, v3
	v_cndmask_b16 v29.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s0
	v_cndmask_b16 v28.l, 0x7fff, v0.h, s1
	v_and_b32_e32 v0, 1, v31
	v_add3_u32 v30, v46, v32, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_mov_b16_e32 v3.l, v44.h
	v_mov_b16_e32 v31.l, v34.h
	v_add3_u32 v0, v45, v0, 0x7fff
	v_mov_b16_e32 v33.l, v43.h
	v_cndmask_b16 v30.h, 0x7fff, v30.h, vcc_lo
	v_and_b32_e32 v32, 1, v3
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v33.h, v3.h
	v_mov_b16_e32 v3.l, v42.h
	v_add3_u32 v32, v44, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v44, v44
	v_cndmask_b16 v30.l, 0x7fff, v0.h, vcc_lo
	v_and_b32_e32 v0, 1, v33
	v_add3_u32 v31, v34, v31, 0x7fff
	v_and_b32_e32 v33, 1, v3
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_mov_b16_e32 v34.l, v35.h
	v_mov_b16_e32 v34.h, v3.h
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s0
	v_add3_u32 v0, v43, v0, 0x7fff
	v_add3_u32 v33, v42, v33, 0x7fff
	v_cmp_o_f32_e64 s0, v42, v42
	v_cmp_o_f32_e64 s1, v43, v43
	v_mov_b16_e32 v3.l, v36.h
	v_and_b32_e32 v34, 1, v34
	v_cndmask_b16 v32.l, 0x7fff, v31.h, vcc_lo
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s0
	v_cndmask_b16 v31.l, 0x7fff, v0.h, s1
	v_and_b32_e32 v0, 1, v3
	v_add3_u32 v33, v35, v34, 0x7fff
	v_mov_b16_e64 v3.l, v196.h
	v_mov_b16_e32 v34.l, v41.h
	v_mov_b16_e32 v34.h, v3.h
	v_add3_u32 v0, v36, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_cmp_o_f32_e64 s0, v35, v35
	v_and_b32_e32 v35, 1, v3
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e32 v36.l, v107.h
	v_mov_b16_e32 v36.h, v3.h
	v_mov_b16_e32 v3.l, v106.h
	v_cndmask_b16 v0.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v33.h, s0
	v_add3_u32 v33, v41, v34, 0x7fff
	v_and_b32_e32 v34, 1, v36
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v35, v196, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	v_cmp_o_f32_e64 s0, v41, v41
	v_add3_u32 v34, v107, v34, 0x7fff
	v_add3_u32 v3, v106, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v106, v106
	v_cmp_o_f32_e64 s2, v107, v107
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
	v_dual_cndmask_b32 v36, v13, v12 :: v_dual_cndmask_b32 v9, v12, v13
	v_cndmask_b32_e32 v38, v18, v17, vcc_lo
	v_cndmask_b32_e32 v12, v17, v18, vcc_lo
	v_cndmask_b32_e32 v18, v20, v16, vcc_lo
	v_cndmask_b32_e32 v13, v16, v20, vcc_lo
	v_dual_cndmask_b32 v39, v25, v24 :: v_dual_cndmask_b32 v16, v24, v25
	v_mov_b32_e32 v24, 0x5410
	v_mov_b32_e32 v25, 0x7632
	v_cndmask_b32_e32 v37, v15, v14, vcc_lo
	v_cndmask_b32_e32 v11, v14, v15, vcc_lo
	v_cndmask_b32_e32 v20, v23, v19, vcc_lo
	v_dual_cndmask_b32 v14, v19, v23 :: v_dual_cndmask_b32 v23, v22, v21
	v_cndmask_b32_e32 v15, v21, v22, vcc_lo
	v_cndmask_b32_e32 v41, v30, v29, vcc_lo
	v_dual_cndmask_b32 v19, v29, v30 :: v_dual_cndmask_b32 v30, v32, v28
	v_dual_cndmask_b32 v21, v28, v32 :: v_dual_cndmask_b32 v32, v35, v31
	v_cndmask_b32_e32 v22, v31, v35, vcc_lo
	v_dual_cndmask_b32 v35, v3, v0 :: v_dual_cndmask_b32 v0, v0, v3
	v_cndmask_b32_e32 v3, 0x1054, v24, vcc_lo
	v_cndmask_b32_e32 v24, 0x3276, v25, vcc_lo
	v_permlanex16_b32 v25, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v40, v27, v26 :: v_dual_cndmask_b32 v17, v26, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, v3, 8, v3
	v_lshl_or_b32 v5, v24, 8, v24
	v_permlanex16_b32 v26, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v3, 0x540054, v3
	v_and_b32_e32 v5, 0x760076, v5
	v_permlanex16_b32 v24, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v5, v5, 4, v5
	v_permlanex16_b32 v29, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v47, 0x5040504, v3
	v_and_b32_e32 v48, 0x7060706, v5
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_perm_b32 v7, v26, v34, v47
	v_perm_b32 v8, v26, v34, v48
	v_and_b32_e32 v34, 0x1e0, v51
	v_perm_b32 v3, v4, v33, v47
	v_perm_b32 v4, v4, v33, v48
	v_perm_b32 v5, v25, v6, v47
	v_perm_b32 v6, v25, v6, v48
	v_cmp_eq_u32_e32 vcc_lo, 0, v34
	v_add_nc_u32_e32 v34, 64, v1
	v_perm_b32 v11, v24, v36, v47
	v_perm_b32 v12, v24, v36, v48
	v_perm_b32 v9, v27, v10, v47
	v_cndmask_b32_e32 v36, 0x80000000, v1, vcc_lo
	v_perm_b32 v10, v27, v10, v48
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_perm_b32 v13, v28, v37, v47
	v_perm_b32 v14, v28, v37, v48
	v_cndmask_b32_e32 v37, 0x80000000, v34, vcc_lo
	v_perm_b32 v33, v0, v35, v47
	v_perm_b32 v34, v0, v35, v48
	v_add_nc_u32_e32 v0, 0x60, v1
	v_permlanex16_b32 v43, v15, s0, 0xfedcba98 op_sel:[1,0]
	s_clause 0x2
	buffer_store_b128 v[3:6], v36, s[20:23], 0 offen
	buffer_store_b128 v[7:10], v2, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v37, s[20:23], 0 offen
	v_add_nc_u32_e32 v2, 0x80, v1
	v_permlanex16_b32 v44, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v3, 0xa0, v1
	v_permlanex16_b32 v46, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v4, 0xc0, v1
	v_add_nc_u32_e32 v1, 0xe0, v1
	v_permlanex16_b32 v50, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v29, v38, v47
	v_perm_b32 v16, v29, v38, v48
	v_perm_b32 v17, v31, v18, v47
	v_perm_b32 v18, v31, v18, v48
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v19, v42, v20, v47
	v_perm_b32 v20, v42, v20, v48
	v_perm_b32 v21, v43, v23, v47
	v_perm_b32 v22, v43, v23, v48
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_perm_b32 v23, v44, v39, v47
	v_perm_b32 v24, v44, v39, v48
	v_perm_b32 v25, v45, v40, v47
	v_perm_b32 v26, v45, v40, v48
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_perm_b32 v27, v46, v41, v47
	v_perm_b32 v28, v46, v41, v48
	v_perm_b32 v29, v49, v30, v47
	v_perm_b32 v30, v49, v30, v48
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_perm_b32 v31, v50, v32, v47
	v_perm_b32 v32, v50, v32, v48
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[20:23], 0 offen
	buffer_store_b128 v[19:22], v2, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v3, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v4, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v1, s[20:23], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 132
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 132
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9884
; TotalNumSgprs: 40
; NumVgprs: 256
; ScratchSize: 132
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
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	181                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 132
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 32
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
