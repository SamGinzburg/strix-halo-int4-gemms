	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
	v_mov_b32_e32 v162, v0
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v171, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v248, 0 :: v_dual_lshlrev_b32 v9, 1, v162
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v175, 0
	v_mov_b32_e32 v229, 0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v1, 62, v9
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v8, 4, v162
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v3, 3, v162
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v233, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v56, 15, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v2, 0x70, v8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v11, 56, v3
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s26, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s5, 31
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
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[4:5], null, s27, v3, v[2:3]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v9, v9, v11
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v173, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v185, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v191, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v193, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v199, 0
	s_mul_i32 s10, s10, s7
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v197, 0
	s_mul_hi_u32 s10, s7, s10
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v201, 0
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v203, 0
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v209, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v207, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v211, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v213, 0
	s_sub_i32 s6, s6, s10
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v217, 0
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s16, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s19, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s19
	s_xor_b32 s6, s2, s19
	s_cvt_f32_u32 s17, s7
	s_ashr_i32 s6, s6, 31
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v215, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s17
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v205, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s17, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v0, 5, v162
	s_mov_b32 s11, 0x31027000
	v_dual_mov_b32 v218, 0 :: v_dual_lshlrev_b32 v13, 2, v162
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	v_dual_mov_b32 v224, 0 :: v_dual_add_nc_u32 v235, 0, v56
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	v_mov_b32_e32 v222, 0
	v_mov_b32_e32 v226, 0
	s_mul_i32 s17, s17, s10
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v60, v162, 4, 1
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s5, s10, s17
	s_abs_i32 s17, s2
	s_add_i32 s5, s10, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_hi_u32 s5, s17, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s18, s5, s7
	v_or_b32_e32 v160, 0x3f0, v162
	s_sub_i32 s17, s17, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s17, s7
	s_cmp_ge_u32 s17, s7
	v_or_b32_e32 v70, 0x7f0, v162
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s7
	v_or_b32_e32 v158, 0xbf0, v162
	s_cselect_b32 s5, s18, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s7, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s17, s5, s6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 0x7f
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s17, s6
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s18, s3, 6
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s7, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s19, s5, s19
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v7, s18, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[5:6], null, s7, v0, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s19
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v10, s18, v3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s22, s20, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s7, v7
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 64, v7
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 4
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s7, v10
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 64, v10
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s22, 7
.Ltmp21:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s2, s33, s7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s21, s27, s18
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v5, s18, s2, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, vcc_lo, s4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v4, s21, s26, v4
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v10, v5, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[4:7], v4, s[28:31], 0 offen
	v_or_b32_e32 v51, 0xff0, v162
	v_or_b32_e32 v50, 0x13f0, v162
	v_or_b32_e32 v49, 0x17f0, v162
	v_or_b32_e32 v48, 0x1bf0, v162
	v_or_b32_e32 v47, 0x1ff0, v162
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v14, 0, v9
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v254, 0, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s34, -1
	s_mov_b32 s16, 0
	s_cmpk_lt_i32 s20, 0x100
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v14, v10 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v254, v[4:7]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	s_add_i32 s35, s18, 64
	s_lshl_b32 s0, s17, 8
	v_dual_mov_b32 v223, 0 :: v_dual_add_nc_u32 v12, s35, v3
	s_lshl_b32 s17, s17, 7
	v_dual_mov_b32 v225, 0 :: v_dual_add_nc_u32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v12, s27, v12
	v_dual_mov_b32 v205, 0 :: v_dual_and_b32 v4, 56, v13
	v_sub_nc_u32_e32 v15, s7, v1
	v_sub_nc_u32_e32 v3, s7, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v162, off offset:812
	scratch_store_b32 off, v13, off offset:840
	v_lshl_or_b32 v4, v56, 6, v4
	v_dual_mov_b32 v226, 0 :: v_dual_add_nc_u32 v13, s33, v56
	v_add3_u32 v2, v12, s17, v2
	scratch_store_b32 off, v15, off offset:712 ; 4-byte Folded Spill
	v_xor_b32_e32 v5, 8, v4
	v_xor_b32_e32 v6, 16, v4
	v_xor_b32_e32 v7, 24, v4
	v_mad_u64_u32 v[0:1], null, s7, v0, v[1:2]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:716
	scratch_store_b32 off, v56, off offset:816
	v_xor_b32_e32 v8, 32, v4
	v_xor_b32_e32 v9, 40, v4
	v_xor_b32_e32 v10, 48, v4
	v_mov_b32_e32 v221, 0
	scratch_store_b64 off, v[0:1], off offset:720 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v11, 56, v4
	v_mul_lo_u32 v3, s34, v13
	v_mov_b32_e32 v219, 0
	s_lshl_b32 s18, s6, 8
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v5
	s_sub_i32 s41, s0, s18
	v_mov_b32_e32 v215, 0
	s_lshl_b32 s0, s6, 7
	s_mov_b32 s17, s16
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v0, 0, v6
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v0, 0, v7
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v0, 0, v8
	v_dual_mov_b32 v222, 0 :: v_dual_lshlrev_b32 v129, 1, v3
	v_mov_b32_e32 v207, 0
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v9
	v_subrev_nc_u32_e32 v127, s0, v2
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v193, 0
	v_mov_b32_e32 v209, 0
	scratch_store_b32 off, v0, off offset:748 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v10
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v218, 0
	v_mov_b32_e32 v191, 0
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:756
	scratch_store_b32 off, v51, off offset:836
	v_add_nc_u32_e32 v0, 0, v51
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:760
	scratch_store_b32 off, v50, off offset:832
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v0, 0, v50
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:764
	scratch_store_b32 off, v49, off offset:828
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v0, 0, v49
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:768
	scratch_store_b32 off, v48, off offset:824
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v0, 0, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:772
	scratch_store_b32 off, v47, off offset:820
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v0, 0, v47
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v185, 0
	scratch_store_b32 off, v0, off offset:776 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, s16
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v1, s17
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v3, s19
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v5, s21
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v7, s23
	v_mov_b32_e32 v186, 0
	v_mov_b32_e32 v182, 0
	v_mov_b32_e32 v184, 0
	v_mov_b32_e32 v180, 0
	v_mov_b32_e32 v178, 0
	v_mov_b32_e32 v174, 0
	v_mov_b32_e32 v176, 0
	v_mov_b32_e32 v172, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v170, 0
	v_mov_b32_e32 v168, 0
	v_mov_b32_e32 v228, 0
	v_mov_b32_e32 v232, 0
	v_mov_b32_e32 v248, 0
	v_mov_b32_e32 v2, s18
	v_mov_b32_e32 v4, s20
	v_mov_b32_e32 v6, s22
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_max_i32 s40, s1, 1
	s_lshl_b32 s42, s27, 1
	s_lshl_b32 s43, s27, 6
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_clause 0x3                            ; 40-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:780
	scratch_store_b128 off, v[4:7], off offset:796
	scratch_store_b32 off, v158, off offset:704
	scratch_store_b32 off, v14, off offset:708
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	scratch_load_b32 v0, off, off offset:712 ; 4-byte Folded Reload
	s_clause 0x18                           ; 100-byte Folded Spill
	scratch_store_b32 off, v134, off offset:96
	scratch_store_b32 off, v168, off offset:92
	scratch_store_b32 off, v127, off offset:88
	scratch_store_b32 off, v225, off offset:84
	scratch_store_b32 off, v224, off offset:80
	scratch_store_b32 off, v222, off offset:76
	scratch_store_b32 off, v220, off offset:72
	scratch_store_b32 off, v207, off offset:68
	scratch_store_b32 off, v206, off offset:64
	scratch_store_b32 off, v205, off offset:60
	scratch_store_b32 off, v204, off offset:56
	scratch_store_b32 off, v203, off offset:52
	scratch_store_b32 off, v202, off offset:48
	scratch_store_b32 off, v201, off offset:44
	scratch_store_b32 off, v200, off offset:40
	scratch_store_b32 off, v199, off offset:36
	scratch_store_b32 off, v198, off offset:32
	scratch_store_b32 off, v194, off offset:28
	scratch_store_b32 off, v193, off offset:24
	scratch_store_b32 off, v185, off offset:20
	scratch_store_b32 off, v182, off offset:16
	scratch_store_b32 off, v177, off offset:12
	scratch_store_b32 off, v176, off offset:8
	scratch_store_b32 off, v172, off offset:4
	scratch_store_b32 off, v171, off
	v_dual_mov_b32 v162, v70 :: v_dual_mov_b32 v163, v160
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s40, s40, -1
	v_mov_b32_e32 v133, v60
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(0)
	v_cmp_lt_i32_e64 s0, s35, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	scratch_load_b64 v[0:1], off, off offset:720 ; 8-byte Folded Reload
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s35, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v1, v235 offset:768
	ds_load_u8 v2, v235 offset:896
	ds_load_u8 v204, v235 offset:912
	ds_load_u8 v3, v235 offset:928
	ds_load_u8 v9, v235 offset:512
	ds_load_u8 v10, v235 offset:640
	ds_load_u8 v17, v235 offset:656
	ds_load_u8 v0, v235 offset:672
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[20:23], off, off offset:780
	scratch_load_b128 v[24:27], off, off offset:796
	ds_load_u8 v71, v235 offset:7056
	ds_load_u8 v96, v235 offset:7072
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	scratch_store_b32 off, v3, off offset:420 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:360 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:960
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:300 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:976
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:244 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:992
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:688
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v203, v235 offset:784
	ds_load_u8 v3, v235 offset:800
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:424 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:368 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:832
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:304 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:848
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:248 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v2, v235
	ds_load_u8 v3, v235 offset:128
	ds_load_u8 v202, v235 offset:144
	ds_load_u8 v4, v235 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:440 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:176
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:704
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:380 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:192
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:720
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:324 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:208
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:736
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:264 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:224
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:752
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:240
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v207, v235 offset:528
	ds_load_u8 v0, v235 offset:544
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v4, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v201, v235 offset:16
	ds_load_u8 v4, v235 offset:32
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:560
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:448 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:48
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:576
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:392 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:64
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:592
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:328 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:80
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:608
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:268 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:96
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:624
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:112
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_perm_b32 v0, v9, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:256
	ds_load_u8 v4, v235 offset:384
	ds_load_u8 v200, v235 offset:400
	ds_load_u8 v5, v235 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:456 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:432
	v_lshl_or_b32 v9, v3, 16, v2
	ds_load_u8 v0, v235 offset:1664
	ds_load_u8 v1, v235 offset:1536
	ds_load_u8 v2, v235 offset:1520
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v5, off offset:396 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:1648
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:340 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:464
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:204 ; 4-byte Folded Spill
	ds_load_u8 v1, v235 offset:1920
	ds_load_u8 v2, v235 offset:1792
	ds_load_u8 v3, v235 offset:1776
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v5, off offset:276 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:212 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:1904
	v_lshl_or_b32 v12, v1, 16, v0
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:216 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:496
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:220 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:1024
	ds_load_u8 v3, v235 offset:1152
	ds_load_u8 v4, v235 offset:1136
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v5, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v199, v235 offset:272
	ds_load_u8 v5, v235 offset:288
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v4, off offset:228 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:460 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:304
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:404 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:320
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:348 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:336
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:288 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:224 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:368
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:1408
	ds_load_u8 v4, v235 offset:1280
	ds_load_u8 v5, v235 offset:1264
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v3, 16, v2
	ds_load_u8 v0, v235 offset:2688
	ds_load_u8 v1, v235 offset:2560
	ds_load_u8 v2, v235 offset:2576
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v5, off offset:236 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:1392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:516 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:2544
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:240 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:252 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:2704
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:556 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:2672
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:256 ; 4-byte Folded Spill
	ds_load_u8 v1, v235 offset:2944
	ds_load_u8 v2, v235 offset:2816
	ds_load_u8 v3, v235 offset:2832
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:564 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:2800
	v_lshl_or_b32 v14, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:260 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:2960
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:572 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:2928
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:272 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:2176
	ds_load_u8 v3, v235 offset:2048
	ds_load_u8 v227, v235 offset:2064
	ds_load_u8 v4, v235 offset:2016
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:332 ; 4-byte Folded Spill
	ds_load_u8 v225, v235 offset:2192
	ds_load_u8 v4, v235 offset:2160
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:280 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:2432
	ds_load_u8 v4, v235 offset:2304
	ds_load_u8 v224, v235 offset:2320
	ds_load_u8 v5, v235 offset:2288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v3, 16, v2
	ds_load_u8 v0, v235 offset:3712
	ds_load_u8 v1, v235 offset:3584
	ds_load_u8 v220, v235 offset:3600
	ds_load_u8 v2, v235 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:500 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:3568
	scratch_store_b32 off, v5, off offset:284 ; 4-byte Folded Spill
	ds_load_u8 v222, v235 offset:2448
	ds_load_u8 v5, v235 offset:2416
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v2, off offset:308 ; 4-byte Folded Spill
	ds_load_u8 v198, v235 offset:3728
	ds_load_u8 v2, v235 offset:3744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:528 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:3696
	scratch_store_b32 off, v5, off offset:292 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:312 ; 4-byte Folded Spill
	ds_load_u8 v1, v235 offset:3968
	ds_load_u8 v2, v235 offset:3840
	ds_load_u8 v194, v235 offset:3856
	ds_load_u8 v3, v235 offset:3872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:532 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:3824
	v_lshl_or_b32 v16, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:316 ; 4-byte Folded Spill
	ds_load_u8 v193, v235 offset:3984
	ds_load_u8 v3, v235 offset:4000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:544 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:3952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:320 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:3200
	ds_load_u8 v3, v235 offset:3072
	ds_load_u8 v185, v235 offset:3088
	ds_load_u8 v4, v235 offset:3104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:560 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:3040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:388 ; 4-byte Folded Spill
	ds_load_u8 v182, v235 offset:3216
	ds_load_u8 v4, v235 offset:3232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:568 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:3184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:336 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:3456
	ds_load_u8 v4, v235 offset:3328
	ds_load_u8 v177, v235 offset:3344
	ds_load_u8 v5, v235 offset:3360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v3, 16, v2
	ds_load_u8 v0, v235 offset:4736
	ds_load_u8 v1, v235 offset:4608
	ds_load_u8 v172, v235 offset:4624
	ds_load_u8 v2, v235 offset:4640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:604 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:4656
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:492 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:4592
	scratch_store_b32 off, v5, off offset:584 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:3312
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:364 ; 4-byte Folded Spill
	ds_load_u8 v161, v235 offset:4752
	ds_load_u8 v2, v235 offset:4768
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:664 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:4784
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:524 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:4720
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:372 ; 4-byte Folded Spill
	ds_load_u8 v1, v235 offset:4992
	ds_load_u8 v2, v235 offset:4864
	ds_load_u8 v153, v235 offset:4880
	ds_load_u8 v3, v235 offset:4896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:668 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:4912
	v_lshl_or_b32 v136, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:540 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:4848
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:376 ; 4-byte Folded Spill
	ds_load_u8 v150, v235 offset:5008
	ds_load_u8 v3, v235 offset:5024
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:680 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:5040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:548 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:4976
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:384 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:4224
	ds_load_u8 v3, v235 offset:4096
	ds_load_u8 v146, v235 offset:4112
	ds_load_u8 v253, v235 offset:4128
	ds_load_u8 v4, v235 offset:4144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:576 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:4064
	scratch_store_b32 off, v5, off offset:344 ; 4-byte Folded Spill
	ds_load_u8 v176, v235 offset:3472
	ds_load_u8 v5, v235 offset:3488
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v4, off offset:444 ; 4-byte Folded Spill
	ds_load_u8 v126, v235 offset:4240
	ds_load_u8 v249, v235 offset:4256
	ds_load_u8 v4, v235 offset:4272
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v5, off offset:592 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:3440
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:588 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:4208
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:352 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:400 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:4480
	ds_load_u8 v4, v235 offset:4352
	ds_load_u8 v38, v235 offset:4368
	ds_load_u8 v245, v235 offset:4384
	ds_load_u8 v5, v235 offset:4400
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v3, 16, v2
	ds_load_u8 v0, v235 offset:5760
	ds_load_u8 v1, v235 offset:5632
	ds_load_u8 v125, v235 offset:5648
	ds_load_u8 v171, v235 offset:5664
	ds_load_u8 v2, v235 offset:5680
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:616 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:5696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:504 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:5616
	scratch_store_b32 off, v5, off offset:600 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:4336
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:428 ; 4-byte Folded Spill
	ds_load_u8 v123, v235 offset:5776
	ds_load_u8 v169, v235 offset:5792
	ds_load_u8 v2, v235 offset:5808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:672 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:5824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:552 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:5744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:432 ; 4-byte Folded Spill
	ds_load_u8 v1, v235 offset:6016
	ds_load_u8 v2, v235 offset:5888
	ds_load_u8 v114, v235 offset:5904
	ds_load_u8 v158, v235 offset:5920
	ds_load_u8 v3, v235 offset:5936
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:688 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:5952
	v_lshl_or_b32 v138, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:580 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:5872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:436 ; 4-byte Folded Spill
	ds_load_u8 v108, v235 offset:6032
	ds_load_u8 v148, v235 offset:6048
	ds_load_u8 v255, v235 offset:6064
	ds_load_u8 v3, v235 offset:6080
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:596 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:6000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:452 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:5248
	ds_load_u8 v3, v235 offset:5120
	ds_load_u8 v99, v235 offset:5136
	ds_load_u8 v145, v235 offset:5152
	ds_load_u8 v242, v235 offset:5168
	ds_load_u8 v4, v235 offset:5184
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:624 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:5088
	scratch_store_b32 off, v5, off offset:408 ; 4-byte Folded Spill
	ds_load_u8 v37, v235 offset:4496
	ds_load_u8 v244, v235 offset:4512
	ds_load_u8 v5, v235 offset:4528
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v4, off offset:484 ; 4-byte Folded Spill
	ds_load_u8 v90, v235 offset:5264
	ds_load_u8 v132, v235 offset:5280
	ds_load_u8 v241, v235 offset:5296
	ds_load_u8 v4, v235 offset:5312
	s_waitcnt lgkmcnt(4)
	scratch_store_b32 off, v5, off offset:612 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:4464
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:636 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:5232
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:412 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:464 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:5504
	ds_load_u8 v4, v235 offset:5376
	ds_load_u8 v55, v235 offset:5392
	ds_load_u8 v131, v235 offset:5408
	ds_load_u8 v239, v235 offset:5424
	ds_load_u8 v5, v235 offset:5440
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v3, 16, v2
	ds_load_u8 v0, v235 offset:6784
	ds_load_u8 v1, v235 offset:6656
	ds_load_u8 v89, v235 offset:6672
	ds_load_u8 v127, v235 offset:6688
	ds_load_u8 v231, v235 offset:6704
	ds_load_u8 v2, v235 offset:6720
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:660 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:6736
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:536 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:6640
	scratch_store_b32 off, v5, off offset:644 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:5360
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:476 ; 4-byte Folded Spill
	ds_load_u8 v77, v235 offset:6800
	ds_load_u8 v106, v235 offset:6816
	ds_load_u8 v168, v235 offset:6832
	ds_load_u8 v246, v235 offset:6848
	ds_load_u8 v2, v235 offset:6864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:628 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:6768
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:480 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:7040
	ds_load_u8 v2, v235 offset:6912
	ds_load_u8 v73, v235 offset:6928
	ds_load_u8 v101, v235 offset:6944
	ds_load_u8 v144, v235 offset:6960
	ds_load_u8 v238, v235 offset:6976
	ds_load_u8 v3, v235 offset:6992
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v2, v2, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:656 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:6896
	v_lshl_or_b32 v140, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:488 ; 4-byte Folded Spill
	ds_load_u8 v143, v235 offset:7088
	ds_load_u8 v234, v235 offset:7104
	ds_load_u8 v3, v235 offset:7120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:676 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:7024
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:496 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:6272
	ds_load_u8 v3, v235 offset:6144
	ds_load_u8 v69, v235 offset:6160
	ds_load_u8 v92, v235 offset:6176
	ds_load_u8 v121, v235 offset:6192
	ds_load_u8 v165, v235 offset:6208
	ds_load_u8 v4, v235 offset:6224
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v0, v3, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:684 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:6112
	scratch_store_b32 off, v5, off offset:468 ; 4-byte Folded Spill
	ds_load_u8 v54, v235 offset:5520
	ds_load_u8 v128, v235 offset:5536
	ds_load_u8 v236, v235 offset:5552
	ds_load_u8 v5, v235 offset:5568
	s_waitcnt lgkmcnt(4)
	scratch_store_b32 off, v4, off offset:620 ; 4-byte Folded Spill
	ds_load_u8 v67, v235 offset:6288
	ds_load_u8 v91, v235 offset:6304
	ds_load_u8 v119, v235 offset:6320
	ds_load_u8 v167, v235 offset:6336
	ds_load_u8 v4, v235 offset:6352
	s_waitcnt lgkmcnt(5)
	scratch_store_b32 off, v5, off offset:652 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:5488
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:696 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:6256
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:472 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:508 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:6528
	ds_load_u8 v4, v235 offset:6400
	ds_load_u8 v64, v235 offset:6416
	ds_load_u8 v87, v235 offset:6432
	ds_load_u8 v117, v235 offset:6448
	ds_load_u8 v156, v235 offset:6464
	ds_load_u8 v252, v235 offset:6480
	ds_load_u8 v5, v235 offset:6384
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v3, 16, v0
	ds_load_u8 v1, v235 offset:7808
	ds_load_u8 v2, v235 offset:7680
	ds_load_u8 v49, v235 offset:7696
	ds_load_u8 v81, v235 offset:7712
	ds_load_u8 v118, v235 offset:7728
	ds_load_u8 v151, v235 offset:7744
	ds_load_u8 v243, v235 offset:7760
	ds_load_u8 v0, v235 offset:7776
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:640 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:7664
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	ds_load_u8 v48, v235 offset:7824
	ds_load_u8 v80, v235 offset:7840
	ds_load_u8 v94, v235 offset:7856
	ds_load_u8 v120, v235 offset:7872
	ds_load_u8 v157, v235 offset:7888
	ds_load_u8 v0, v235 offset:7904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:7792
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:8064
	ds_load_u8 v3, v235 offset:7936
	ds_load_u8 v44, v235 offset:7952
	ds_load_u8 v66, v235 offset:7968
	ds_load_u8 v104, v235 offset:7984
	ds_load_u8 v115, v235 offset:8000
	ds_load_u8 v149, v235 offset:8016
	ds_load_u8 v240, v235 offset:8032
	ds_load_u8 v0, v235 offset:7920
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v235 offset:7296
	ds_load_u8 v4, v235 offset:7168
	ds_load_u8 v39, v235 offset:7184
	ds_load_u8 v59, v235 offset:7200
	ds_load_u8 v76, v235 offset:7216
	ds_load_u8 v103, v235 offset:7232
	ds_load_u8 v130, v235 offset:7248
	ds_load_u8 v166, v235 offset:7264
	ds_load_u8 v159, v235 offset:7136
	ds_load_u8 v36, v235 offset:7312
	ds_load_u8 v56, v235 offset:7328
	ds_load_u8 v75, v235 offset:7344
	ds_load_u8 v98, v235 offset:7360
	ds_load_u8 v124, v235 offset:7376
	v_lshl_or_b32 v142, v2, 16, v1
	s_waitcnt lgkmcnt(14)
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	ds_load_u8 v42, v235 offset:8080
	ds_load_u8 v68, v235 offset:8096
	ds_load_u8 v83, v235 offset:8112
	ds_load_u8 v111, v235 offset:8128
	ds_load_u8 v147, v235 offset:8144
	ds_load_u8 v237, v235 offset:8160
	ds_load_u8 v0, v235 offset:8048
	scratch_store_b32 off, v5, off offset:512 ; 4-byte Folded Spill
	ds_load_u8 v53, v235 offset:6544
	ds_load_u8 v85, v235 offset:6560
	ds_load_u8 v116, v235 offset:6576
	ds_load_u8 v154, v235 offset:6592
	ds_load_u8 v250, v235 offset:6608
	ds_load_u8 v5, v235 offset:6512
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v164, v235 offset:7392
	ds_load_u8 v0, v235 offset:7280
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v5, off offset:520 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:7552
	ds_load_u8 v5, v235 offset:7424
	ds_load_u8 v35, v235 offset:7440
	ds_load_u8 v52, v235 offset:7456
	ds_load_u8 v74, v235 offset:7472
	ds_load_u8 v97, v235 offset:7488
	ds_load_u8 v122, v235 offset:7504
	ds_load_u8 v155, v235 offset:7520
	ds_load_u8 v251, v235 offset:7408
	ds_load_u8 v34, v235 offset:7568
	ds_load_u8 v51, v235 offset:7584
	ds_load_u8 v72, v235 offset:7600
	ds_load_u8 v95, v235 offset:7616
	ds_load_u8 v160, v235 offset:7632
	ds_load_u8 v152, v235 offset:7648
	ds_load_u8 v247, v235 offset:7536
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v4, 16, v3
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	scratch_load_b32 v0, off, off offset:728 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[30:31], v0 offset:8192
	scratch_load_b32 v0, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[30:31], v[20:27] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[32:33], v0 offset:8192
	scratch_load_b32 v0, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[32:33], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[28:29], v0 offset:8192
	scratch_load_b32 v0, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[28:29], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[62:63], v0 offset:8192
	scratch_load_b32 v0, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[62:63], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[60:61], v0 offset:8192
	scratch_load_b32 v0, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[135:136], v[60:61], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[57:58], v0 offset:8192
	scratch_load_b32 v0, off, off offset:752 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[57:58], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[45:46], v0 offset:8192
	scratch_load_b32 v0, off, off offset:756 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[45:46], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[205:206], v0 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[141:142], v[205:206], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v2
	v_cvt_f32_i32_e32 v142, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v1, v207, v17, 0xc0c0004
	v_perm_b32 v2, v203, v204, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v3
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v3, v201, v202, 0xc0c0004
	v_lshl_or_b32 v10, v2, 16, v1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v4
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v4, v199, v200, 0xc0c0004
	ds_load_u8 v1, v235 offset:1552
	ds_load_u8 v2, v235 offset:1680
	ds_load_u8 v199, v235 offset:1696
	ds_load_u8 v200, v235 offset:1712
	ds_load_u8 v201, v235 offset:1728
	ds_load_u8 v202, v235 offset:1744
	ds_load_u8 v203, v235 offset:1760
	ds_load_u8 v204, v235 offset:1568
	ds_load_u8 v207, v235 offset:1584
	ds_load_u8 v70, v235 offset:1600
	ds_load_u8 v93, v235 offset:1616
	ds_load_u8 v113, v235 offset:1632
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v4, 16, v3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	ds_load_u8 v2, v235 offset:1808
	ds_load_u8 v3, v235 offset:1936
	ds_load_u8 v19, v235 offset:1952
	ds_load_u8 v50, v235 offset:1968
	ds_load_u8 v78, v235 offset:1984
	ds_load_u8 v88, v235 offset:2000
	ds_load_u8 v18, v235 offset:1824
	ds_load_u8 v47, v235 offset:1840
	ds_load_u8 v79, v235 offset:1856
	ds_load_u8 v102, v235 offset:1872
	ds_load_u8 v110, v235 offset:1888
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v6
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v7
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v8
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v12, v2, 16, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:516
	scratch_load_b32 v2, off, off offset:556
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:1040
	ds_load_u8 v4, v235 offset:1168
	ds_load_u8 v17, v235 offset:1184
	ds_load_u8 v65, v235 offset:1200
	ds_load_u8 v82, v235 offset:1216
	ds_load_u8 v84, v235 offset:1232
	ds_load_u8 v107, v235 offset:1248
	ds_load_u8 v0, v235 offset:1056
	ds_load_u8 v43, v235 offset:1072
	ds_load_u8 v86, v235 offset:1088
	ds_load_u8 v105, v235 offset:1104
	ds_load_u8 v112, v235 offset:1120
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	ds_load_u8 v4, v235 offset:1296
	ds_load_u8 v5, v235 offset:1424
	ds_load_u8 v100, v235 offset:1440
	ds_load_u8 v41, v235 offset:1456
	ds_load_u8 v109, v235 offset:1472
	ds_load_u8 v138, v235 offset:1488
	ds_load_u8 v139, v235 offset:1504
	ds_load_u8 v230, v235 offset:1312
	ds_load_u8 v40, v235 offset:1328
	ds_load_u8 v134, v235 offset:1344
	ds_load_u8 v140, v235 offset:1360
	ds_load_u8 v141, v235 offset:1376
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v0, v0, v17, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v4, v4, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v4, 16, v3
	v_perm_b32 v4, v224, v222, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:564
	scratch_load_b32 v3, off, off offset:572
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	v_perm_b32 v3, v227, v225, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v14, v2, 16, v1
	v_lshl_or_b32 v13, v4, 16, v3
	v_perm_b32 v1, v220, v198, 0xc0c0004
	v_perm_b32 v2, v194, v193, 0xc0c0004
	v_perm_b32 v3, v185, v182, 0xc0c0004
	v_perm_b32 v4, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v16, v2, 16, v1
	v_perm_b32 v1, v172, v161, 0xc0c0004
	v_lshl_or_b32 v15, v4, 16, v3
	v_perm_b32 v2, v153, v150, 0xc0c0004
	v_perm_b32 v3, v146, v126, 0xc0c0004
	v_perm_b32 v4, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v38, v2, 16, v1
	v_perm_b32 v1, v125, v123, 0xc0c0004
	v_lshl_or_b32 v37, v4, 16, v3
	v_perm_b32 v2, v114, v108, 0xc0c0004
	v_perm_b32 v3, v99, v90, 0xc0c0004
	v_perm_b32 v4, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v55, v2, 16, v1
	v_perm_b32 v1, v89, v77, 0xc0c0004
	v_lshl_or_b32 v54, v4, 16, v3
	v_perm_b32 v2, v73, v71, 0xc0c0004
	v_perm_b32 v3, v69, v67, 0xc0c0004
	v_perm_b32 v4, v64, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v90, v2, 16, v1
	v_perm_b32 v1, v49, v48, 0xc0c0004
	v_lshl_or_b32 v89, v4, 16, v3
	v_perm_b32 v2, v44, v42, 0xc0c0004
	v_perm_b32 v3, v39, v36, 0xc0c0004
	v_perm_b32 v4, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v126, v2, 16, v1
	v_lshl_or_b32 v125, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[30:31], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[32:33], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[28:29], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[62:63], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[37:38], v[60:61], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[54:55], v[57:58], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[89:90], v[45:46], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[125:126], v[205:206], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v90, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v89, v2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:104
	scratch_load_b32 v2, off, off offset:416
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v125, v3
	v_cvt_f32_i32_e32 v137, v4
	v_cvt_f32_i32_e32 v114, v5
	v_cvt_f32_i32_e32 v126, v6
	v_cvt_f32_i32_e32 v136, v7
	v_cvt_f32_i32_e32 v135, v8
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:420
	scratch_load_b32 v3, off, off offset:424
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:440
	scratch_load_b32 v4, off, off offset:448
	v_lshl_or_b32 v10, v2, 16, v1
	v_perm_b32 v1, v204, v199, 0xc0c0004
	v_perm_b32 v2, v18, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:456
	scratch_load_b32 v5, off, off offset:460
	s_waitcnt vmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v4, 16, v3
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v230, v100, 0xc0c0004
	v_lshl_or_b32 v11, v3, 16, v0
	ds_load_u8 v0, v235 offset:2592
	ds_load_u8 v1, v235 offset:2720
	ds_load_u8 v17, v235 offset:2736
	ds_load_u8 v38, v235 offset:2752
	ds_load_u8 v39, v235 offset:2768
	ds_load_u8 v100, v235 offset:2784
	ds_load_u8 v34, v235 offset:2608
	ds_load_u8 v42, v235 offset:2624
	ds_load_u8 v77, v235 offset:2640
	ds_load_u8 v99, v235 offset:2656
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	ds_load_u8 v1, v235 offset:2848
	ds_load_u8 v2, v235 offset:2976
	ds_load_u8 v35, v235 offset:2992
	ds_load_u8 v67, v235 offset:3008
	ds_load_u8 v108, v235 offset:3024
	ds_load_u8 v44, v235 offset:2864
	ds_load_u8 v150, v235 offset:2880
	ds_load_u8 v153, v235 offset:2896
	ds_load_u8 v161, v235 offset:2912
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	ds_load_u8 v2, v235 offset:2080
	ds_load_u8 v3, v235 offset:2208
	ds_load_u8 v71, v235 offset:2224
	ds_load_u8 v172, v235 offset:2240
	ds_load_u8 v176, v235 offset:2256
	ds_load_u8 v177, v235 offset:2272
	ds_load_u8 v182, v235 offset:2096
	ds_load_u8 v185, v235 offset:2112
	ds_load_u8 v193, v235 offset:2128
	ds_load_u8 v194, v235 offset:2144
	v_lshl_or_b32 v14, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:500
	scratch_load_b32 v1, off, off offset:528
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v235 offset:2336
	ds_load_u8 v4, v235 offset:2464
	ds_load_u8 v198, v235 offset:2480
	ds_load_u8 v199, v235 offset:2496
	ds_load_u8 v204, v235 offset:2512
	ds_load_u8 v220, v235 offset:2528
	ds_load_u8 v222, v235 offset:2352
	ds_load_u8 v224, v235 offset:2368
	ds_load_u8 v225, v235 offset:2384
	ds_load_u8 v227, v235 offset:2400
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:532
	scratch_load_b32 v2, off, off offset:544
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:560
	scratch_load_b32 v3, off, off offset:568
	v_lshl_or_b32 v16, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:604
	scratch_load_b32 v1, off, off offset:664
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:584
	scratch_load_b32 v4, off, off offset:592
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:668
	scratch_load_b32 v2, off, off offset:680
	v_perm_b32 v3, v245, v244, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	v_perm_b32 v2, v253, v249, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v37, v1, 16, v0
	v_lshl_or_b32 v36, v3, 16, v2
	v_perm_b32 v0, v171, v169, 0xc0c0004
	v_perm_b32 v1, v158, v148, 0xc0c0004
	v_perm_b32 v2, v145, v132, 0xc0c0004
	v_perm_b32 v3, v131, v128, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v49, v1, 16, v0
	v_perm_b32 v0, v127, v106, 0xc0c0004
	v_lshl_or_b32 v48, v3, 16, v2
	v_perm_b32 v1, v101, v96, 0xc0c0004
	v_perm_b32 v2, v92, v91, 0xc0c0004
	v_perm_b32 v3, v87, v85, 0xc0c0004
	v_mov_b32_e32 v85, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v54, v1, 16, v0
	v_perm_b32 v0, v81, v80, 0xc0c0004
	v_lshl_or_b32 v53, v3, 16, v2
	v_perm_b32 v1, v66, v68, 0xc0c0004
	v_perm_b32 v2, v59, v56, 0xc0c0004
	v_perm_b32 v3, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v56, v1, 16, v0
	v_lshl_or_b32 v55, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[30:31], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[32:33], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[28:29], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[62:63], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[60:61], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[48:49], v[57:58], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[53:54], v[45:46], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[205:206], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v19, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:108
	scratch_load_b32 v1, off, off offset:356
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v54, v2
	v_cvt_f32_i32_e32 v253, v3
	v_cvt_f32_i32_e32 v245, v4
	v_cvt_f32_i32_e32 v244, v5
	v_cvt_f32_i32_e32 v249, v6
	v_cvt_f32_i32_e32 v18, v7
	v_cvt_f32_i32_e32 v53, v8
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:360
	scratch_load_b32 v2, off, off offset:368
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:380
	scratch_load_b32 v3, off, off offset:392
	v_lshl_or_b32 v10, v1, 16, v0
	v_perm_b32 v0, v207, v200, 0xc0c0004
	v_perm_b32 v1, v47, v50, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v207, off, off offset:68
	scratch_load_b32 v200, off, off offset:40
	v_lshl_or_b32 v12, v1, 16, v0
	v_perm_b32 v0, v34, v17, 0xc0c0004
	v_perm_b32 v1, v44, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v1, 16, v0
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:396
	scratch_load_b32 v4, off, off offset:404
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v3, 16, v2
	v_perm_b32 v3, v40, v41, 0xc0c0004
	ds_load_u8 v0, v235 offset:3632
	ds_load_u8 v1, v235 offset:3760
	ds_load_u8 v17, v235 offset:3776
	ds_load_u8 v52, v235 offset:3792
	ds_load_u8 v81, v235 offset:3808
	ds_load_u8 v41, v235 offset:3648
	ds_load_u8 v69, v235 offset:3664
	ds_load_u8 v87, v235 offset:3680
	v_perm_b32 v2, v43, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v3, 16, v2
	v_perm_b32 v2, v182, v71, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v3, v222, v198, 0xc0c0004
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v182, off, off offset:16
	scratch_load_b32 v222, off, off offset:76
	scratch_load_b32 v198, off, off offset:32
	v_lshl_or_b32 v13, v3, 16, v2
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	ds_load_u8 v1, v235 offset:3888
	ds_load_u8 v2, v235 offset:4016
	ds_load_u8 v47, v235 offset:4032
	ds_load_u8 v91, v235 offset:4048
	ds_load_u8 v50, v235 offset:3904
	ds_load_u8 v92, v235 offset:3920
	ds_load_u8 v96, v235 offset:3936
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	ds_load_u8 v2, v235 offset:3120
	ds_load_u8 v3, v235 offset:3248
	ds_load_u8 v51, v235 offset:3264
	ds_load_u8 v101, v235 offset:3280
	ds_load_u8 v106, v235 offset:3296
	ds_load_u8 v123, v235 offset:3136
	ds_load_u8 v127, v235 offset:3152
	ds_load_u8 v128, v235 offset:3168
	v_lshl_or_b32 v16, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:492
	scratch_load_b32 v1, off, off offset:524
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v235 offset:3376
	ds_load_u8 v4, v235 offset:3504
	ds_load_u8 v131, v235 offset:3520
	ds_load_u8 v132, v235 offset:3536
	ds_load_u8 v146, v235 offset:3552
	ds_load_u8 v148, v235 offset:3392
	ds_load_u8 v158, v235 offset:3408
	ds_load_u8 v171, v235 offset:3424
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:540
	scratch_load_b32 v2, off, off offset:548
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:576
	scratch_load_b32 v3, off, off offset:588
	v_lshl_or_b32 v37, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:616
	scratch_load_b32 v1, off, off offset:672
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:600
	scratch_load_b32 v4, off, off offset:612
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	scratch_load_b32 v1, off, off offset:688 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v36, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v255, 0xc0c0004
	v_perm_b32 v2, v242, v241, 0xc0c0004
	v_perm_b32 v3, v239, v236, 0xc0c0004
	v_lshl_or_b32 v35, v1, 16, v0
	v_perm_b32 v0, v231, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v34, v3, 16, v2
	v_perm_b32 v1, v144, v143, 0xc0c0004
	v_perm_b32 v2, v121, v119, 0xc0c0004
	v_perm_b32 v3, v117, v116, 0xc0c0004
	v_lshl_or_b32 v44, v1, 16, v0
	v_perm_b32 v0, v118, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v43, v3, 16, v2
	v_perm_b32 v1, v104, v83, 0xc0c0004
	v_perm_b32 v2, v76, v75, 0xc0c0004
	v_perm_b32 v3, v74, v72, 0xc0c0004
	v_lshl_or_b32 v49, v1, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[30:31], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[28:29], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[62:63], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[60:61], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[34:35], v[57:58], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[48:49], v[205:206], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v145, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:112
	scratch_load_b32 v1, off, off offset:296
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v231, v2
	v_cvt_f32_i32_e32 v71, v3
	v_cvt_f32_i32_e32 v143, v4
	v_cvt_f32_i32_e32 v133, v5
	v_cvt_f32_i32_e32 v56, v6
	v_cvt_f32_i32_e32 v55, v7
	v_cvt_f32_i32_e32 v40, v8
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:300
	scratch_load_b32 v2, off, off offset:304
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:324
	scratch_load_b32 v3, off, off offset:328
	v_lshl_or_b32 v10, v1, 16, v0
	v_perm_b32 v0, v70, v201, 0xc0c0004
	v_perm_b32 v1, v79, v78, 0xc0c0004
	scratch_load_b32 v201, off, off offset:44 ; 4-byte Folded Reload
	v_lshl_or_b32 v12, v1, 16, v0
	v_perm_b32 v0, v42, v38, 0xc0c0004
	v_perm_b32 v1, v150, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v1, 16, v0
	v_perm_b32 v0, v41, v17, 0xc0c0004
	v_perm_b32 v1, v50, v47, 0xc0c0004
	v_lshl_or_b32 v16, v1, 16, v0
	ds_load_u8 v0, v235 offset:4672
	ds_load_u8 v1, v235 offset:4800
	ds_load_u8 v17, v235 offset:4816
	ds_load_u8 v70, v235 offset:4832
	ds_load_u8 v38, v235 offset:4688
	ds_load_u8 v72, v235 offset:4704
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:340
	scratch_load_b32 v4, off, off offset:348
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v3, 16, v2
	v_perm_b32 v2, v86, v82, 0xc0c0004
	v_perm_b32 v3, v134, v109, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:96
	scratch_load_b32 v168, off, off offset:92
	v_lshl_or_b32 v11, v3, 16, v2
	v_perm_b32 v2, v185, v172, 0xc0c0004
	v_perm_b32 v3, v224, v199, 0xc0c0004
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v224, off, off offset:80
	scratch_load_b32 v199, off, off offset:36
	scratch_load_b32 v185, off, off offset:20
	scratch_load_b32 v172, off, off offset:4
	v_lshl_or_b32 v13, v3, 16, v2
	v_perm_b32 v2, v123, v51, 0xc0c0004
	v_perm_b32 v3, v148, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v3, 16, v2
	ds_load_u8 v1, v235 offset:4928
	ds_load_u8 v2, v235 offset:5056
	ds_load_u8 v42, v235 offset:5072
	ds_load_u8 v59, v235 offset:4944
	ds_load_u8 v68, v235 offset:4960
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	ds_load_u8 v2, v235 offset:4160
	ds_load_u8 v3, v235 offset:4288
	ds_load_u8 v64, v235 offset:4304
	ds_load_u8 v73, v235 offset:4320
	ds_load_u8 v66, v235 offset:4176
	ds_load_u8 v74, v235 offset:4192
	v_lshl_or_b32 v35, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:504
	scratch_load_b32 v1, off, off offset:552
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v235 offset:4416
	ds_load_u8 v4, v235 offset:4544
	ds_load_u8 v67, v235 offset:4560
	ds_load_u8 v75, v235 offset:4576
	ds_load_u8 v82, v235 offset:4432
	ds_load_u8 v86, v235 offset:4448
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:580
	scratch_load_b32 v2, off, off offset:596
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:624
	scratch_load_b32 v3, off, off offset:636
	v_lshl_or_b32 v37, v1, 16, v0
	scratch_load_b32 v0, off, off offset:660 ; 4-byte Folded Reload
	v_perm_b32 v1, v238, v234, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:644
	scratch_load_b32 v4, off, off offset:652
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v246, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v1, 16, v0
	v_perm_b32 v0, v151, v120, 0xc0c0004
	v_perm_b32 v1, v115, v111, 0xc0c0004
	v_lshl_or_b32 v49, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v36, v3, 16, v2
	v_perm_b32 v2, v165, v167, 0xc0c0004
	v_perm_b32 v3, v156, v154, 0xc0c0004
	v_lshl_or_b32 v43, v3, 16, v2
	v_perm_b32 v2, v103, v98, 0xc0c0004
	v_perm_b32 v3, v97, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[30:31], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[28:29], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[62:63], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[34:35], v[60:61], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[57:58], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[48:49], v[205:206], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v131, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:116
	scratch_load_b32 v1, off, off offset:232
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v50, v2
	v_cvt_f32_i32_e32 v51, v3
	v_cvt_f32_i32_e32 v47, v4
	v_cvt_f32_i32_e32 v49, v5
	v_cvt_f32_i32_e32 v48, v6
	v_cvt_f32_i32_e32 v44, v7
	v_cvt_f32_i32_e32 v41, v8
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:244
	scratch_load_b32 v2, off, off offset:248
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:264
	scratch_load_b32 v3, off, off offset:268
	v_lshl_or_b32 v10, v1, 16, v0
	v_perm_b32 v0, v93, v202, 0xc0c0004
	v_perm_b32 v1, v102, v88, 0xc0c0004
	scratch_load_b32 v202, off, off offset:48 ; 4-byte Folded Reload
	v_lshl_or_b32 v12, v1, 16, v0
	v_perm_b32 v0, v77, v39, 0xc0c0004
	v_perm_b32 v1, v153, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v1, 16, v0
	v_perm_b32 v0, v69, v52, 0xc0c0004
	v_perm_b32 v1, v92, v91, 0xc0c0004
	v_lshl_or_b32 v16, v1, 16, v0
	v_perm_b32 v0, v38, v17, 0xc0c0004
	v_perm_b32 v1, v59, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v1, 16, v0
	ds_load_u8 v0, v235 offset:5712
	ds_load_u8 v1, v235 offset:5840
	ds_load_u8 v59, v235 offset:5856
	ds_load_u8 v77, v235 offset:5728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:276
	scratch_load_b32 v4, off, off offset:288
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v3, 16, v2
	v_perm_b32 v2, v105, v84, 0xc0c0004
	v_perm_b32 v3, v140, v138, 0xc0c0004
	v_lshl_or_b32 v11, v3, 16, v2
	v_perm_b32 v2, v193, v176, 0xc0c0004
	v_perm_b32 v3, v225, v204, 0xc0c0004
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v193, off, off offset:24
	scratch_load_b32 v176, off, off offset:8
	scratch_load_b32 v225, off, off offset:84
	scratch_load_b32 v204, off, off offset:56
	v_lshl_or_b32 v13, v3, 16, v2
	v_perm_b32 v2, v127, v101, 0xc0c0004
	v_perm_b32 v3, v158, v132, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v158, off, off offset:704
	scratch_load_b32 v127, off, off offset:88
	v_lshl_or_b32 v15, v3, 16, v2
	v_perm_b32 v2, v66, v64, 0xc0c0004
	v_perm_b32 v3, v82, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v3, 16, v2
	ds_load_u8 v1, v235 offset:6096
	ds_load_u8 v2, v235 offset:5968
	ds_load_u8 v78, v235 offset:5984
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v235 offset:5200
	ds_load_u8 v3, v235 offset:5328
	ds_load_u8 v79, v235 offset:5344
	ds_load_u8 v80, v235 offset:5216
	v_lshl_or_b32 v37, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:536
	scratch_load_b32 v1, off, off offset:628
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v235 offset:5456
	ds_load_u8 v4, v235 offset:5584
	ds_load_u8 v82, v235 offset:5600
	ds_load_u8 v84, v235 offset:5472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:656
	scratch_load_b32 v2, off, off offset:676
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:684
	scratch_load_b32 v3, off, off offset:696
	v_lshl_or_b32 v39, v1, 16, v0
	v_perm_b32 v0, v243, v157, 0xc0c0004
	v_perm_b32 v1, v149, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	v_perm_b32 v3, v252, v250, 0xc0c0004
	v_lshl_or_b32 v38, v3, 16, v2
	v_perm_b32 v2, v130, v124, 0xc0c0004
	v_perm_b32 v3, v122, v160, 0xc0c0004
	v_mov_b32_e32 v160, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[30:31], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[28:29], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[62:63], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[34:35], v[60:61], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[57:58], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[38:39], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[42:43], v[205:206], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v69, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:148
	scratch_load_b32 v1, off, off offset:176
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v67, v2
	v_cvt_f32_i32_e32 v65, v3
	v_cvt_f32_i32_e32 v64, v4
	v_cvt_f32_i32_e32 v42, v8
	v_cvt_f32_i32_e32 v66, v5
	v_cvt_f32_i32_e32 v52, v6
	v_cvt_f32_i32_e32 v43, v7
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:184
	scratch_load_b32 v2, off, off offset:188
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:196
	scratch_load_b32 v3, off, off offset:208
	v_lshl_or_b32 v9, v1, 16, v0
	v_perm_b32 v0, v113, v203, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v203, off, off offset:52
	scratch_load_b32 v1, off, off offset:332
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:216
	scratch_load_b32 v4, off, off offset:224
	s_waitcnt vmcnt(2)
	v_perm_b32 v1, v110, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v1, 16, v0
	scratch_load_b32 v1, off, off offset:388 ; 4-byte Folded Reload
	v_perm_b32 v0, v99, v100, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_lshl_or_b32 v8, v3, 16, v2
	v_perm_b32 v2, v112, v107, 0xc0c0004
	v_perm_b32 v3, v141, v139, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v161, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v10, v3, 16, v2
	v_perm_b32 v2, v194, v177, 0xc0c0004
	v_perm_b32 v3, v227, v220, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v194, off, off offset:28
	scratch_load_b32 v177, off, off offset:12
	v_lshl_or_b32 v13, v1, 16, v0
	scratch_load_b32 v1, off, off offset:444 ; 4-byte Folded Reload
	v_perm_b32 v0, v87, v81, 0xc0c0004
	v_lshl_or_b32 v12, v3, 16, v2
	v_perm_b32 v2, v128, v106, 0xc0c0004
	v_perm_b32 v3, v171, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v3, 16, v2
	v_perm_b32 v2, v74, v73, 0xc0c0004
	v_perm_b32 v3, v86, v75, 0xc0c0004
	v_lshl_or_b32 v16, v3, 16, v2
	v_perm_b32 v2, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v84, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v3, 16, v2
	ds_load_u8 v2, v235 offset:6368
	ds_load_u8 v3, v235 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v235 offset:6624
	ds_load_u8 v4, v235 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v36, v3, 16, v2
	v_perm_b32 v2, v166, v164, 0xc0c0004
	v_perm_b32 v3, v155, v152, 0xc0c0004
	v_lshl_or_b32 v38, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v96, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v1, 16, v0
	scratch_load_b32 v1, off, off offset:484 ; 4-byte Folded Reload
	v_perm_b32 v0, v72, v70, 0xc0c0004
	v_mov_b32_e32 v70, v162
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v68, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v1, 16, v0
	scratch_load_b32 v1, off, off offset:620 ; 4-byte Folded Reload
	v_perm_b32 v0, v77, v59, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v78, v1, 0xc0c0004
	v_lshl_or_b32 v35, v1, 16, v0
	ds_load_u8 v0, v235 offset:6880
	ds_load_u8 v1, v235 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v235 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:640
	scratch_load_b32 v1, off, off offset:700
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	v_perm_b32 v1, v240, v237, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v1, 16, v0
	v_wmma_i32_16x16x16_iu4 v[0:7], v[8:9], v[30:31], v[20:27] neg_lo:[1,1,0]
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v9, off, off offset:160
	scratch_load_b32 v220, off, off offset:72
	scratch_load_b32 v171, off, off
	v_wmma_i32_16x16x16_iu4 v[0:7], v[10:11], v[32:33], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[12:13], v[28:29], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[14:15], v[62:63], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[16:17], v[60:61], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[34:35], v[57:58], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[36:37], v[45:46], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[38:39], v[205:206], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v38, v0
	v_cvt_f32_i32_e32 v37, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:164
	scratch_load_b32 v1, off, off offset:168
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v36, v2
	v_cvt_f32_i32_e32 v35, v3
	v_cvt_f32_i32_e32 v34, v4
	v_cvt_f32_i32_e32 v8, v5
	v_cvt_f32_i32_e32 v5, v7
	v_add_nc_u32_e32 v7, 0, v158
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v7, v7
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:172
	scratch_load_b32 v2, off, off offset:180
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:152
	scratch_load_b32 v3, off, off offset:156
	v_lshl_or_b32 v0, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_add_nc_u32_e32 v3, 0, v160
	v_add_nc_u32_e32 v4, 0, v70
	ds_load_u8 v3, v3
	ds_load_u8 v4, v4
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v9, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:228
	scratch_load_b32 v3, off, off offset:236
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:200
	scratch_load_b32 v9, off, off offset:240
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v9, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:204
	scratch_load_b32 v10, off, off offset:212
	v_lshl_or_b32 v2, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	scratch_load_b32 v10, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_perm_b32 v4, v10, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v3, v4, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[0:1], v[30:31], v[20:27] neg_lo:[1,1,0]
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:280
	scratch_load_b32 v1, off, off offset:284
	scratch_load_b32 v20, off, off offset:320
	v_wmma_i32_16x16x16_iu4 v[9:16], v[2:3], v[32:33], v[9:16] neg_lo:[1,1,0]
	s_waitcnt vmcnt(1)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:252
	scratch_load_b32 v2, off, off offset:292
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:256
	scratch_load_b32 v3, off, off offset:260
	v_lshl_or_b32 v0, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	scratch_load_b32 v3, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[9:16], v[0:1], v[28:29], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:336
	scratch_load_b32 v1, off, off offset:344
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:308
	scratch_load_b32 v2, off, off offset:352
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:312
	scratch_load_b32 v3, off, off offset:316
	v_lshl_or_b32 v1, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v0, v3, 0xc0c0004
	scratch_load_b32 v0, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v4, v0
	scratch_load_b32 v0, off, off offset:764 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v20, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[62:63], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:400
	scratch_load_b32 v2, off, off offset:408
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:364
	scratch_load_b32 v3, off, off offset:412
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:372
	scratch_load_b32 v4, off, off offset:376
	v_lshl_or_b32 v1, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	scratch_load_b32 v4, off, off offset:384 ; 4-byte Folded Reload
	ds_load_u8 v7, v0
	scratch_load_b32 v0, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_perm_b32 v4, v4, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[60:61], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:464
	scratch_load_b32 v2, off, off offset:468
	v_mov_b32_e32 v60, v85
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:428
	scratch_load_b32 v3, off, off offset:472
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:432
	scratch_load_b32 v4, off, off offset:436
	v_lshl_or_b32 v1, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	scratch_load_b32 v4, off, off offset:452 ; 4-byte Folded Reload
	ds_load_u8 v17, v0
	scratch_load_b32 v0, off, off offset:772 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_perm_b32 v4, v4, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[57:58], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:508
	scratch_load_b32 v2, off, off offset:512
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:476
	scratch_load_b32 v3, off, off offset:520
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:480
	scratch_load_b32 v4, off, off offset:488
	v_lshl_or_b32 v1, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	scratch_load_b32 v4, off, off offset:496 ; 4-byte Folded Reload
	ds_load_u8 v28, v0
	scratch_load_b32 v0, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_perm_b32 v4, v4, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[45:46], v[9:16] neg_lo:[1,1,0]
	scratch_load_b32 v1, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v1, v251, 0xc0c0004
	scratch_load_b32 v1, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v247, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:632
	scratch_load_b32 v2, off, off offset:648
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v1, v2, 0xc0c0004
	scratch_load_b32 v1, off, off offset:192 ; 4-byte Folded Reload
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_perm_b32 v1, v1, v0, 0xc0c0004
	v_lshl_or_b32 v0, v20, 16, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v1, 16, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[0:1], v[205:206], v[9:16] neg_lo:[1,1,0]
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:716
	scratch_load_b32 v206, off, off offset:64
	scratch_load_b32 v205, off, off offset:60
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v10
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v14, v16
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(2)
	v_cmp_lt_i32_e64 s0, s35, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v1, 1, v85
	s_add_i32 s35, s35, 64
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v1, s41, v1
	s_clause 0x1f
	buffer_load_u16 v7, v1, s[36:39], 0 offen
	buffer_load_u16 v16, v1, s[36:39], 0 offen offset:4
	buffer_load_u16 v17, v1, s[36:39], 0 offen offset:8
	buffer_load_u16 v20, v1, s[36:39], 0 offen offset:12
	buffer_load_u16 v21, v1, s[36:39], 0 offen offset:16
	buffer_load_u16 v22, v1, s[36:39], 0 offen offset:20
	buffer_load_u16 v23, v1, s[36:39], 0 offen offset:24
	buffer_load_u16 v24, v1, s[36:39], 0 offen offset:28
	buffer_load_u16 v25, v1, s[36:39], 0 offen offset:32
	buffer_load_u16 v26, v1, s[36:39], 0 offen offset:36
	buffer_load_u16 v27, v1, s[36:39], 0 offen offset:40
	buffer_load_u16 v28, v1, s[36:39], 0 offen offset:44
	buffer_load_u16 v29, v1, s[36:39], 0 offen offset:48
	buffer_load_u16 v30, v1, s[36:39], 0 offen offset:52
	buffer_load_u16 v31, v1, s[36:39], 0 offen offset:56
	buffer_load_u16 v32, v1, s[36:39], 0 offen offset:60
	buffer_load_u16 v33, v1, s[36:39], 0 offen offset:64
	buffer_load_u16 v39, v1, s[36:39], 0 offen offset:68
	buffer_load_u16 v57, v1, s[36:39], 0 offen offset:72
	buffer_load_u16 v58, v1, s[36:39], 0 offen offset:76
	buffer_load_u16 v59, v1, s[36:39], 0 offen offset:80
	buffer_load_u16 v68, v1, s[36:39], 0 offen offset:84
	buffer_load_u16 v73, v1, s[36:39], 0 offen offset:88
	buffer_load_u16 v74, v1, s[36:39], 0 offen offset:92
	buffer_load_u16 v75, v1, s[36:39], 0 offen offset:96
	buffer_load_u16 v77, v1, s[36:39], 0 offen offset:100
	buffer_load_u16 v78, v1, s[36:39], 0 offen offset:104
	buffer_load_u16 v79, v1, s[36:39], 0 offen offset:108
	buffer_load_u16 v80, v1, s[36:39], 0 offen offset:112
	buffer_load_u16 v81, v1, s[36:39], 0 offen offset:116
	buffer_load_u16 v82, v1, s[36:39], 0 offen offset:120
	buffer_load_u16 v84, v1, s[36:39], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v85, v1, s[36:39], 0 offen offset:128
	buffer_load_u16 v86, v1, s[36:39], 0 offen offset:132
	buffer_load_u16 v87, v1, s[36:39], 0 offen offset:136
	buffer_load_u16 v88, v1, s[36:39], 0 offen offset:140
	buffer_load_u16 v91, v1, s[36:39], 0 offen offset:144
	buffer_load_u16 v92, v1, s[36:39], 0 offen offset:148
	buffer_load_u16 v93, v1, s[36:39], 0 offen offset:152
	buffer_load_u16 v94, v1, s[36:39], 0 offen offset:156
	buffer_load_u16 v95, v1, s[36:39], 0 offen offset:160
	buffer_load_u16 v96, v1, s[36:39], 0 offen offset:164
	buffer_load_u16 v97, v1, s[36:39], 0 offen offset:168
	buffer_load_u16 v99, v1, s[36:39], 0 offen offset:172
	buffer_load_u16 v100, v1, s[36:39], 0 offen offset:176
	buffer_load_u16 v101, v1, s[36:39], 0 offen offset:180
	buffer_load_u16 v102, v1, s[36:39], 0 offen offset:184
	buffer_load_u16 v103, v1, s[36:39], 0 offen offset:188
	buffer_load_u16 v104, v1, s[36:39], 0 offen offset:192
	buffer_load_u16 v105, v1, s[36:39], 0 offen offset:196
	buffer_load_u16 v106, v1, s[36:39], 0 offen offset:200
	buffer_load_u16 v108, v1, s[36:39], 0 offen offset:204
	buffer_load_u16 v109, v1, s[36:39], 0 offen offset:208
	buffer_load_u16 v110, v1, s[36:39], 0 offen offset:212
	buffer_load_u16 v111, v1, s[36:39], 0 offen offset:216
	buffer_load_u16 v112, v1, s[36:39], 0 offen offset:220
	buffer_load_u16 v113, v1, s[36:39], 0 offen offset:224
	buffer_load_u16 v115, v1, s[36:39], 0 offen offset:228
	buffer_load_u16 v116, v1, s[36:39], 0 offen offset:232
	buffer_load_u16 v117, v1, s[36:39], 0 offen offset:236
	buffer_load_u16 v118, v1, s[36:39], 0 offen offset:240
	buffer_load_u16 v119, v1, s[36:39], 0 offen offset:244
	buffer_load_u16 v120, v1, s[36:39], 0 offen offset:248
	buffer_load_u16 v121, v1, s[36:39], 0 offen offset:252
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v1, 0x80000000, v127, s0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v122, v129, s[4:7], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[1:4], v1, s[28:31], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s41, s41, s42
	s_cmp_lg_u32 s40, 0
	v_add_nc_u32_e32 v129, 2, v129
	v_add_nc_u32_e32 v127, s43, v127
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v254, v[1:4]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v1, 16, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v142 :: v_dual_lshlrev_b32 v2, 16, v7
	v_dual_mul_f32 v0, v1, v0 :: v_dual_fmac_f32 v205, v3, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v16
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v226, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v3, v1, v3 :: v_dual_lshlrev_b32 v2, 16, v17
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v225, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v224, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v3, v1, v3 :: v_dual_lshlrev_b32 v2, 16, v21
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v223, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v3, v1, v3 :: v_dual_lshlrev_b32 v2, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v222, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v1, v3
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v221, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v3, v1, v3 :: v_dual_lshlrev_b32 v2, 16, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v220, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v90 :: v_dual_lshlrev_b32 v2, 16, v25
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v219, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v89 :: v_dual_lshlrev_b32 v2, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v218, v3, v2 :: v_dual_mul_f32 v3, v1, v125
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v217, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v28
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v216, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v114 :: v_dual_lshlrev_b32 v2, 16, v29
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v215, v3, v2
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v214, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v136 :: v_dual_lshlrev_b32 v2, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v213, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v212, v3, v2 :: v_dual_mul_f32 v3, v1, v19
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v33
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v211, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v39
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v210, v3, v2 :: v_dual_mul_f32 v3, v1, v253
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v57
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v209, v3, v2
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v245 :: v_dual_lshlrev_b32 v2, 16, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v208, v3, v2 :: v_dual_mul_f32 v3, v1, v244
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v59
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v207, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v68
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v206, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v18 :: v_dual_lshlrev_b32 v2, 16, v73
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v203, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v53 :: v_dual_lshlrev_b32 v2, 16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v204, v3, v2 :: v_dual_mul_f32 v3, v1, v145
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v75
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v201, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v77
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v202, v3, v2 :: v_dual_mul_f32 v3, v1, v71
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v78
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v199, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v79
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v200, v3, v2 :: v_dual_mul_f32 v3, v1, v133
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v80
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v197, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v81
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v198, v3, v2 :: v_dual_mul_f32 v3, v1, v55
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v82
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v195, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v84
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v196, v3, v2 :: v_dual_mul_f32 v3, v1, v131
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v85
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v193, v3, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v86
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v194, v3, v2 :: v_dual_mul_f32 v3, v1, v51
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v87
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v191, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v88
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v192, v3, v2 :: v_dual_mul_f32 v3, v1, v49
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v91
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v189, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v92
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v190, v3, v2 :: v_dual_mul_f32 v3, v1, v44
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v93
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v187, v3, v2
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v41 :: v_dual_lshlrev_b32 v2, 16, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v188, v3, v2 :: v_dual_mul_f32 v3, v1, v69
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v95
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v185, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v96
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v186, v3, v2 :: v_dual_mul_f32 v3, v1, v65
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v97
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v183, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v99
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v184, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v66 :: v_dual_lshlrev_b32 v2, 16, v100
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v181, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v101
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v182, v3, v2 :: v_dual_mul_f32 v3, v1, v43
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v102
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v179, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v103
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v180, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v38 :: v_dual_lshlrev_b32 v2, 16, v104
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v177, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v105
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v178, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v36 :: v_dual_lshlrev_b32 v2, 16, v106
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v175, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v108
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v176, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v34 :: v_dual_lshlrev_b32 v2, 16, v109
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v173, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v8 :: v_dual_lshlrev_b32 v2, 16, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v174, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v1, v6 :: v_dual_lshlrev_b32 v2, 16, v111
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v171, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v172, v3, v2
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v113
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v1, v9
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v134, v3, v2
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v170, v0, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v116
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v1, v11
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v228, v2, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v117
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v232, v2, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v118
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v1, v13
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v168, v2, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v233, v2, v0
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v120
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v1, v15
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v229, v2, v0 :: v_dual_mul_f32 v0, v1, v14
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v1, 16, v121
	scratch_load_b32 v14, off, off offset:708 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v248, v0, v1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v14, v0 offset:8192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v162, off, off offset:812
	scratch_load_b32 v56, off, off offset:816
	scratch_load_b32 v47, off, off offset:820
	scratch_load_b32 v48, off, off offset:824
	scratch_load_b32 v49, off, off offset:828
	scratch_load_b32 v50, off, off offset:832
	scratch_load_b32 v51, off, off offset:836
	scratch_load_b32 v13, off, off offset:840
.LBB0_4:                                ; %Flow979
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v25, 16, v162
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, 0
	v_mov_b32_e32 v1, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	ds_load_u8 v0, v235 offset:640
	ds_load_u8 v1, v235 offset:512
	ds_load_u8 v2, v235 offset:896
	ds_load_u8 v3, v235 offset:768
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s4, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v5, v235 offset:128
	ds_load_u8 v6, v235
	ds_load_u8 v7, v235 offset:384
	ds_load_u8 v8, v235 offset:256
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v4, 56, v13
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v235 offset:1664
	ds_load_u8 v11, v235 offset:1536
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshl_or_b32 v36, v56, 6, v4
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v4, v235 offset:1920
	ds_load_u8 v12, v235 offset:1792
	ds_load_u8 v13, v235 offset:1152
	ds_load_u8 v14, v235 offset:1024
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v10, v36, 8, 0
	v_add_nc_u32_e32 v15, 0, v36
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v3, v2, 0xc0c0004
	ds_load_u8 v2, v235 offset:1408
	ds_load_u8 v3, v235 offset:1280
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[21:22], v10 offset:8192
	ds_load_b64 v[23:24], v15 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v235 offset:2688
	ds_load_u8 v16, v235 offset:2560
	ds_load_u8 v17, v235 offset:2944
	ds_load_u8 v18, v235 offset:2816
	v_lshl_or_b32 v10, v1, 16, v0
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v0, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v1, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v11, v9, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v12, v12, v4, 0xc0c0004
	v_lshl_or_b32 v9, v1, 16, v0
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v12, v12, 16, v11
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v3, v2, 0xc0c0004
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_lshl_or_b32 v11, v14, 16, v13
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[9:10], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:2176
	ds_load_u8 v9, v235 offset:2048
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v16, v15, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[28:35], v[11:12], v[21:22], v[28:35] neg_lo:[1,1,0]
	ds_load_u8 v12, v235 offset:2432
	ds_load_u8 v13, v235 offset:2304
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v11, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v11, 16, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v9, v36, 16, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[19:20], v9 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v12, 16, v0
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[9:10], v[19:20], v[28:35] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:3712
	ds_load_u8 v9, v235 offset:3584
	ds_load_u8 v10, v235 offset:3968
	ds_load_u8 v11, v235 offset:3840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v10, 0xc0c0004
	ds_load_u8 v10, v235 offset:3200
	ds_load_u8 v11, v235 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	ds_load_u8 v10, v235 offset:3456
	ds_load_u8 v12, v235 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v0, v36, 24, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[17:18], v0 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[9:10], v[17:18], v[28:35] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:4736
	ds_load_u8 v9, v235 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v235 offset:4992
	ds_load_u8 v10, v235 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v235 offset:4224
	ds_load_u8 v11, v235 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	ds_load_u8 v10, v235 offset:4480
	ds_load_u8 v12, v235 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v0, v36, 32, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[15:16], v0 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[9:10], v[15:16], v[28:35] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:5760
	ds_load_u8 v9, v235 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v235 offset:6016
	ds_load_u8 v10, v235 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v235 offset:5248
	ds_load_u8 v11, v235 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	ds_load_u8 v10, v235 offset:5504
	ds_load_u8 v12, v235 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v0, v36, 40, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[13:14], v0 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[9:10], v[13:14], v[28:35] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:6784
	ds_load_u8 v9, v235 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v235 offset:7040
	ds_load_u8 v10, v235 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v235 offset:6272
	ds_load_u8 v11, v235 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	ds_load_u8 v10, v235 offset:6528
	ds_load_u8 v12, v235 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v0, v36, 48, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v9, v12, 16, v11
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[11:12], v0 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[9:10], v[11:12], v[28:35] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:7808
	ds_load_u8 v9, v235 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v235 offset:8064
	ds_load_u8 v10, v235 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v235 offset:7296
	ds_load_u8 v26, v235 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v26, v10, 0xc0c0004
	ds_load_u8 v26, v235 offset:7552
	ds_load_u8 v27, v235 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_lshl_or_b32 v27, v9, 16, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v0, v36, 56, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v26, v26, 16, v10
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[9:10], v0 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[26:27], v[9:10], v[28:35] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v26, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v28, v32
	v_cvt_f32_i32_e32 v32, v34
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v235 offset:656
	ds_load_u8 v34, v235 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v27, v29
	v_cvt_f32_i32_e32 v29, v33
	v_cvt_f32_i32_e32 v33, v35
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	ds_load_u8 v34, v235 offset:912
	ds_load_u8 v35, v235 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v235 offset:16
	ds_load_u8 v36, v235 offset:144
	v_lshl_or_b32 v43, v34, 16, v0
	ds_load_u8 v0, v235 offset:1680
	ds_load_u8 v34, v235 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	ds_load_u8 v36, v235 offset:400
	ds_load_u8 v37, v235 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v36, 16, v35
	ds_load_u8 v34, v235 offset:1936
	ds_load_u8 v35, v235 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v235 offset:1168
	ds_load_u8 v36, v235 offset:1040
	v_lshl_or_b32 v45, v34, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v235 offset:1424
	ds_load_u8 v37, v235 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v36, 16, v35
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:2704
	ds_load_u8 v42, v235 offset:2576
	v_wmma_i32_16x16x16_iu4 v[34:41], v[44:45], v[21:22], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:2960
	ds_load_u8 v43, v235 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:2192
	ds_load_u8 v44, v235 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:2448
	ds_load_u8 v45, v235 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[19:20], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:3728
	ds_load_u8 v42, v235 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:3984
	ds_load_u8 v43, v235 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:3216
	ds_load_u8 v44, v235 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:3472
	ds_load_u8 v45, v235 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[17:18], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:4752
	ds_load_u8 v42, v235 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:5008
	ds_load_u8 v43, v235 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:4240
	ds_load_u8 v44, v235 offset:4112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:4496
	ds_load_u8 v45, v235 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[15:16], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:5776
	ds_load_u8 v42, v235 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:6032
	ds_load_u8 v43, v235 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:5264
	ds_load_u8 v44, v235 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:5520
	ds_load_u8 v45, v235 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[13:14], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:6800
	ds_load_u8 v42, v235 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:7056
	ds_load_u8 v43, v235 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:6288
	ds_load_u8 v44, v235 offset:6160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:6544
	ds_load_u8 v45, v235 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[11:12], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:7824
	ds_load_u8 v42, v235 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:8080
	ds_load_u8 v43, v235 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:7312
	ds_load_u8 v44, v235 offset:7184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:7568
	ds_load_u8 v45, v235 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[9:10], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v110, v34
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v235 offset:672
	ds_load_u8 v34, v235 offset:544
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v111, v35
	v_cvt_f32_i32_e32 v114, v36
	v_cvt_f32_i32_e32 v115, v37
	v_cvt_f32_i32_e32 v112, v38
	v_cvt_f32_i32_e32 v113, v39
	v_cvt_f32_i32_e32 v116, v40
	v_cvt_f32_i32_e32 v117, v41
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	ds_load_u8 v34, v235 offset:928
	ds_load_u8 v35, v235 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v235 offset:32
	ds_load_u8 v36, v235 offset:160
	v_lshl_or_b32 v43, v34, 16, v0
	ds_load_u8 v0, v235 offset:1696
	ds_load_u8 v34, v235 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	ds_load_u8 v36, v235 offset:416
	ds_load_u8 v37, v235 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v36, 16, v35
	ds_load_u8 v34, v235 offset:1952
	ds_load_u8 v35, v235 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v235 offset:1184
	ds_load_u8 v36, v235 offset:1056
	v_lshl_or_b32 v45, v34, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v235 offset:1440
	ds_load_u8 v37, v235 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v36, 16, v35
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:2720
	ds_load_u8 v42, v235 offset:2592
	v_wmma_i32_16x16x16_iu4 v[34:41], v[44:45], v[21:22], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:2976
	ds_load_u8 v43, v235 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:2208
	ds_load_u8 v44, v235 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:2464
	ds_load_u8 v45, v235 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[19:20], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:3744
	ds_load_u8 v42, v235 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:4000
	ds_load_u8 v43, v235 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:3232
	ds_load_u8 v44, v235 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:3488
	ds_load_u8 v45, v235 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[17:18], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:4768
	ds_load_u8 v42, v235 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:5024
	ds_load_u8 v43, v235 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:4256
	ds_load_u8 v44, v235 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:4512
	ds_load_u8 v45, v235 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[15:16], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:5792
	ds_load_u8 v42, v235 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:6048
	ds_load_u8 v43, v235 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:5280
	ds_load_u8 v44, v235 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:5536
	ds_load_u8 v45, v235 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[13:14], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:6816
	ds_load_u8 v42, v235 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:7072
	ds_load_u8 v43, v235 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:6304
	ds_load_u8 v44, v235 offset:6176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:6560
	ds_load_u8 v45, v235 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[11:12], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:7840
	ds_load_u8 v42, v235 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:8096
	ds_load_u8 v43, v235 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:7328
	ds_load_u8 v44, v235 offset:7200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:7584
	ds_load_u8 v45, v235 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[9:10], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v120, v34
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v235 offset:688
	ds_load_u8 v34, v235 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v121, v35
	v_cvt_f32_i32_e32 v124, v36
	v_cvt_f32_i32_e32 v125, v37
	v_cvt_f32_i32_e32 v122, v38
	v_cvt_f32_i32_e32 v123, v39
	v_cvt_f32_i32_e32 v126, v40
	v_cvt_f32_i32_e32 v127, v41
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	ds_load_u8 v34, v235 offset:944
	ds_load_u8 v35, v235 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v235 offset:48
	ds_load_u8 v36, v235 offset:176
	v_lshl_or_b32 v43, v34, 16, v0
	ds_load_u8 v0, v235 offset:1712
	ds_load_u8 v34, v235 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	ds_load_u8 v36, v235 offset:432
	ds_load_u8 v37, v235 offset:304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v34, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v36, 16, v35
	ds_load_u8 v34, v235 offset:1968
	ds_load_u8 v35, v235 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v235 offset:1200
	ds_load_u8 v36, v235 offset:1072
	v_lshl_or_b32 v45, v34, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v235 offset:1456
	ds_load_u8 v37, v235 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v36, 16, v35
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:2736
	ds_load_u8 v42, v235 offset:2608
	v_wmma_i32_16x16x16_iu4 v[34:41], v[44:45], v[21:22], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:2992
	ds_load_u8 v43, v235 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:2224
	ds_load_u8 v44, v235 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:2480
	ds_load_u8 v45, v235 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[19:20], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:3760
	ds_load_u8 v42, v235 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:4016
	ds_load_u8 v43, v235 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:3248
	ds_load_u8 v44, v235 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:3504
	ds_load_u8 v45, v235 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[17:18], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:4784
	ds_load_u8 v42, v235 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:5040
	ds_load_u8 v43, v235 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:4272
	ds_load_u8 v44, v235 offset:4144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:4528
	ds_load_u8 v45, v235 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[15:16], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:5808
	ds_load_u8 v42, v235 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:6064
	ds_load_u8 v43, v235 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:5296
	ds_load_u8 v44, v235 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:5552
	ds_load_u8 v45, v235 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[13:14], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:6832
	ds_load_u8 v42, v235 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:7088
	ds_load_u8 v43, v235 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:6320
	ds_load_u8 v44, v235 offset:6192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:6576
	ds_load_u8 v45, v235 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[11:12], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:7856
	ds_load_u8 v42, v235 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v42, v0, 0xc0c0004
	ds_load_u8 v42, v235 offset:8112
	ds_load_u8 v43, v235 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v235 offset:7344
	ds_load_u8 v44, v235 offset:7216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v43, 0xc0c0004
	ds_load_u8 v43, v235 offset:7600
	ds_load_u8 v45, v235 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v43, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[9:10], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v133, v35
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v235 offset:704
	ds_load_u8 v35, v235 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v163, v36
	v_cvt_f32_i32_e32 v131, v37
	v_cvt_f32_i32_e32 v128, v38
	v_cvt_f32_i32_e32 v132, v34
	v_cvt_f32_i32_e32 v34, v39
	v_cvt_f32_i32_e32 v118, v40
	v_cvt_f32_i32_e32 v119, v41
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v35, v0, 0xc0c0004
	ds_load_u8 v35, v235 offset:960
	ds_load_u8 v36, v235 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v235 offset:192
	ds_load_u8 v37, v235 offset:64
	v_lshl_or_b32 v44, v35, 16, v0
	ds_load_u8 v0, v235 offset:1728
	ds_load_u8 v35, v235 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v235 offset:448
	ds_load_u8 v38, v235 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v35, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v37, 16, v36
	ds_load_u8 v35, v235 offset:1984
	ds_load_u8 v36, v235 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v235 offset:1216
	ds_load_u8 v37, v235 offset:1088
	v_lshl_or_b32 v46, v35, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v235 offset:1472
	ds_load_u8 v38, v235 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v37, 16, v36
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:2752
	ds_load_u8 v43, v235 offset:2624
	v_wmma_i32_16x16x16_iu4 v[35:42], v[45:46], v[21:22], v[35:42] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:3008
	ds_load_u8 v44, v235 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:2240
	ds_load_u8 v45, v235 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:2496
	ds_load_u8 v46, v235 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[19:20], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:3776
	ds_load_u8 v43, v235 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:4032
	ds_load_u8 v44, v235 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:3264
	ds_load_u8 v45, v235 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:3520
	ds_load_u8 v46, v235 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[17:18], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:4800
	ds_load_u8 v43, v235 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:5056
	ds_load_u8 v44, v235 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:4288
	ds_load_u8 v45, v235 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:4544
	ds_load_u8 v46, v235 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[15:16], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:5824
	ds_load_u8 v43, v235 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:6080
	ds_load_u8 v44, v235 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:5312
	ds_load_u8 v45, v235 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:5568
	ds_load_u8 v46, v235 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[13:14], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:6848
	ds_load_u8 v43, v235 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:7104
	ds_load_u8 v44, v235 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:6336
	ds_load_u8 v45, v235 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:6592
	ds_load_u8 v46, v235 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[11:12], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:7872
	ds_load_u8 v43, v235 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:8128
	ds_load_u8 v44, v235 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:7360
	ds_load_u8 v45, v235 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:7616
	ds_load_u8 v46, v235 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[9:10], v[35:42] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v140, v35
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v235 offset:720
	ds_load_u8 v35, v235 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v141, v36
	v_cvt_f32_i32_e32 v138, v37
	v_cvt_f32_i32_e32 v139, v38
	v_cvt_f32_i32_e32 v136, v39
	v_cvt_f32_i32_e32 v137, v40
	v_cvt_f32_i32_e32 v130, v41
	v_cvt_f32_i32_e32 v135, v42
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v35, v0, 0xc0c0004
	ds_load_u8 v35, v235 offset:976
	ds_load_u8 v36, v235 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v235 offset:208
	ds_load_u8 v37, v235 offset:80
	v_lshl_or_b32 v44, v35, 16, v0
	ds_load_u8 v0, v235 offset:1744
	ds_load_u8 v35, v235 offset:1616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v235 offset:464
	ds_load_u8 v38, v235 offset:336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v35, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v37, 16, v36
	ds_load_u8 v35, v235 offset:2000
	ds_load_u8 v36, v235 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v235 offset:1232
	ds_load_u8 v37, v235 offset:1104
	v_lshl_or_b32 v46, v35, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v235 offset:1488
	ds_load_u8 v38, v235 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v37, 16, v36
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:2768
	ds_load_u8 v43, v235 offset:2640
	v_wmma_i32_16x16x16_iu4 v[35:42], v[45:46], v[21:22], v[35:42] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:3024
	ds_load_u8 v44, v235 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:2256
	ds_load_u8 v45, v235 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:2512
	ds_load_u8 v46, v235 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[19:20], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:3792
	ds_load_u8 v43, v235 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:4048
	ds_load_u8 v44, v235 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:3280
	ds_load_u8 v45, v235 offset:3152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:3536
	ds_load_u8 v46, v235 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[17:18], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:4816
	ds_load_u8 v43, v235 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:5072
	ds_load_u8 v44, v235 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:4304
	ds_load_u8 v45, v235 offset:4176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:4560
	ds_load_u8 v46, v235 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[15:16], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:5840
	ds_load_u8 v43, v235 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:6096
	ds_load_u8 v44, v235 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:5328
	ds_load_u8 v45, v235 offset:5200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:5584
	ds_load_u8 v46, v235 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[13:14], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:6864
	ds_load_u8 v43, v235 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:7120
	ds_load_u8 v44, v235 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:6352
	ds_load_u8 v45, v235 offset:6224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:6608
	ds_load_u8 v46, v235 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[11:12], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:7888
	ds_load_u8 v43, v235 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:8144
	ds_load_u8 v44, v235 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:7376
	ds_load_u8 v45, v235 offset:7248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:7632
	ds_load_u8 v46, v235 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[9:10], v[35:42] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v148, v35
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v235 offset:736
	ds_load_u8 v35, v235 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v149, v36
	v_cvt_f32_i32_e32 v146, v37
	v_cvt_f32_i32_e32 v147, v38
	v_cvt_f32_i32_e32 v144, v39
	v_cvt_f32_i32_e32 v145, v40
	v_cvt_f32_i32_e32 v142, v41
	v_cvt_f32_i32_e32 v143, v42
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v35, v0, 0xc0c0004
	ds_load_u8 v35, v235 offset:992
	ds_load_u8 v36, v235 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v235 offset:224
	ds_load_u8 v37, v235 offset:96
	v_lshl_or_b32 v44, v35, 16, v0
	ds_load_u8 v0, v235 offset:1760
	ds_load_u8 v35, v235 offset:1632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v235 offset:480
	ds_load_u8 v38, v235 offset:352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v35, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v37, 16, v36
	ds_load_u8 v35, v235 offset:2016
	ds_load_u8 v36, v235 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v235 offset:1248
	ds_load_u8 v37, v235 offset:1120
	v_lshl_or_b32 v46, v35, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v235 offset:1504
	ds_load_u8 v38, v235 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v37, 16, v36
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:2784
	ds_load_u8 v43, v235 offset:2656
	v_wmma_i32_16x16x16_iu4 v[35:42], v[45:46], v[21:22], v[35:42] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:3040
	ds_load_u8 v44, v235 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:2272
	ds_load_u8 v45, v235 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:2528
	ds_load_u8 v46, v235 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[19:20], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:3808
	ds_load_u8 v43, v235 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:4064
	ds_load_u8 v44, v235 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:3296
	ds_load_u8 v45, v235 offset:3168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:3552
	ds_load_u8 v46, v235 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[17:18], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:4832
	ds_load_u8 v43, v235 offset:4704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:5088
	ds_load_u8 v44, v235 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:4320
	ds_load_u8 v45, v235 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:4576
	ds_load_u8 v46, v235 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[15:16], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:5856
	ds_load_u8 v43, v235 offset:5728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:6112
	ds_load_u8 v44, v235 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:5344
	ds_load_u8 v45, v235 offset:5216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:5600
	ds_load_u8 v46, v235 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[13:14], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:6880
	ds_load_u8 v43, v235 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:7136
	ds_load_u8 v44, v235 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:6368
	ds_load_u8 v45, v235 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:6624
	ds_load_u8 v46, v235 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[11:12], v[35:42] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:7904
	ds_load_u8 v43, v235 offset:7776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v43, v0, 0xc0c0004
	ds_load_u8 v43, v235 offset:8160
	ds_load_u8 v44, v235 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v235 offset:7392
	ds_load_u8 v45, v235 offset:7264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v44, 0xc0c0004
	ds_load_u8 v44, v235 offset:7648
	ds_load_u8 v46, v235 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v44, 0xc0c0004
	v_lshl_or_b32 v44, v43, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[35:42], v[43:44], v[9:10], v[35:42] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v156, v35
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v235 offset:240
	ds_load_u8 v35, v235 offset:112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v157, v36
	v_cvt_f32_i32_e32 v154, v37
	v_cvt_f32_i32_e32 v155, v38
	v_cvt_f32_i32_e32 v152, v39
	v_cvt_f32_i32_e32 v153, v40
	v_cvt_f32_i32_e32 v150, v41
	v_cvt_f32_i32_e32 v151, v42
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v35, v0, 0xc0c0004
	ds_load_u8 v35, v235 offset:496
	ds_load_u8 v36, v235 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v235 offset:752
	ds_load_u8 v37, v235 offset:624
	v_lshl_or_b32 v35, v35, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v37, 0, v160
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v37, v37
	ds_load_u8 v38, v235 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v36, v37, 16, v36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:1264
	ds_load_u8 v23, v235 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v23, v0, 0xc0c0004
	ds_load_u8 v23, v235 offset:1520
	ds_load_u8 v24, v235 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v235 offset:1776
	ds_load_u8 v35, v235 offset:1648
	v_lshl_or_b32 v23, v23, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v35, v24, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v35, 0, v70
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v35, v35
	ds_load_u8 v36, v235 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v35, 16, v24
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[21:22], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:2288
	ds_load_u8 v21, v235 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	ds_load_u8 v21, v235 offset:2544
	ds_load_u8 v22, v235 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v235 offset:2800
	ds_load_u8 v23, v235 offset:2672
	v_lshl_or_b32 v21, v21, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v23, 0, v158
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v23, v23
	ds_load_u8 v24, v235 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v23, 16, v22
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[19:20], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:3312
	ds_load_u8 v19, v235 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	ds_load_u8 v19, v235 offset:3568
	ds_load_u8 v20, v235 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v235 offset:3824
	ds_load_u8 v21, v235 offset:3696
	v_lshl_or_b32 v19, v19, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v21, 0, v51
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v21, v21
	ds_load_u8 v22, v235 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v20, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[17:18], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:4336
	ds_load_u8 v17, v235 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v235 offset:4592
	ds_load_u8 v18, v235 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v235 offset:4848
	ds_load_u8 v19, v235 offset:4720
	v_lshl_or_b32 v17, v17, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v19, 0, v50
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v19, v19
	ds_load_u8 v20, v235 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v19, 16, v18
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[15:16], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:5360
	ds_load_u8 v15, v235 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v235 offset:5616
	ds_load_u8 v16, v235 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v235 offset:5872
	ds_load_u8 v17, v235 offset:5744
	v_lshl_or_b32 v15, v15, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v17, 0, v49
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v17, v17
	ds_load_u8 v18, v235 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v17, 16, v16
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[13:14], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:6384
	ds_load_u8 v13, v235 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	ds_load_u8 v13, v235 offset:6640
	ds_load_u8 v14, v235 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v235 offset:6896
	ds_load_u8 v15, v235 offset:6768
	v_lshl_or_b32 v13, v13, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v15, 0, v48
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v15, v15
	ds_load_u8 v16, v235 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v15, 16, v14
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[11:12], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:7408
	ds_load_u8 v11, v235 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v0, 0xc0c0004
	ds_load_u8 v0, v235 offset:7664
	ds_load_u8 v12, v235 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v12, v0, 0xc0c0004
	ds_load_u8 v12, v235 offset:7920
	ds_load_u8 v13, v235 offset:7792
	v_lshl_or_b32 v11, v0, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v13, 0, v47
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v14, v235 offset:8048
	ds_load_u8 v13, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v13, 16, v12
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v11, v1
	v_cvt_f32_i32_e32 v12, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v3
	v_cvt_f32_i32_e32 v10, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v2, v7
	v_cvt_f32_i32_e32 v1, v8
.LBB0_6:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_waitcnt vmcnt(6)
	v_mul_lo_u32 v0, s34, v56
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s0, s1, 0
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s1, s33, s34
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s0, s27
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s1, s1, s0
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s26, s3
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s21, s13, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v8, s0, v60, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v0, s1, v0, 1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v6, 4, v8
	v_add_nc_u32_e32 v7, 8, v8
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, 12, v8
	v_add_nc_u32_e32 v14, 16, v8
	v_cndmask_b32_e64 v5, 0x80000000, v8, s2
	v_add_nc_u32_e32 v15, 20, v8
	v_add_nc_u32_e32 v16, 24, v8
	v_add_nc_u32_e32 v17, 28, v8
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_add_nc_u32_e32 v18, 32, v8
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v0, v0, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_add_nc_u32_e32 v19, 36, v8
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_add_nc_u32_e32 v20, 40, v8
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x7
	buffer_load_u16 v21, v5, s[20:23], 0 offen
	buffer_load_u16 v22, v6, s[20:23], 0 offen
	buffer_load_u16 v23, v7, s[20:23], 0 offen
	buffer_load_u16 v24, v13, s[20:23], 0 offen
	buffer_load_u16 v40, v14, s[20:23], 0 offen
	buffer_load_u16 v41, v15, s[20:23], 0 offen
	buffer_load_u16 v42, v16, s[20:23], 0 offen
	buffer_load_u16 v43, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v13, 44, v8
	v_add_nc_u32_e32 v14, 48, v8
	v_cndmask_b32_e64 v5, 0x80000000, v18, s2
	v_add_nc_u32_e32 v15, 52, v8
	v_add_nc_u32_e32 v16, 56, v8
	v_add_nc_u32_e32 v17, 60, v8
	v_cndmask_b32_e64 v6, 0x80000000, v19, s2
	v_cndmask_b32_e64 v7, 0x80000000, v20, s2
	v_add_nc_u32_e32 v18, 64, v8
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_add_nc_u32_e32 v19, 0x44, v8
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_add_nc_u32_e32 v20, 0x48, v8
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x7
	buffer_load_u16 v46, v5, s[20:23], 0 offen
	buffer_load_u16 v47, v6, s[20:23], 0 offen
	buffer_load_u16 v48, v7, s[20:23], 0 offen
	buffer_load_u16 v49, v13, s[20:23], 0 offen
	buffer_load_u16 v50, v14, s[20:23], 0 offen
	buffer_load_u16 v51, v15, s[20:23], 0 offen
	buffer_load_u16 v52, v16, s[20:23], 0 offen
	buffer_load_u16 v53, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v13, 0x4c, v8
	v_add_nc_u32_e32 v14, 0x50, v8
	v_cndmask_b32_e64 v5, 0x80000000, v18, s2
	v_add_nc_u32_e32 v15, 0x54, v8
	v_add_nc_u32_e32 v16, 0x58, v8
	v_add_nc_u32_e32 v17, 0x5c, v8
	v_cndmask_b32_e64 v6, 0x80000000, v19, s2
	v_cndmask_b32_e64 v7, 0x80000000, v20, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x7
	buffer_load_u16 v58, v5, s[20:23], 0 offen
	buffer_load_u16 v59, v6, s[20:23], 0 offen
	buffer_load_u16 v60, v7, s[20:23], 0 offen
	buffer_load_u16 v61, v13, s[20:23], 0 offen
	buffer_load_u16 v62, v14, s[20:23], 0 offen
	buffer_load_u16 v63, v15, s[20:23], 0 offen
	buffer_load_u16 v54, v16, s[20:23], 0 offen
	buffer_load_u16 v55, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v13, 0x60, v8
	v_add_nc_u32_e32 v14, 0x64, v8
	v_add_nc_u32_e32 v15, 0x68, v8
	v_add_nc_u32_e32 v16, 0x6c, v8
	v_add_nc_u32_e32 v17, 0x70, v8
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	s_clause 0x3
	buffer_load_u16 v75, v13, s[20:23], 0 offen
	buffer_load_u16 v164, v14, s[20:23], 0 offen
	buffer_load_u16 v78, v15, s[20:23], 0 offen
	buffer_load_u16 v79, v16, s[20:23], 0 offen
	v_add_nc_u32_e32 v13, 0x74, v8
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_nc_u32_e32 v14, 0x78, v8
	v_add_nc_u32_e32 v18, 0x7c, v8
	v_add_nc_u32_e32 v19, 0x80, v8
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	s_clause 0x1
	buffer_load_u16 v93, v17, s[20:23], 0 offen
	buffer_load_u16 v94, v13, s[20:23], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	s_clause 0x1
	buffer_load_u16 v105, v14, s[20:23], 0 offen
	buffer_load_u16 v106, v18, s[20:23], 0 offen
	v_add_nc_u32_e32 v20, 0x84, v8
	v_add_nc_u32_e32 v77, 0xac, v8
	v_add_nc_u32_e32 v80, 0xb8, v8
	v_add_nc_u32_e32 v81, 0xbc, v8
	v_add_nc_u32_e32 v82, 0xc0, v8
	v_add_nc_u32_e32 v83, 0xc4, v8
	v_add_nc_u32_e32 v84, 0xc8, v8
	v_add_nc_u32_e32 v85, 0xcc, v8
	v_add_nc_u32_e32 v86, 0xd0, v8
	v_add_nc_u32_e32 v87, 0xd4, v8
	v_add_nc_u32_e32 v88, 0xd8, v8
	v_add_nc_u32_e32 v89, 0xdc, v8
	v_add_nc_u32_e32 v90, 0xe0, v8
	v_add_nc_u32_e32 v91, 0xe4, v8
	v_add_nc_u32_e32 v92, 0xe8, v8
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v18, 0x80000000, v77, s2
	v_cndmask_b32_e64 v77, 0x80000000, v80, s2
	v_cndmask_b32_e64 v80, 0x80000000, v81, s2
	v_cndmask_b32_e64 v81, 0x80000000, v82, s2
	v_cndmask_b32_e64 v82, 0x80000000, v83, s2
	v_cndmask_b32_e64 v83, 0x80000000, v84, s2
	v_cndmask_b32_e64 v84, 0x80000000, v85, s2
	v_cndmask_b32_e64 v85, 0x80000000, v86, s2
	v_cndmask_b32_e64 v86, 0x80000000, v87, s2
	v_cndmask_b32_e64 v87, 0x80000000, v88, s2
	v_cndmask_b32_e64 v88, 0x80000000, v89, s2
	v_cndmask_b32_e64 v89, 0x80000000, v90, s2
	v_cndmask_b32_e64 v90, 0x80000000, v91, s2
	v_cndmask_b32_e64 v91, 0x80000000, v92, s2
	s_clause 0x1
	buffer_load_u16 v92, v19, s[20:23], 0 offen
	buffer_load_u16 v107, v20, s[20:23], 0 offen
	v_add_nc_u32_e32 v35, 0x88, v8
	v_add_nc_u32_e32 v36, 0x8c, v8
	v_add_nc_u32_e32 v37, 0x90, v8
	v_add_nc_u32_e32 v38, 0x94, v8
	v_add_nc_u32_e32 v39, 0x98, v8
	v_add_nc_u32_e32 v44, 0x9c, v8
	v_add_nc_u32_e32 v45, 0xa0, v8
	v_add_nc_u32_e32 v57, 0xa8, v8
	v_add_nc_u32_e32 v15, 0xb0, v8
	v_add_nc_u32_e32 v16, 0xb4, v8
	v_add_nc_u32_e32 v13, 0xec, v8
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v7, s27, v56
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v56, 0xa4, v8
	v_add_nc_u32_e32 v17, 0xf0, v8
	v_add_nc_u32_e32 v95, 0xf4, v8
	v_add_nc_u32_e32 v96, 0xf8, v8
	v_add_nc_u32_e32 v8, 0xfc, v8
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v14, 0x80000000, v57, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v97, 0x80000000, v56, s2
	v_cndmask_b32_e64 v108, 0x80000000, v17, s2
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	s_clause 0x1d
	buffer_load_u16 v109, v35, s[20:23], 0 offen
	buffer_load_u16 v129, v36, s[20:23], 0 offen
	buffer_load_u16 v158, v37, s[20:23], 0 offen
	buffer_load_u16 v159, v38, s[20:23], 0 offen
	buffer_load_u16 v160, v39, s[20:23], 0 offen
	buffer_load_u16 v161, v44, s[20:23], 0 offen
	buffer_load_u16 v56, v45, s[20:23], 0 offen
	buffer_load_u16 v57, v97, s[20:23], 0 offen
	buffer_load_u16 v44, v14, s[20:23], 0 offen
	buffer_load_u16 v45, v18, s[20:23], 0 offen
	buffer_load_u16 v38, v15, s[20:23], 0 offen
	buffer_load_u16 v39, v16, s[20:23], 0 offen
	buffer_load_u16 v36, v77, s[20:23], 0 offen
	buffer_load_u16 v37, v80, s[20:23], 0 offen
	buffer_load_u16 v35, v81, s[20:23], 0 offen
	buffer_load_u16 v104, v82, s[20:23], 0 offen
	buffer_load_u16 v102, v83, s[20:23], 0 offen
	buffer_load_u16 v103, v84, s[20:23], 0 offen
	buffer_load_u16 v100, v85, s[20:23], 0 offen
	buffer_load_u16 v101, v86, s[20:23], 0 offen
	buffer_load_u16 v98, v87, s[20:23], 0 offen
	buffer_load_u16 v99, v88, s[20:23], 0 offen
	buffer_load_u16 v19, v89, s[20:23], 0 offen
	buffer_load_u16 v20, v90, s[20:23], 0 offen
	buffer_load_u16 v17, v91, s[20:23], 0 offen
	buffer_load_u16 v18, v13, s[20:23], 0 offen
	buffer_load_u16 v15, v108, s[20:23], 0 offen
	buffer_load_u16 v16, v95, s[20:23], 0 offen
	buffer_load_u16 v14, v96, s[20:23], 0 offen
	buffer_load_u16 v13, v8, s[20:23], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.h, 0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s27
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v5, 1, v25
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v7, s33, s26, v7
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	v_mov_b16_e32 v67.h, v6.h
	v_mov_b16_e32 v69.h, v6.h
	v_mov_b16_e32 v64.h, v6.h
	v_mov_b16_e32 v65.h, v6.h
	v_mov_b16_e32 v71.h, v6.h
	v_mov_b16_e32 v72.h, v6.h
	v_mov_b16_e32 v66.h, v6.h
	v_mov_b16_e32 v68.h, v6.h
	v_mov_b16_e32 v70.h, v6.h
	v_mov_b16_e32 v74.h, v6.h
	v_mov_b16_e32 v73.h, v6.h
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v8, 16, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v0, 16, v21
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v26, v26, v8 :: v_dual_lshlrev_b32 v21, 16, v22
	s_waitcnt vmcnt(61)
	v_dual_mul_f32 v31, v31, v8 :: v_dual_lshlrev_b32 v22, 16, v23
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v23, 16, v24
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v24, 16, v40
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(58)
	v_dual_mul_f32 v29, v29, v8 :: v_dual_lshlrev_b32 v40, 16, v41
	s_waitcnt vmcnt(57)
	v_dual_mul_f32 v30, v30, v8 :: v_dual_lshlrev_b32 v41, 16, v42
	s_waitcnt vmcnt(56)
	v_dual_mul_f32 v33, v33, v8 :: v_dual_lshlrev_b32 v42, 16, v43
	v_mul_f32_e32 v27, v27, v8
	v_mul_f32_e32 v28, v28, v8
	v_mul_f32_e32 v32, v32, v8
	s_waitcnt vmcnt(55)
	v_dual_mul_f32 v80, v114, v8 :: v_dual_lshlrev_b32 v43, 16, v46
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v46, 16, v47
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v47, 16, v48
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(52)
	v_dual_mul_f32 v77, v111, v8 :: v_dual_lshlrev_b32 v48, 16, v49
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v49, 16, v50
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(50)
	v_dual_mul_f32 v81, v115, v8 :: v_dual_lshlrev_b32 v50, 16, v51
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v51, 16, v52
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(48)
	v_dual_mul_f32 v83, v113, v8 :: v_dual_lshlrev_b32 v52, 16, v53
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v26, v0, v205
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v82, v112, v8
	s_waitcnt vmcnt(47)
	v_dual_mul_f32 v84, v116, v8 :: v_dual_lshlrev_b32 v53, 16, v58
	s_waitcnt vmcnt(46)
	v_dual_mul_f32 v85, v117, v8 :: v_dual_lshlrev_b32 v58, 16, v59
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v59, 16, v60
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(44)
	v_dual_mul_f32 v87, v121, v8 :: v_dual_lshlrev_b32 v60, 16, v61
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v61, 16, v62
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(42)
	v_dual_mul_f32 v89, v125, v8 :: v_dual_lshlrev_b32 v62, 16, v63
	s_waitcnt vmcnt(41)
	v_dual_mul_f32 v91, v123, v8 :: v_dual_lshlrev_b32 v54, 16, v54
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v63, v110, v8
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v29, v40, v222
	v_fma_f32 v24, v28, v24, v223
	v_fma_f32 v28, v32, v41, v221
	v_fma_f32 v32, v80, v47, v217
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v205, v0, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v27, v21, v226
	v_fma_f32 v23, v31, v23, v224
	v_fma_f32 v22, v30, v22, v225
	v_fma_f32 v27, v33, v42, v220
	v_fma_f32 v30, v63, v43, v219
	v_fma_f32 v33, v83, v50, v214
	v_fma_f32 v40, v82, v49, v215
	v_fma_f32 v41, v85, v52, v212
	v_fma_f32 v42, v84, v51, v213
	v_fma_f32 v43, v87, v58, v210
	v_fma_f32 v47, v89, v60, v208
	v_fma_f32 v49, v91, v62, v206
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v52, v222, v26, s2
	v_cndmask_b32_e64 v26, v221, v28, s2
	v_cndmask_b32_e64 v28, v217, v32, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v0.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v86, v120, v8
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v77, v46, v218
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v226, v21, s2
	v_cndmask_b32_e64 v22, v225, v22, s2
	v_cndmask_b32_e64 v23, v224, v23, s2
	v_cndmask_b32_e64 v32, v214, v33, s2
	v_cndmask_b32_e64 v33, v212, v41, s2
	v_cndmask_b32_e64 v41, v210, v43, s2
	v_cndmask_b32_e64 v43, v208, v47, s2
	v_cndmask_b32_e64 v47, v206, v49, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.l, v26.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v88, v124, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v69.l, v28.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v90, v122, v8 :: v_dual_and_b32 v49, 1, v6
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v46, v86, v53, v211
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v53, v220, v27, s2
	v_cndmask_b32_e64 v27, v219, v30, s2
	v_cndmask_b32_e64 v30, v213, v42, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v81, v48, v216
	v_fma_f32 v48, v88, v59, v209
	v_fma_f32 v50, v90, v61, v207
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v64.l, v21.h
	v_mov_b16_e32 v65.l, v22.h
	v_mov_b16_e32 v71.l, v30.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v96, v127, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v23.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v95, v126, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v209, v48, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v48, 1, v64
	v_and_b32_e32 v63, 1, v71
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v51, v96, v55, v204
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v218, v29, s2
	v_cndmask_b32_e64 v29, v215, v40, s2
	v_cndmask_b32_e64 v40, v211, v46, s2
	v_cndmask_b32_e64 v46, v207, v50, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v50, 1, v65
	v_and_b32_e32 v65, 1, v6
	v_mov_b16_e32 v6.l, v52.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v223, v24, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_mov_b16_e32 v72.l, v40.h
	v_add3_u32 v21, v21, v48, 0x7fff
	v_and_b32_e32 v48, 1, v6
	v_mov_b16_e32 v6.l, v53.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v216, v31, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	v_mov_b16_e32 v66.l, v24.h
	v_and_b32_e32 v64, 1, v72
	v_add3_u32 v0, v0, v49, 0x7fff
	v_and_b32_e32 v49, 1, v6
	v_mov_b16_e32 v6.l, v55.h
	v_and_b32_e32 v61, 1, v69
	v_cmp_o_f32_e64 s3, v22, v22
	v_cmp_o_f32_e64 s17, v40, v40
	v_and_b32_e32 v58, 1, v66
	v_and_b32_e32 v59, 1, v67
	v_add3_u32 v22, v22, v50, 0x7fff
	v_add3_u32 v40, v40, v64, 0x7fff
	v_and_b32_e32 v50, 1, v6
	v_mov_b16_e32 v6.l, v31.h
	v_cmp_o_f32_e64 s11, v28, v28
	v_add3_u32 v28, v28, v61, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_cmp_o_f32_e64 s6, v53, v53
	v_cmp_o_f32_e64 s7, v26, v26
	v_add3_u32 v24, v24, v58, 0x7fff
	v_add3_u32 v26, v26, v59, 0x7fff
	v_and_b32_e32 v58, 1, v6
	v_mov_b16_e32 v6.l, v32.h
	v_cndmask_b16 v28.l, 0x7fff, v40.h, s17
	v_add3_u32 v40, v52, v48, 0x7fff
	v_add3_u32 v48, v53, v49, 0x7fff
	v_cmp_o_f32_e64 s1, v23, v23
	v_cndmask_b16 v21.l, 0x7fff, v0.h, s0
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s7
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v34, v34, v8 :: v_dual_and_b32 v59, 1, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v33.h
	v_cndmask_b16 v26.h, 0x7fff, v48.h, s6
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v48, v132, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v0, v23, v65, 0x7fff
	v_mov_b16_e32 v68.l, v27.h
	v_mov_b16_e32 v70.l, v29.h
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s3
	v_cmp_o_f32_e64 s10, v31, v31
	v_cndmask_b16 v22.h, 0x7fff, v0.h, s1
	v_and_b32_e32 v0, 1, v6
	v_mov_b16_e32 v6.l, v41.h
	v_and_b32_e32 v60, 1, v68
	v_and_b32_e32 v62, 1, v70
	v_add3_u32 v49, v55, v50, 0x7fff
	v_add3_u32 v31, v31, v58, 0x7fff
	v_and_b32_e32 v50, 1, v6
	v_mov_b16_e32 v6.l, v43.h
	v_cmp_o_f32_e64 s4, v52, v52
	v_cmp_o_f32_e64 s9, v27, v27
	v_cmp_o_f32_e64 s12, v32, v32
	v_cmp_o_f32_e64 s13, v29, v29
	v_cmp_o_f32_e64 s14, v33, v33
	v_cmp_o_f32_e64 s15, v30, v30
	v_add3_u32 v27, v27, v60, 0x7fff
	v_add3_u32 v29, v29, v62, 0x7fff
	v_add3_u32 v30, v30, v63, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v31.h, s10
	v_and_b32_e32 v31, 1, v6
	v_add3_u32 v32, v32, v59, 0x7fff
	v_add3_u32 v0, v33, v0, 0x7fff
	v_mov_b16_e32 v6.l, v47.h
	v_cndmask_b16 v24.l, 0x7fff, v27.h, s9
	v_cndmask_b16 v30.l, 0x7fff, v29.h, s13
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s15
	v_cndmask_b16 v27.h, 0x7fff, v40.h, s4
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s12
	v_cndmask_b16 v29.h, 0x7fff, v0.h, s14
	v_and_b32_e32 v0, 1, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v95, v54, v203
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v204, v51, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s8, v55, v55
	v_cmp_o_f32_e64 s16, v41, v41
	v_mov_b16_e32 v74.l, v46.h
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	v_add3_u32 v33, v41, v50, 0x7fff
	v_add3_u32 v0, v47, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v203, v32, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v40.h
	v_cndmask_b16 v27.l, 0x7fff, v24.h, s5
	v_cndmask_b16 v23.l, 0x7fff, v28.h, s11
	v_cndmask_b16 v24.h, 0x7fff, v49.h, s8
	v_cndmask_b16 v28.h, 0x7fff, v33.h, s16
	v_and_b32_e32 v33, 1, v74
	v_cndmask_b16 v32.h, 0x7fff, v0.h, vcc_lo
	v_mov_b16_e32 v0.l, v41.h
	v_mov_b16_e32 v0.h, v6.h
	v_and_b32_e32 v49, 1, v6
	v_mov_b16_e32 v73.l, v42.h
	v_add3_u32 v33, v46, v33, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_and_b32_e32 v0, 1, v0
	v_add3_u32 v46, v40, v49, 0x7fff
	v_cmp_o_f32_e64 s0, v40, v40
	v_cmp_o_f32_e64 s18, v43, v43
	v_and_b32_e32 v66, 1, v73
	v_add3_u32 v31, v43, v31, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v43, 16, v164
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v47, v133, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v33.h, vcc_lo
	v_add3_u32 v33, v41, v0, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v46.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(37)
	v_dual_mul_f32 v49, v163, v8 :: v_dual_lshlrev_b32 v46, 16, v78
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s19, v42, v42
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v43, v47, v43, v202
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v47, 16, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v46, v49, v46, v199
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v49, v128, v8
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v42, v42, v66, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v202, v43, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v43.h, v6.h
	v_cndmask_b16 v0.l, 0x7fff, v33.h, vcc_lo
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v11, v11, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v31.l, 0x7fff, v42.h, s19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v42, 16, v75
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v40.h
	v_cmp_o_f32_e64 s0, v40, v40
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v9, v9, v8
	v_mul_f32_e32 v3, v3, v8
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v42, v48, v42, v201
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v48, v131, v8
	v_dual_mul_f32 v1, v1, v8 :: v_dual_and_b32 v50, 1, v6
	v_mul_f32_e32 v12, v12, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v201, v42, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v41, v48, v47, v200
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v47, v40, v50, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v48, 16, v94
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v4, v4, v8 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v200, v41, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v43.l, v42.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v199, v46, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.h, 0x7fff, v47.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v47, 16, v93
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v40.h
	v_and_b32_e32 v43, 1, v43
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v34, v34, v48, v198
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.l, v41.h
	v_mov_b16_e32 v46.h, v6.h
	v_and_b32_e32 v50, 1, v6
	v_add3_u32 v43, v42, v43, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v42, v49, v47, v197
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v40, v40
	v_add3_u32 v47, v40, v50, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v198, v34, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v46, 1, v46
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v197, v42, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v48, 16, v106
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v34.h, 0x7fff, v47.h, s0
	v_mov_b16_e32 v6.l, v40.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v47, 16, v105
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v49, v119, v8
	v_mul_f32_e32 v50, v118, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.l, 0x7fff, v43.h, vcc_lo
	v_add3_u32 v43, v41, v46, 0x7fff
	v_mov_b16_e32 v46.l, v42.h
	v_mov_b16_e32 v46.h, v6.h
	v_and_b32_e32 v51, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v41, v49, v48, v196
	v_fma_f32 v47, v50, v47, v195
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v48, v40, v51, 0x7fff
	v_cmp_o_f32_e64 s0, v40, v40
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v196, v41, s2
	v_cndmask_b32_e64 v47, v195, v47, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v34.l, 0x7fff, v43.h, vcc_lo
	v_add3_u32 v43, v42, v46, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v48.h, s0
	v_mov_b16_e32 v6.l, v41.h
	v_mov_b16_e32 v46.l, v47.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v48, 16, v92
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v50, v141, v8 :: v_dual_lshlrev_b32 v49, 16, v107
	v_mul_f32_e32 v51, v140, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.h, v6.h
	v_and_b32_e32 v52, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v42, v50, v49, v194
	v_fma_f32 v48, v51, v48, v193
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v46, 1, v46
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v51, v139, v8 :: v_dual_lshlrev_b32 v50, 16, v129
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v49, v41, v52, 0x7fff
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v194, v42, s2
	v_cndmask_b32_e64 v48, v193, v48, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.l, 0x7fff, v43.h, vcc_lo
	v_add3_u32 v43, v47, v46, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v47, v51, v50, v192
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.h, 0x7fff, v49.h, s0
	v_mov_b16_e32 v6.l, v42.h
	v_mov_b16_e32 v46.l, v48.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v52, v138, v8 :: v_dual_lshlrev_b32 v49, 16, v109
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.h, v6.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v192, v47, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v53, 1, v6
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v51, 16, v159
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v49, v52, v49, v191
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v46, 1, v46
	v_mov_b16_e32 v6.l, v47.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v52, v137, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v50, v42, v53, 0x7fff
	v_cmp_o_f32_e64 s0, v42, v42
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v49, v191, v49, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.l, 0x7fff, v43.h, vcc_lo
	v_add3_u32 v43, v48, v46, 0x7fff
	v_and_b32_e32 v54, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v48, v52, v51, v190
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.h, 0x7fff, v50.h, s0
	v_mov_b16_e32 v46.l, v49.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v53, v136, v8 :: v_dual_lshlrev_b32 v50, 16, v158
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.h, v6.h
	v_add3_u32 v51, v47, v54, 0x7fff
	v_cmp_o_f32_e64 s0, v47, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v190, v48, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v50, v53, v50, v189
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v46, 1, v46
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v53, v135, v8 :: v_dual_lshlrev_b32 v52, 16, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v47.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v48, v189, v50, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.l, 0x7fff, v43.h, vcc_lo
	v_add3_u32 v43, v49, v46, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v51.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v51, 16, v160
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v54, v130, v8 :: v_dual_and_b32 v55, 1, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v49, v53, v52, v188
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.l, v48.h
	v_mov_b16_e32 v50.h, v6.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v51, v54, v51, v187
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v52, v47, v55, 0x7fff
	v_cmp_o_f32_e64 s0, v47, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v188, v49, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v50, 1, v50
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v49, v187, v51, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v54, v149, v8 :: v_dual_lshlrev_b32 v53, 16, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v47.h
	v_cndmask_b16 v46.l, 0x7fff, v43.h, vcc_lo
	v_add3_u32 v43, v48, v50, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s0
	v_mov_b16_e32 v51.l, v49.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v52, 16, v56
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v55, v148, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.h, v6.h
	v_and_b32_e32 v56, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v48, v54, v53, v186
	v_fma_f32 v52, v55, v52, v185
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v10, v10, v8 :: v_dual_and_b32 v51, 1, v51
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v53, v47, v56, 0x7fff
	v_cmp_o_f32_e64 s0, v47, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v47, v186, v48, s2
	v_cndmask_b32_e64 v48, v185, v52, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v50.l, 0x7fff, v43.h, vcc_lo
	v_add3_u32 v43, v49, v51, 0x7fff
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s0
	v_mov_b16_e32 v6.l, v47.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v53, v147, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v52.l, v48.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v54, v146, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v52.h, v6.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v2, v2, v8 :: v_dual_and_b32 v55, 1, v6
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v45, v53, v45, v184
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v54, v44, v183
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v49, 1, v52
	v_add3_u32 v52, v47, v55, 0x7fff
	v_cmp_o_f32_e64 s0, v47, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v184, v45, s2
	v_cndmask_b32_e64 v44, v183, v44, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v51.l, 0x7fff, v43.h, vcc_lo
	v_cndmask_b16 v47.h, 0x7fff, v52.h, s0
	v_mov_b16_e32 v6.l, v45.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v52, v145, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v43, v48, v49, 0x7fff
	v_mov_b16_e32 v49.l, v44.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v53, v144, v8 :: v_dual_lshlrev_b32 v38, 16, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.h, v6.h
	v_and_b32_e32 v54, 1, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v39, v52, v39, v182
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v53, v38, v181
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v48, 1, v49
	v_add3_u32 v49, v45, v54, 0x7fff
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v182, v39, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v181, v38, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.h, 0x7fff, v49.h, s0
	v_mov_b16_e32 v6.l, v39.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v49, v143, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v47.l, 0x7fff, v43.h, vcc_lo
	v_add3_u32 v43, v44, v48, 0x7fff
	v_mov_b16_e32 v48.l, v38.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v52, v142, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v48.h, v6.h
	v_and_b32_e32 v53, 1, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v37, v49, v37, v180
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v52, v36, v179
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v44, 1, v48
	v_add3_u32 v48, v39, v53, 0x7fff
	v_cmp_o_f32_e64 s0, v39, v39
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v180, v37, s2
	v_cndmask_b32_e64 v36, v179, v36, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.l, 0x7fff, v43.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.h, 0x7fff, v48.h, s0
	v_mov_b16_e32 v6.l, v37.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v48, 16, v104
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v49, v157, v8
	v_mul_f32_e32 v52, v156, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v39, v38, v44, 0x7fff
	v_mov_b16_e32 v44.l, v36.h
	v_mov_b16_e32 v44.h, v6.h
	v_and_b32_e32 v53, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v49, v48, v178
	v_fma_f32 v35, v52, v35, v177
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v48, v37, v53, 0x7fff
	v_cmp_o_f32_e64 s0, v37, v37
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v178, v38, s2
	v_cndmask_b32_e64 v35, v177, v35, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v52, v155, v8 :: v_dual_lshlrev_b32 v49, 16, v103
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.l, 0x7fff, v39.h, vcc_lo
	v_add3_u32 v38, v36, v44, 0x7fff
	v_cndmask_b16 v39.h, 0x7fff, v48.h, s0
	v_mov_b16_e32 v6.l, v37.h
	v_mov_b16_e32 v44.l, v35.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v53, v154, v8 :: v_dual_lshlrev_b32 v48, 16, v102
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v44.h, v6.h
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v52, v49, v176
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v54, 1, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v48, v53, v48, v175
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v44, 1, v44
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v52, 16, v101
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v176, v36, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v53, v153, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v49, v37, v54, 0x7fff
	v_cmp_o_f32_e64 s0, v37, v37
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v175, v48, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v39.l, 0x7fff, v38.h, vcc_lo
	v_add3_u32 v38, v35, v44, 0x7fff
	v_mov_b16_e32 v6.l, v36.h
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v35, v53, v52, v174
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.h, 0x7fff, v49.h, s0
	v_mov_b16_e32 v48.l, v37.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v49, 16, v100
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v54, v152, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v48.h, v6.h
	v_and_b32_e32 v55, 1, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v174, v35, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v36, v36
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v49, v54, v49, v173
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v52, v36, v55, 0x7fff
	v_mov_b16_e32 v6.l, v35.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v54, v151, v8 :: v_dual_lshlrev_b32 v53, 16, v99
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v173, v49, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.l, 0x7fff, v38.h, vcc_lo
	v_add3_u32 v38, v37, v48, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v52.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v55, v150, v8 :: v_dual_lshlrev_b32 v52, 16, v98
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v56, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v37, v54, v53, v172
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.l, v36.h
	v_mov_b16_e32 v49.h, v6.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v52, v55, v52, v171
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v53, v35, v56, 0x7fff
	v_cmp_o_f32_e64 s0, v35, v35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v172, v37, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v49, 1, v49
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v171, v52, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v35.h
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v11, v19, v134
	v_fma_f32 v12, v12, v20, v170
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v48.l, 0x7fff, v38.h, vcc_lo
	v_add3_u32 v38, v36, v49, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v53.h, s0
	v_mov_b16_e32 v52.l, v37.h
	v_mov_b16_e32 v52.h, v6.h
	v_and_b32_e32 v53, 1, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v170, v12, s2
	v_cndmask_b32_e64 v11, v134, v11, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_and_b32_e32 v19, 1, v52
	v_add3_u32 v20, v35, v53, 0x7fff
	v_cmp_o_f32_e64 s0, v35, v35
	v_mov_b16_e32 v6.l, v12.h
	v_mov_b16_e32 v35.l, v11.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v35.h, v6.h
	v_cndmask_b16 v49.l, 0x7fff, v38.h, vcc_lo
	v_add3_u32 v19, v37, v19, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v36, 1, v6
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v9, v17, v228
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v35
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v10, v18, v232
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v18, v12, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v12, v12
	v_cndmask_b16 v20.l, 0x7fff, v19.h, vcc_lo
	v_add3_u32 v12, v11, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v11, 16, v16
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v232, v10, s2
	v_cndmask_b32_e64 v9, v228, v9, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v11, v233
	v_fma_f32 v3, v3, v15, v168
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s0
	v_mov_b16_e32 v6.l, v10.h
	v_mov_b16_e32 v18.l, v9.h
	v_mov_b16_e32 v18.h, v6.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v233, v4, s2
	v_cndmask_b32_e64 v3, v168, v3, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v14, v229
	v_fma_f32 v1, v1, v13, v248
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v6
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v8.l, v3.h
	v_mov_b16_e32 v8.h, v6.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v229, v2, s2
	v_cndmask_b32_e64 v1, v248, v1, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v17.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v11, v9, v18, 0x7fff
	v_add3_u32 v12, v10, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s0, v9, v9
	v_and_b32_e32 v9, 1, v6
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v10.l, v2.h
	v_mov_b16_e32 v10.h, v6.h
	v_mov_b16_e32 v6.l, v1.h
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v12.l, 0x7fff, v11.h, s0
	v_add3_u32 v8, v3, v8, 0x7fff
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v6, 1, v6
	v_add3_u32 v9, v4, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cmp_o_f32_e64 s0, v3, v3
	v_add3_u32 v3, v2, v10, 0x7fff
	v_add3_u32 v4, v1, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v1, v1
	v_cmp_o_f32_e64 s2, v2, v2
	v_cndmask_b16 v1.h, 0x7fff, v9.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v25
	v_cndmask_b16 v1.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s2
	v_dual_mov_b32 v36, 0x7632 :: v_dual_cndmask_b32 v3, v27, v21
	v_cndmask_b32_e32 v4, v21, v27, vcc_lo
	v_cndmask_b32_e32 v6, v26, v22, vcc_lo
	v_cndmask_b32_e32 v8, v22, v26, vcc_lo
	v_dual_cndmask_b32 v21, v41, v34 :: v_dual_cndmask_b32 v22, v34, v41
	v_cndmask_b32_e32 v34, v1, v17, vcc_lo
	v_cndmask_b32_e32 v1, v17, v1, vcc_lo
	v_mov_b32_e32 v17, 0x5410
	v_dual_cndmask_b32 v35, v2, v12 :: v_dual_cndmask_b32 v2, v12, v2
	v_cndmask_b32_e32 v16, v0, v31, vcc_lo
	v_cndmask_b32_e32 v0, v31, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v12, 0x1054, v17, vcc_lo
	v_cndmask_b32_e32 v17, 0x3276, v36, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v9, v30, v24, vcc_lo
	v_permlanex16_b32 v36, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v12, v12, 8, v12
	v_lshl_or_b32 v17, v17, 8, v17
	v_dual_cndmask_b32 v10, v24, v30 :: v_dual_cndmask_b32 v13, v23, v29
	v_cndmask_b32_e32 v14, v32, v28, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 0x540054, v12
	v_dual_cndmask_b32 v15, v28, v32 :: v_dual_and_b32 v12, 0x760076, v17
	v_dual_cndmask_b32 v19, v33, v40 :: v_dual_cndmask_b32 v24, v42, v50
	v_cndmask_b32_e32 v26, v46, v51, vcc_lo
	v_cndmask_b32_e32 v28, v47, v43, vcc_lo
	v_cndmask_b32_e32 v30, v45, v39, vcc_lo
	v_cndmask_b32_e32 v32, v44, v49, vcc_lo
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v12, v12, 4, v12
	v_cndmask_b32_e32 v18, v40, v33, vcc_lo
	v_cndmask_b32_e32 v33, v20, v48, vcc_lo
	v_dual_cndmask_b32 v20, v48, v20 :: v_dual_cndmask_b32 v11, v29, v23
	v_cndmask_b32_e32 v23, v50, v42, vcc_lo
	v_cndmask_b32_e32 v25, v51, v46, vcc_lo
	v_cndmask_b32_e32 v27, v43, v47, vcc_lo
	v_cndmask_b32_e32 v29, v39, v45, vcc_lo
	v_cndmask_b32_e32 v31, v49, v44, vcc_lo
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x5040504, v0
	v_and_b32_e32 v38, 0x7060706, v12
	v_permlanex16_b32 v39, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v4, v3, v37
	v_perm_b32 v1, v4, v3, v38
	v_perm_b32 v2, v8, v6, v37
	v_perm_b32 v3, v8, v6, v38
	v_perm_b32 v8, v10, v9, v37
	v_perm_b32 v9, v10, v9, v38
	v_perm_b32 v10, v13, v11, v37
	v_perm_b32 v11, v13, v11, v38
	v_perm_b32 v12, v15, v14, v37
	v_perm_b32 v13, v15, v14, v38
	v_perm_b32 v14, v36, v16, v37
	v_perm_b32 v15, v36, v16, v38
	v_perm_b32 v16, v19, v18, v37
	v_perm_b32 v17, v19, v18, v38
	v_perm_b32 v18, v22, v21, v37
	v_perm_b32 v19, v22, v21, v38
	v_perm_b32 v20, v24, v23, v37
	v_perm_b32 v21, v24, v23, v38
	v_perm_b32 v22, v26, v25, v37
	v_perm_b32 v23, v26, v25, v38
	v_perm_b32 v24, v28, v27, v37
	v_perm_b32 v25, v28, v27, v38
	v_perm_b32 v26, v30, v29, v37
	v_perm_b32 v27, v30, v29, v38
	v_perm_b32 v28, v32, v31, v37
	v_perm_b32 v29, v32, v31, v38
	v_and_b32_e32 v32, 0x1e0, v162
	v_perm_b32 v30, v39, v33, v37
	v_perm_b32 v31, v39, v33, v38
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v33, v7, v5, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v4, v40, v34, v37
	v_cmp_eq_u32_e32 vcc_lo, 0, v32
	v_perm_b32 v5, v40, v34, v38
	v_perm_b32 v6, v41, v35, v37
	v_add_nc_u32_e32 v7, 32, v33
	v_add_nc_u32_e32 v32, 64, v33
	v_cndmask_b32_e32 v34, 0x80000000, v33, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v36, 0x80000000, v7, vcc_lo
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[0:3], v34, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v36, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v32, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v33
	v_add_nc_u32_e32 v1, 0x80, v33
	v_add_nc_u32_e32 v2, 0xa0, v33
	v_add_nc_u32_e32 v3, 0xc0, v33
	v_add_nc_u32_e32 v8, 0xe0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_perm_b32 v7, v41, v35, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[16:19], v0, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v1, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v2, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v3, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v8, s[24:27], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 848
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
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 848
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 35336
; TotalNumSgprs: 46
; NumVgprs: 256
; ScratchSize: 848
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 46
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 848
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 211
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
