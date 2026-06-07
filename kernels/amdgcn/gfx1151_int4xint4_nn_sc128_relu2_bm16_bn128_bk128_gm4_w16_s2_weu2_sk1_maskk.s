	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
	v_mov_b32_e32 v158, v0
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s10, s2
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v166, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v226, 0 :: v_dual_lshlrev_b32 v9, 1, v158
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v170, 0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v1, 62, v9
	v_dual_mov_b32 v247, 0 :: v_dual_lshlrev_b32 v8, 4, v158
	v_lshrrev_b32_e32 v3, 3, v158
	v_mov_b32_e32 v161, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v159, 15, v158
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v167, 0 :: v_dual_and_b32 v2, 0x70, v8
	v_mov_b32_e32 v172, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s12, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s12, s12, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s6, s6, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[4:5], null, s7, v3, v[2:3]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v11, 56, v3
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v174, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s9
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v9, v9, v11
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v182, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s9, v0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v186, 0
	s_mul_f32 s9, s9, 0x4f7ffffe
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v190, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s9, s9
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v194, 0
	s_mul_i32 s11, s11, s9
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v196, 0
	s_mul_hi_u32 s11, s9, s11
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v198, 0
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v200, 0
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s8
	s_cmp_ge_u32 s10, s8
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v202, 0
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s8
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v204, 0
	s_cselect_b32 s8, s12, s9
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v206, 0
	s_xor_b32 s8, s8, s11
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v208, 0
	s_sub_i32 s16, s8, s11
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s21, s16, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s16, s16, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s6, s21
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s16
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s16, s2
	s_abs_i32 s18, s6
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v210, 0
	s_cvt_f32_u32 s17, s18
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v214, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s17
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v218, 0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_mov_b32 s11, 0x31027000
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v222, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s17, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v0, 5, v158
	v_dual_mov_b32 v221, 0 :: v_dual_lshlrev_b32 v12, 2, v158
	v_dual_mov_b32 v223, 0 :: v_dual_add_nc_u32 v14, 0, v9
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v112, 0, v8
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v108, v158, 4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s18
	v_or_b32_e32 v163, 0x3f0, v158
	v_or_b32_e32 v224, 0x7f0, v158
	s_mul_i32 s17, s17, s10
	v_or_b32_e32 v106, 0xbf0, v158
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s6
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s16, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s26, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s16, s16, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s16, s18
	s_cmp_ge_u32 s16, s18
	v_or_b32_e32 v51, 0xff0, v158
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s16, s20, s16
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s16, s18
	v_or_b32_e32 v50, 0x13f0, v158
	s_cselect_b32 s5, s19, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s16, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s19, s5, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s22, s4, 0x7f
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s16
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s19, s17
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s20, s3, 6
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s18, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s23, s5, s6
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v7, s20, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s22, 31
.Ltmp15:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[5:6], null, s18, v0, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s23
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v10, s20, v3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s21
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s27, s22, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s18, v7
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 64, v7
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 4
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s6, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s18, v10
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 64, v10
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s27, 7
.Ltmp21:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s2, s33, s18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s22, 0x7f
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s16, s7, s20
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v5, s20, s2, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, vcc_lo, s4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v4, s16, s6, v4
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
	s_mov_b32 s27, s11
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	s_and_b32 s25, s25, 0xffff
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v10, v5, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[4:7], v4, s[24:27], 0 offen
	s_load_b64 s[4:5], s[0:1], 0x20
	v_or_b32_e32 v49, 0x17f0, v158
	v_or_b32_e32 v48, 0x1bf0, v158
	v_or_b32_e32 v47, 0x1ff0, v158
	v_add_nc_u32_e32 v235, 0, v159
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s34, -1
	s_mov_b32 s16, 0
	s_cmpk_lt_i32 s22, 0x100
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v14, v10 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v112, v[4:7]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	s_add_i32 s35, s20, 64
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v158, off offset:808
	scratch_store_b32 off, v12, off offset:836
	v_dual_mov_b32 v177, 0 :: v_dual_and_b32 v4, 56, v12
	v_dual_mov_b32 v223, 0 :: v_dual_add_nc_u32 v12, s35, v3
	s_lshl_b32 s0, s19, 8
	s_lshl_b32 s19, s19, 7
	v_dual_mov_b32 v221, 0 :: v_dual_add_nc_u32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v12, s7, v12
	v_sub_nc_u32_e32 v15, s18, v1
	v_lshl_or_b32 v4, v159, 6, v4
	v_sub_nc_u32_e32 v3, s18, v3
	v_dual_mov_b32 v222, 0 :: v_dual_add_nc_u32 v13, s33, v159
	scratch_store_b32 off, v15, off offset:704 ; 4-byte Folded Spill
	v_xor_b32_e32 v5, 8, v4
	v_add3_u32 v2, v12, s19, v2
	v_xor_b32_e32 v6, 16, v4
	v_xor_b32_e32 v7, 24, v4
	v_xor_b32_e32 v8, 32, v4
	v_xor_b32_e32 v9, 40, v4
	v_mad_u64_u32 v[0:1], null, s18, v0, v[1:2]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:708
	scratch_store_b32 off, v159, off offset:812
	v_xor_b32_e32 v10, 48, v4
	v_mov_b32_e32 v219, 0
	v_xor_b32_e32 v11, 56, v4
	v_mul_lo_u32 v3, s34, v13
	scratch_store_b64 off, v[0:1], off offset:712 ; 8-byte Folded Spill
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v0, 0, v4
	s_lshl_b32 s20, s17, 8
	s_mov_b32 s18, s16
	s_sub_i32 s41, s0, s20
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v0, 0, v5
	s_lshl_b32 s0, s17, 7
	s_mov_b32 s17, s16
	s_mov_b32 s19, s16
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v0, 0, v6
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	v_mov_b32_e32 v211, 0
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_mov_b32_e32 v209, 0
	v_dual_mov_b32 v220, 0 :: v_dual_lshlrev_b32 v115, 1, v3
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v0, 0, v8
	v_subrev_nc_u32_e32 v141, s0, v2
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v193, 0
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v0, 0, v9
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v189, 0
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v0, 0, v10
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v187, 0
	v_mov_b32_e32 v201, 0
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:748
	scratch_store_b32 off, v51, off offset:832
	v_add_nc_u32_e32 v0, 0, v51
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:752
	scratch_store_b32 off, v50, off offset:828
	v_add_nc_u32_e32 v0, 0, v50
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:756
	scratch_store_b32 off, v49, off offset:824
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v0, 0, v49
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:760
	scratch_store_b32 off, v48, off offset:820
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v0, 0, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:764
	scratch_store_b32 off, v47, off offset:816
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v0, 0, v47
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v183, 0
	scratch_store_b32 off, v0, off offset:768 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, s16
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v1, s17
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v3, s19
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v5, s21
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v7, s23
	v_mov_b32_e32 v174, 0
	v_mov_b32_e32 v172, 0
	v_mov_b32_e32 v170, 0
	v_mov_b32_e32 v168, 0
	v_mov_b32_e32 v166, 0
	v_mov_b32_e32 v226, 0
	v_mov_b32_e32 v2, s18
	v_mov_b32_e32 v4, s20
	v_mov_b32_e32 v6, s22
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_max_i32 s40, s1, 1
	s_lshl_b32 s42, s7, 1
	s_lshl_b32 s43, s7, 6
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_clause 0x4                            ; 44-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:772
	scratch_store_b128 off, v[4:7], off offset:788
	scratch_store_b32 off, v224, off offset:696
	scratch_store_b32 off, v14, off offset:700
	scratch_store_b32 off, v163, off offset:804
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	scratch_load_b32 v0, off, off offset:704 ; 4-byte Folded Reload
	s_clause 0x15                           ; 88-byte Folded Spill
	scratch_store_b32 off, v166, off offset:84
	scratch_store_b32 off, v165, off offset:80
	scratch_store_b32 off, v222, off offset:76
	scratch_store_b32 off, v221, off offset:72
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
	scratch_store_b32 off, v161, off
	v_mov_b32_e32 v111, v106
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s40, s40, -1
	v_mov_b32_e32 v113, v141
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(0)
	v_cmp_lt_i32_e64 s0, s35, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	scratch_load_b64 v[0:1], off, off offset:712 ; 8-byte Folded Reload
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s35, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v1, v235 offset:768
	ds_load_u8 v2, v235 offset:896
	ds_load_u8 v204, v235 offset:912
	ds_load_u8 v3, v235 offset:928
	ds_load_u8 v9, v235 offset:512
	ds_load_u8 v10, v235 offset:640
	ds_load_u8 v19, v235 offset:656
	ds_load_u8 v0, v235 offset:672
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[20:23], off, off offset:772
	scratch_load_b128 v[24:27], off, off offset:788
	ds_load_u8 v135, v235 offset:8080
	ds_load_u8 v61, v235 offset:8096
	ds_load_u8 v83, v235 offset:8112
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	scratch_store_b32 off, v3, off offset:408 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:348 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:960
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:288 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:976
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:232 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:992
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:688
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v203, v235 offset:784
	ds_load_u8 v3, v235 offset:800
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:412 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:356 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:832
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:292 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:848
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:236 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:148 ; 4-byte Folded Spill
	ds_load_u8 v2, v235
	ds_load_u8 v3, v235 offset:128
	ds_load_u8 v202, v235 offset:144
	ds_load_u8 v4, v235 offset:160
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:428 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:176
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:704
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:368 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:192
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:720
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:312 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:208
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:736
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:252 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:224
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:752
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:240
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	ds_load_u8 v207, v235 offset:528
	ds_load_u8 v0, v235 offset:544
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v4, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v201, v235 offset:16
	ds_load_u8 v4, v235 offset:32
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:560
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:436 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:48
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:576
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:380 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:64
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:592
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:316 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:80
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:608
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:256 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:96
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:624
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:112
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_perm_b32 v0, v9, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:256
	ds_load_u8 v4, v235 offset:384
	ds_load_u8 v200, v235 offset:400
	ds_load_u8 v5, v235 offset:416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:444 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:432
	v_lshl_or_b32 v9, v3, 16, v2
	ds_load_u8 v0, v235 offset:1664
	ds_load_u8 v1, v235 offset:1536
	ds_load_u8 v2, v235 offset:1520
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v5, off offset:384 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:1648
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:328 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:464
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v1, v235 offset:1920
	ds_load_u8 v2, v235 offset:1792
	ds_load_u8 v3, v235 offset:1776
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v5, off offset:264 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:1904
	v_lshl_or_b32 v12, v1, 16, v0
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:204 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:496
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v3, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:1024
	ds_load_u8 v3, v235 offset:1152
	ds_load_u8 v4, v235 offset:1136
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v5, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v199, v235 offset:272
	ds_load_u8 v5, v235 offset:288
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v4, off offset:216 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:448 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:304
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:392 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:320
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:336 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:336
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:276 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:352
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:212 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:368
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:168 ; 4-byte Folded Spill
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
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:504 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:2544
	scratch_store_b32 off, v5, off offset:224 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:1392
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:240 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:2704
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:544 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:2672
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:244 ; 4-byte Folded Spill
	ds_load_u8 v1, v235 offset:2944
	ds_load_u8 v2, v235 offset:2816
	ds_load_u8 v3, v235 offset:2832
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:552 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:2800
	v_lshl_or_b32 v14, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:248 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:2960
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:560 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:2928
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:260 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:2176
	ds_load_u8 v3, v235 offset:2048
	ds_load_u8 v4, v235 offset:2064
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:600 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:320 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:2192
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:608 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:2160
	scratch_store_b32 off, v5, off offset:228 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:268 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:2432
	ds_load_u8 v4, v235 offset:2304
	ds_load_u8 v5, v235 offset:2320
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v3, 16, v2
	ds_load_u8 v0, v235 offset:3712
	ds_load_u8 v1, v235 offset:3584
	ds_load_u8 v222, v235 offset:3600
	ds_load_u8 v2, v235 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:488 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:3568
	scratch_store_b32 off, v5, off offset:612 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:2288
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:296 ; 4-byte Folded Spill
	ds_load_u8 v221, v235 offset:3728
	ds_load_u8 v2, v235 offset:3744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:516 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:3696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:300 ; 4-byte Folded Spill
	ds_load_u8 v1, v235 offset:3968
	ds_load_u8 v2, v235 offset:3840
	ds_load_u8 v198, v235 offset:3856
	ds_load_u8 v3, v235 offset:3872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:520 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:3824
	v_lshl_or_b32 v16, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:304 ; 4-byte Folded Spill
	ds_load_u8 v194, v235 offset:3984
	ds_load_u8 v3, v235 offset:4000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:532 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:3952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:308 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:3200
	ds_load_u8 v3, v235 offset:3072
	ds_load_u8 v193, v235 offset:3088
	ds_load_u8 v4, v235 offset:3104
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:548 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:3040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:376 ; 4-byte Folded Spill
	ds_load_u8 v185, v235 offset:3216
	ds_load_u8 v4, v235 offset:3232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:556 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:3184
	scratch_store_b32 off, v5, off offset:272 ; 4-byte Folded Spill
	ds_load_u8 v224, v235 offset:2448
	ds_load_u8 v5, v235 offset:2416
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v4, off offset:324 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:280 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:3456
	ds_load_u8 v4, v235 offset:3328
	ds_load_u8 v182, v235 offset:3344
	ds_load_u8 v5, v235 offset:3360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v3, 16, v2
	ds_load_u8 v0, v235 offset:4736
	ds_load_u8 v1, v235 offset:4608
	ds_load_u8 v176, v235 offset:4624
	ds_load_u8 v2, v235 offset:4640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:592 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:4656
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:480 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:4592
	scratch_store_b32 off, v5, off offset:572 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:3312
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:352 ; 4-byte Folded Spill
	ds_load_u8 v161, v235 offset:4752
	ds_load_u8 v2, v235 offset:4768
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:664 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:4784
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:512 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:4720
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:360 ; 4-byte Folded Spill
	ds_load_u8 v1, v235 offset:4992
	ds_load_u8 v2, v235 offset:4864
	ds_load_u8 v157, v235 offset:4880
	ds_load_u8 v3, v235 offset:4896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:672 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:4912
	v_lshl_or_b32 v18, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:528 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:4848
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:364 ; 4-byte Folded Spill
	ds_load_u8 v154, v235 offset:5008
	ds_load_u8 v3, v235 offset:5024
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:680 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:5040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:536 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:4976
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:372 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:4224
	ds_load_u8 v3, v235 offset:4096
	ds_load_u8 v146, v235 offset:4112
	ds_load_u8 v252, v235 offset:4128
	ds_load_u8 v4, v235 offset:4144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:564 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:4064
	scratch_store_b32 off, v5, off offset:332 ; 4-byte Folded Spill
	ds_load_u8 v177, v235 offset:3472
	ds_load_u8 v5, v235 offset:3488
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v4, off offset:432 ; 4-byte Folded Spill
	ds_load_u8 v126, v235 offset:4240
	ds_load_u8 v249, v235 offset:4256
	ds_load_u8 v4, v235 offset:4272
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v5, off offset:580 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:3440
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:576 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:4208
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:340 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:388 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:4480
	ds_load_u8 v4, v235 offset:4352
	ds_load_u8 v39, v235 offset:4368
	ds_load_u8 v245, v235 offset:4384
	ds_load_u8 v5, v235 offset:4400
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v3, 16, v2
	ds_load_u8 v0, v235 offset:5760
	ds_load_u8 v1, v235 offset:5632
	ds_load_u8 v125, v235 offset:5648
	ds_load_u8 v240, v235 offset:5664
	ds_load_u8 v2, v235 offset:5680
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:616 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:5696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:492 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:5616
	scratch_store_b32 off, v5, off offset:588 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:4336
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:416 ; 4-byte Folded Spill
	ds_load_u8 v119, v235 offset:5776
	ds_load_u8 v172, v235 offset:5792
	ds_load_u8 v2, v235 offset:5808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:676 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:5824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:540 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:5744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:420 ; 4-byte Folded Spill
	ds_load_u8 v1, v235 offset:6016
	ds_load_u8 v2, v235 offset:5888
	ds_load_u8 v109, v235 offset:5904
	ds_load_u8 v152, v235 offset:5920
	ds_load_u8 v3, v235 offset:5936
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:688 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:5952
	v_lshl_or_b32 v138, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:568 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:5872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:424 ; 4-byte Folded Spill
	ds_load_u8 v107, v235 offset:6032
	ds_load_u8 v151, v235 offset:6048
	ds_load_u8 v253, v235 offset:6064
	ds_load_u8 v3, v235 offset:6080
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:584 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:6000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:440 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:5248
	ds_load_u8 v3, v235 offset:5120
	ds_load_u8 v98, v235 offset:5136
	ds_load_u8 v144, v235 offset:5152
	ds_load_u8 v241, v235 offset:5168
	ds_load_u8 v4, v235 offset:5184
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:624 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:5088
	scratch_store_b32 off, v5, off offset:396 ; 4-byte Folded Spill
	ds_load_u8 v38, v235 offset:4496
	ds_load_u8 v244, v235 offset:4512
	ds_load_u8 v5, v235 offset:4528
	s_waitcnt lgkmcnt(3)
	scratch_store_b32 off, v4, off offset:472 ; 4-byte Folded Spill
	ds_load_u8 v91, v235 offset:5264
	ds_load_u8 v148, v235 offset:5280
	ds_load_u8 v239, v235 offset:5296
	ds_load_u8 v4, v235 offset:5312
	s_waitcnt lgkmcnt(4)
	scratch_store_b32 off, v5, off offset:604 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:4464
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v4, off offset:636 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:5232
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v5, off offset:400 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:452 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:5504
	ds_load_u8 v4, v235 offset:5376
	ds_load_u8 v56, v235 offset:5392
	ds_load_u8 v132, v235 offset:5408
	ds_load_u8 v237, v235 offset:5424
	ds_load_u8 v5, v235 offset:5440
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v3, 16, v2
	ds_load_u8 v0, v235 offset:6784
	ds_load_u8 v1, v235 offset:6656
	ds_load_u8 v90, v235 offset:6672
	ds_load_u8 v129, v235 offset:6688
	ds_load_u8 v231, v235 offset:6704
	ds_load_u8 v2, v235 offset:6720
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:660 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:6736
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:524 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:6640
	scratch_store_b32 off, v5, off offset:644 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:5360
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v2, off offset:464 ; 4-byte Folded Spill
	ds_load_u8 v81, v235 offset:6800
	ds_load_u8 v110, v235 offset:6816
	ds_load_u8 v147, v235 offset:6832
	ds_load_u8 v243, v235 offset:6848
	ds_load_u8 v2, v235 offset:6864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:628 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:6768
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v2, off offset:468 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:7040
	ds_load_u8 v2, v235 offset:6912
	ds_load_u8 v73, v235 offset:6928
	ds_load_u8 v104, v235 offset:6944
	ds_load_u8 v143, v235 offset:6960
	ds_load_u8 v236, v235 offset:6976
	ds_load_u8 v3, v235 offset:6992
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v2, v2, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:656 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:6896
	v_lshl_or_b32 v140, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:476 ; 4-byte Folded Spill
	ds_load_u8 v72, v235 offset:7056
	ds_load_u8 v99, v235 offset:7072
	ds_load_u8 v133, v235 offset:7088
	ds_load_u8 v232, v235 offset:7104
	ds_load_u8 v3, v235 offset:7120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:668 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:7024
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v3, off offset:484 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:6272
	ds_load_u8 v3, v235 offset:6144
	ds_load_u8 v71, v235 offset:6160
	ds_load_u8 v93, v235 offset:6176
	ds_load_u8 v123, v235 offset:6192
	ds_load_u8 v228, v235 offset:6208
	ds_load_u8 v4, v235 offset:6224
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v3, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:684 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:6112
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v4, off offset:620 ; 4-byte Folded Spill
	ds_load_u8 v66, v235 offset:6288
	ds_load_u8 v101, v235 offset:6304
	ds_load_u8 v122, v235 offset:6320
	ds_load_u8 v163, v235 offset:6336
	ds_load_u8 v254, v235 offset:6352
	ds_load_u8 v4, v235 offset:6256
	scratch_store_b32 off, v5, off offset:456 ; 4-byte Folded Spill
	ds_load_u8 v55, v235 offset:5520
	ds_load_u8 v131, v235 offset:5536
	ds_load_u8 v233, v235 offset:5552
	ds_load_u8 v5, v235 offset:5568
	s_waitcnt lgkmcnt(4)
	scratch_store_b32 off, v4, off offset:496 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:652 ; 4-byte Folded Spill
	ds_load_u8 v5, v235 offset:5488
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v5, off offset:460 ; 4-byte Folded Spill
	ds_load_u8 v4, v235 offset:6528
	ds_load_u8 v5, v235 offset:6400
	ds_load_u8 v76, v235 offset:6416
	ds_load_u8 v89, v235 offset:6432
	ds_load_u8 v120, v235 offset:6448
	ds_load_u8 v156, v235 offset:6464
	ds_load_u8 v251, v235 offset:6480
	ds_load_u8 v0, v235 offset:6384
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v4, 16, v3
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	ds_load_u8 v54, v235 offset:6544
	ds_load_u8 v85, v235 offset:6560
	ds_load_u8 v121, v235 offset:6576
	ds_load_u8 v153, v235 offset:6592
	ds_load_u8 v248, v235 offset:6608
	ds_load_u8 v0, v235 offset:6512
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	ds_load_u8 v1, v235 offset:7808
	ds_load_u8 v2, v235 offset:7680
	ds_load_u8 v50, v235 offset:7696
	ds_load_u8 v87, v235 offset:7712
	ds_load_u8 v116, v235 offset:7728
	ds_load_u8 v150, v235 offset:7744
	ds_load_u8 v242, v235 offset:7760
	ds_load_u8 v0, v235 offset:7776
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:640 ; 4-byte Folded Spill
	ds_load_u8 v0, v235 offset:7664
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:596 ; 4-byte Folded Spill
	ds_load_u8 v49, v235 offset:7824
	ds_load_u8 v74, v235 offset:7840
	ds_load_u8 v94, v235 offset:7856
	ds_load_u8 v124, v235 offset:7872
	ds_load_u8 v158, v235 offset:7888
	ds_load_u8 v255, v235 offset:7904
	ds_load_u8 v0, v235 offset:7792
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	ds_load_u8 v2, v235 offset:8064
	ds_load_u8 v3, v235 offset:7936
	ds_load_u8 v44, v235 offset:7952
	ds_load_u8 v65, v235 offset:7968
	ds_load_u8 v88, v235 offset:7984
	ds_load_u8 v117, v235 offset:8000
	ds_load_u8 v149, v235 offset:8016
	ds_load_u8 v238, v235 offset:8032
	ds_load_u8 v0, v235 offset:7920
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	ds_load_u8 v114, v235 offset:8128
	ds_load_u8 v145, v235 offset:8144
	ds_load_u8 v234, v235 offset:8160
	ds_load_u8 v0, v235 offset:8048
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v3, v235 offset:7296
	ds_load_u8 v4, v235 offset:7168
	ds_load_u8 v37, v235 offset:7184
	ds_load_u8 v57, v235 offset:7200
	ds_load_u8 v77, v235 offset:7216
	ds_load_u8 v103, v235 offset:7232
	ds_load_u8 v130, v235 offset:7248
	ds_load_u8 v229, v235 offset:7264
	ds_load_u8 v159, v235 offset:7136
	ds_load_u8 v36, v235 offset:7312
	ds_load_u8 v53, v235 offset:7328
	ds_load_u8 v75, v235 offset:7344
	ds_load_u8 v102, v235 offset:7360
	ds_load_u8 v128, v235 offset:7376
	ds_load_u8 v162, v235 offset:7392
	ds_load_u8 v0, v235 offset:7280
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v235 offset:7552
	ds_load_u8 v5, v235 offset:7424
	ds_load_u8 v35, v235 offset:7440
	ds_load_u8 v52, v235 offset:7456
	ds_load_u8 v78, v235 offset:7472
	ds_load_u8 v96, v235 offset:7488
	ds_load_u8 v127, v235 offset:7504
	ds_load_u8 v155, v235 offset:7520
	ds_load_u8 v250, v235 offset:7408
	ds_load_u8 v34, v235 offset:7568
	ds_load_u8 v51, v235 offset:7584
	ds_load_u8 v79, v235 offset:7600
	ds_load_u8 v95, v235 offset:7616
	ds_load_u8 v134, v235 offset:7632
	ds_load_u8 v160, v235 offset:7648
	ds_load_u8 v246, v235 offset:7536
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v4, 16, v3
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	scratch_load_b32 v0, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[30:31], v0 offset:8192
	scratch_load_b32 v0, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[30:31], v[20:27] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[32:33], v0 offset:8192
	scratch_load_b32 v0, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[32:33], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[28:29], v0 offset:8192
	scratch_load_b32 v0, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[28:29], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[69:70], v0 offset:8192
	scratch_load_b32 v0, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[69:70], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[67:68], v0 offset:8192
	scratch_load_b32 v0, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[67:68], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[63:64], v0 offset:8192
	scratch_load_b32 v0, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[63:64], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[42:43], v0 offset:8192
	scratch_load_b32 v0, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[42:43], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_load_b64 v[205:206], v0 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[141:142], v[205:206], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v141, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v1
	v_cvt_f32_i32_e32 v139, v2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v1, v207, v19, 0xc0c0004
	v_perm_b32 v2, v203, v204, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v3
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v3, v201, v202, 0xc0c0004
	v_lshl_or_b32 v10, v2, 16, v1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
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
	ds_load_u8 v138, v235 offset:1600
	ds_load_u8 v92, v235 offset:1616
	ds_load_u8 v118, v235 offset:1632
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
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
	ds_load_u8 v48, v235 offset:1968
	ds_load_u8 v80, v235 offset:1984
	ds_load_u8 v86, v235 offset:2000
	ds_load_u8 v18, v235 offset:1824
	ds_load_u8 v47, v235 offset:1840
	ds_load_u8 v82, v235 offset:1856
	ds_load_u8 v84, v235 offset:1872
	ds_load_u8 v142, v235 offset:1888
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v6
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v7
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v235 offset:1040
	ds_load_u8 v4, v235 offset:1168
	ds_load_u8 v17, v235 offset:1184
	ds_load_u8 v46, v235 offset:1200
	ds_load_u8 v62, v235 offset:1216
	ds_load_u8 v97, v235 offset:1232
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v8
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v12, v2, 16, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:504
	scratch_load_b32 v2, off, off offset:544
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v137, v235 offset:1248
	ds_load_u8 v0, v235 offset:1056
	ds_load_u8 v45, v235 offset:1072
	ds_load_u8 v60, v235 offset:1088
	ds_load_u8 v105, v235 offset:1104
	ds_load_u8 v106, v235 offset:1120
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	ds_load_u8 v4, v235 offset:1296
	ds_load_u8 v5, v235 offset:1424
	ds_load_u8 v100, v235 offset:1440
	ds_load_u8 v41, v235 offset:1456
	ds_load_u8 v59, v235 offset:1472
	ds_load_u8 v136, v235 offset:1488
	ds_load_u8 v164, v235 offset:1504
	ds_load_u8 v230, v235 offset:1312
	ds_load_u8 v40, v235 offset:1328
	ds_load_u8 v58, v235 offset:1344
	ds_load_u8 v165, v235 offset:1360
	ds_load_u8 v166, v235 offset:1376
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v0, v0, v17, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v4, v4, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v4, 16, v3
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:552
	scratch_load_b32 v3, off, off offset:560
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:600
	scratch_load_b32 v4, off, off offset:608
	v_lshl_or_b32 v14, v2, 16, v1
	v_perm_b32 v1, v222, v221, 0xc0c0004
	v_perm_b32 v2, v198, v194, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v16, v2, 16, v1
	v_perm_b32 v1, v176, v161, 0xc0c0004
	v_perm_b32 v2, v157, v154, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	scratch_load_b32 v4, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v4, v4, v224, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v13, v4, 16, v3
	v_perm_b32 v3, v193, v185, 0xc0c0004
	v_perm_b32 v4, v182, v177, 0xc0c0004
	v_lshl_or_b32 v15, v4, 16, v3
	v_perm_b32 v3, v146, v126, 0xc0c0004
	v_perm_b32 v4, v39, v38, 0xc0c0004
	v_lshl_or_b32 v39, v2, 16, v1
	v_perm_b32 v1, v125, v119, 0xc0c0004
	v_perm_b32 v2, v109, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v38, v4, 16, v3
	v_perm_b32 v3, v98, v91, 0xc0c0004
	v_perm_b32 v4, v56, v55, 0xc0c0004
	v_lshl_or_b32 v56, v2, 16, v1
	v_perm_b32 v1, v90, v81, 0xc0c0004
	v_perm_b32 v2, v73, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v55, v4, 16, v3
	v_perm_b32 v3, v71, v66, 0xc0c0004
	v_perm_b32 v4, v76, v54, 0xc0c0004
	v_lshl_or_b32 v91, v2, 16, v1
	v_perm_b32 v1, v50, v49, 0xc0c0004
	v_perm_b32 v2, v44, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v90, v4, 16, v3
	v_perm_b32 v3, v37, v36, 0xc0c0004
	v_perm_b32 v4, v35, v34, 0xc0c0004
	v_lshl_or_b32 v126, v2, 16, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v125, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[30:31], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[28:29], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[69:70], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[38:39], v[67:68], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[63:64], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[90:91], v[42:43], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[125:126], v[205:206], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v126, v1
	v_cvt_f32_i32_e32 v125, v2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:92
	scratch_load_b32 v2, off, off offset:404
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v90, v3
	v_cvt_f32_i32_e32 v91, v4
	v_cvt_f32_i32_e32 v135, v5
	v_cvt_f32_i32_e32 v157, v6
	v_cvt_f32_i32_e32 v146, v7
	v_cvt_f32_i32_e32 v140, v8
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:408
	scratch_load_b32 v3, off, off offset:412
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:428
	scratch_load_b32 v4, off, off offset:436
	v_lshl_or_b32 v10, v2, 16, v1
	v_perm_b32 v1, v204, v199, 0xc0c0004
	v_perm_b32 v2, v18, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:444
	scratch_load_b32 v5, off, off offset:448
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
	ds_load_u8 v18, v235 offset:2752
	ds_load_u8 v19, v235 offset:2768
	ds_load_u8 v71, v235 offset:2784
	ds_load_u8 v34, v235 offset:2608
	ds_load_u8 v39, v235 offset:2624
	ds_load_u8 v73, v235 offset:2640
	ds_load_u8 v154, v235 offset:2656
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	ds_load_u8 v1, v235 offset:2848
	ds_load_u8 v2, v235 offset:2976
	ds_load_u8 v35, v235 offset:2992
	ds_load_u8 v66, v235 offset:3008
	ds_load_u8 v230, v235 offset:3024
	ds_load_u8 v36, v235 offset:2864
	ds_load_u8 v72, v235 offset:2880
	ds_load_u8 v161, v235 offset:2896
	ds_load_u8 v176, v235 offset:2912
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	ds_load_u8 v2, v235 offset:2080
	ds_load_u8 v3, v235 offset:2208
	ds_load_u8 v44, v235 offset:2224
	ds_load_u8 v109, v235 offset:2240
	ds_load_u8 v177, v235 offset:2256
	ds_load_u8 v182, v235 offset:2272
	ds_load_u8 v76, v235 offset:2096
	ds_load_u8 v185, v235 offset:2112
	ds_load_u8 v193, v235 offset:2128
	ds_load_u8 v194, v235 offset:2144
	v_lshl_or_b32 v14, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:488
	scratch_load_b32 v1, off, off offset:516
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v235 offset:2336
	ds_load_u8 v4, v235 offset:2464
	ds_load_u8 v98, v235 offset:2480
	ds_load_u8 v198, v235 offset:2496
	ds_load_u8 v199, v235 offset:2512
	ds_load_u8 v204, v235 offset:2528
	ds_load_u8 v107, v235 offset:2352
	ds_load_u8 v221, v235 offset:2368
	ds_load_u8 v222, v235 offset:2384
	ds_load_u8 v224, v235 offset:2400
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:520
	scratch_load_b32 v2, off, off offset:532
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:548
	scratch_load_b32 v3, off, off offset:556
	v_lshl_or_b32 v16, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:592
	scratch_load_b32 v1, off, off offset:664
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:572
	scratch_load_b32 v4, off, off offset:580
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:672
	scratch_load_b32 v2, off, off offset:680
	v_perm_b32 v3, v245, v244, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	v_perm_b32 v2, v252, v249, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v38, v1, 16, v0
	v_lshl_or_b32 v37, v3, 16, v2
	v_perm_b32 v0, v240, v172, 0xc0c0004
	v_perm_b32 v1, v152, v151, 0xc0c0004
	v_perm_b32 v2, v144, v148, 0xc0c0004
	v_perm_b32 v3, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v50, v1, 16, v0
	v_perm_b32 v0, v129, v110, 0xc0c0004
	v_lshl_or_b32 v49, v3, 16, v2
	v_perm_b32 v1, v104, v99, 0xc0c0004
	v_perm_b32 v2, v93, v101, 0xc0c0004
	v_perm_b32 v3, v89, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v55, v1, 16, v0
	v_perm_b32 v0, v87, v74, 0xc0c0004
	v_lshl_or_b32 v54, v3, 16, v2
	v_perm_b32 v1, v65, v61, 0xc0c0004
	v_perm_b32 v2, v57, v53, 0xc0c0004
	v_perm_b32 v3, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v57, v1, 16, v0
	v_lshl_or_b32 v56, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[30:31], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[32:33], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[28:29], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[37:38], v[67:68], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[63:64], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[54:55], v[42:43], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[56:57], v[205:206], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v132, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:96
	scratch_load_b32 v1, off, off offset:344
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v144, v2
	v_cvt_f32_i32_e32 v131, v3
	v_cvt_f32_i32_e32 v152, v4
	v_cvt_f32_i32_e32 v100, v5
	v_cvt_f32_i32_e32 v240, v6
	v_cvt_f32_i32_e32 v151, v7
	v_cvt_f32_i32_e32 v129, v8
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:348
	scratch_load_b32 v2, off, off offset:356
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:368
	scratch_load_b32 v3, off, off offset:380
	v_lshl_or_b32 v10, v1, 16, v0
	v_perm_b32 v0, v207, v200, 0xc0c0004
	v_perm_b32 v1, v47, v48, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v207, off, off offset:68
	scratch_load_b32 v200, off, off offset:40
	v_lshl_or_b32 v12, v1, 16, v0
	v_perm_b32 v0, v34, v17, 0xc0c0004
	v_perm_b32 v1, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v1, 16, v0
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:384
	scratch_load_b32 v4, off, off offset:392
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v3, 16, v2
	v_perm_b32 v2, v45, v46, 0xc0c0004
	v_perm_b32 v3, v40, v41, 0xc0c0004
	ds_load_u8 v0, v235 offset:3632
	ds_load_u8 v1, v235 offset:3760
	ds_load_u8 v17, v235 offset:3776
	ds_load_u8 v34, v235 offset:3792
	ds_load_u8 v65, v235 offset:3808
	ds_load_u8 v40, v235 offset:3648
	ds_load_u8 v41, v235 offset:3664
	ds_load_u8 v46, v235 offset:3680
	v_lshl_or_b32 v11, v3, 16, v2
	v_perm_b32 v2, v76, v44, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v3, v107, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v3, 16, v2
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	ds_load_u8 v1, v235 offset:3888
	ds_load_u8 v2, v235 offset:4016
	ds_load_u8 v47, v235 offset:4032
	ds_load_u8 v51, v235 offset:4048
	ds_load_u8 v52, v235 offset:3904
	ds_load_u8 v53, v235 offset:3920
	ds_load_u8 v54, v235 offset:3936
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	ds_load_u8 v2, v235 offset:3120
	ds_load_u8 v3, v235 offset:3248
	ds_load_u8 v55, v235 offset:3264
	ds_load_u8 v56, v235 offset:3280
	ds_load_u8 v57, v235 offset:3296
	ds_load_u8 v61, v235 offset:3136
	ds_load_u8 v48, v235 offset:3152
	ds_load_u8 v74, v235 offset:3168
	v_lshl_or_b32 v16, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:480
	scratch_load_b32 v1, off, off offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v235 offset:3376
	ds_load_u8 v4, v235 offset:3504
	ds_load_u8 v81, v235 offset:3520
	ds_load_u8 v87, v235 offset:3536
	ds_load_u8 v101, v235 offset:3552
	ds_load_u8 v89, v235 offset:3392
	ds_load_u8 v148, v235 offset:3408
	ds_load_u8 v172, v235 offset:3424
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:528
	scratch_load_b32 v2, off, off offset:536
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:564
	scratch_load_b32 v3, off, off offset:576
	v_lshl_or_b32 v38, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:616
	scratch_load_b32 v1, off, off offset:676
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:588
	scratch_load_b32 v4, off, off offset:604
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	scratch_load_b32 v1, off, off offset:688 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v37, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v253, 0xc0c0004
	v_perm_b32 v2, v241, v239, 0xc0c0004
	v_perm_b32 v3, v237, v233, 0xc0c0004
	v_lshl_or_b32 v36, v1, 16, v0
	v_perm_b32 v0, v231, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v35, v3, 16, v2
	v_perm_b32 v1, v143, v133, 0xc0c0004
	v_perm_b32 v2, v123, v122, 0xc0c0004
	v_perm_b32 v3, v120, v121, 0xc0c0004
	v_lshl_or_b32 v45, v1, 16, v0
	v_perm_b32 v0, v116, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v44, v3, 16, v2
	v_perm_b32 v1, v88, v83, 0xc0c0004
	v_perm_b32 v2, v77, v75, 0xc0c0004
	v_perm_b32 v3, v78, v79, 0xc0c0004
	v_lshl_or_b32 v50, v1, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[30:31], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[28:29], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[69:70], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[37:38], v[67:68], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[63:64], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[44:45], v[42:43], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[205:206], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v107, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:100
	scratch_load_b32 v1, off, off offset:284
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v133, v2
	v_cvt_f32_i32_e32 v110, v3
	v_cvt_f32_i32_e32 v98, v4
	v_cvt_f32_i32_e32 v120, v5
	v_cvt_f32_i32_e32 v119, v6
	v_cvt_f32_i32_e32 v76, v7
	v_cvt_f32_i32_e32 v123, v8
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:288
	scratch_load_b32 v2, off, off offset:292
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:312
	scratch_load_b32 v3, off, off offset:316
	v_lshl_or_b32 v10, v1, 16, v0
	v_perm_b32 v0, v138, v201, 0xc0c0004
	v_perm_b32 v1, v82, v80, 0xc0c0004
	scratch_load_b32 v201, off, off offset:44 ; 4-byte Folded Reload
	v_lshl_or_b32 v12, v1, 16, v0
	v_perm_b32 v0, v39, v18, 0xc0c0004
	v_perm_b32 v1, v72, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v1, 16, v0
	v_perm_b32 v0, v40, v17, 0xc0c0004
	v_perm_b32 v1, v52, v47, 0xc0c0004
	v_lshl_or_b32 v16, v1, 16, v0
	ds_load_u8 v0, v235 offset:4672
	ds_load_u8 v1, v235 offset:4800
	ds_load_u8 v17, v235 offset:4816
	ds_load_u8 v18, v235 offset:4832
	ds_load_u8 v39, v235 offset:4688
	ds_load_u8 v47, v235 offset:4704
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:328
	scratch_load_b32 v4, off, off offset:336
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v3, 16, v2
	v_perm_b32 v2, v60, v62, 0xc0c0004
	v_perm_b32 v3, v58, v59, 0xc0c0004
	v_lshl_or_b32 v11, v3, 16, v2
	v_perm_b32 v2, v185, v109, 0xc0c0004
	v_perm_b32 v3, v221, v198, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v221, off, off offset:72
	scratch_load_b32 v198, off, off offset:32
	v_lshl_or_b32 v13, v3, 16, v2
	v_perm_b32 v2, v61, v55, 0xc0c0004
	v_perm_b32 v3, v89, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v3, 16, v2
	ds_load_u8 v1, v235 offset:4928
	ds_load_u8 v2, v235 offset:5056
	ds_load_u8 v40, v235 offset:5072
	ds_load_u8 v52, v235 offset:4944
	ds_load_u8 v55, v235 offset:4960
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	ds_load_u8 v2, v235 offset:4160
	ds_load_u8 v3, v235 offset:4288
	ds_load_u8 v58, v235 offset:4304
	ds_load_u8 v59, v235 offset:4320
	ds_load_u8 v60, v235 offset:4176
	ds_load_u8 v61, v235 offset:4192
	v_lshl_or_b32 v36, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:492
	scratch_load_b32 v1, off, off offset:540
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v235 offset:4416
	ds_load_u8 v4, v235 offset:4544
	ds_load_u8 v62, v235 offset:4560
	ds_load_u8 v72, v235 offset:4576
	ds_load_u8 v66, v235 offset:4432
	ds_load_u8 v75, v235 offset:4448
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:568
	scratch_load_b32 v2, off, off offset:584
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:624
	scratch_load_b32 v3, off, off offset:636
	v_lshl_or_b32 v38, v1, 16, v0
	scratch_load_b32 v0, off, off offset:660 ; 4-byte Folded Reload
	v_perm_b32 v1, v236, v232, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:644
	scratch_load_b32 v4, off, off offset:652
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v243, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v1, 16, v0
	v_perm_b32 v0, v150, v124, 0xc0c0004
	v_perm_b32 v1, v117, v114, 0xc0c0004
	v_lshl_or_b32 v50, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v3, 16, v2
	v_perm_b32 v2, v228, v163, 0xc0c0004
	v_perm_b32 v3, v156, v153, 0xc0c0004
	scratch_load_b32 v163, off, off offset:804 ; 4-byte Folded Reload
	v_lshl_or_b32 v44, v3, 16, v2
	v_perm_b32 v2, v103, v102, 0xc0c0004
	v_perm_b32 v3, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[30:31], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[28:29], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[69:70], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[67:68], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[37:38], v[63:64], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[44:45], v[42:43], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[205:206], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v89, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:104
	scratch_load_b32 v1, off, off offset:220
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v122, v2
	v_cvt_f32_i32_e32 v116, v3
	v_cvt_f32_i32_e32 v109, v4
	v_cvt_f32_i32_e32 v96, v5
	v_cvt_f32_i32_e32 v94, v6
	v_cvt_f32_i32_e32 v93, v7
	v_cvt_f32_i32_e32 v113, v8
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:232
	scratch_load_b32 v2, off, off offset:236
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:252
	scratch_load_b32 v3, off, off offset:256
	v_lshl_or_b32 v10, v1, 16, v0
	v_perm_b32 v0, v92, v202, 0xc0c0004
	v_perm_b32 v1, v84, v86, 0xc0c0004
	scratch_load_b32 v202, off, off offset:48 ; 4-byte Folded Reload
	v_lshl_or_b32 v12, v1, 16, v0
	v_perm_b32 v0, v73, v19, 0xc0c0004
	v_perm_b32 v1, v161, v230, 0xc0c0004
	scratch_load_b32 v161, off, off         ; 4-byte Folded Reload
	v_lshl_or_b32 v14, v1, 16, v0
	v_perm_b32 v0, v41, v34, 0xc0c0004
	v_perm_b32 v1, v53, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v1, 16, v0
	v_perm_b32 v0, v39, v17, 0xc0c0004
	v_perm_b32 v1, v52, v40, 0xc0c0004
	v_lshl_or_b32 v35, v1, 16, v0
	ds_load_u8 v0, v235 offset:5712
	ds_load_u8 v1, v235 offset:5840
	ds_load_u8 v19, v235 offset:5856
	ds_load_u8 v44, v235 offset:5728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:264
	scratch_load_b32 v4, off, off offset:276
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v3, 16, v2
	v_perm_b32 v2, v105, v97, 0xc0c0004
	v_perm_b32 v3, v165, v136, 0xc0c0004
	v_lshl_or_b32 v11, v3, 16, v2
	v_perm_b32 v2, v193, v177, 0xc0c0004
	v_perm_b32 v3, v222, v199, 0xc0c0004
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v222, off, off offset:76
	scratch_load_b32 v199, off, off offset:36
	scratch_load_b32 v193, off, off offset:24
	scratch_load_b32 v177, off, off offset:12
	v_lshl_or_b32 v13, v3, 16, v2
	v_perm_b32 v2, v48, v56, 0xc0c0004
	v_perm_b32 v3, v148, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v15, v3, 16, v2
	v_perm_b32 v2, v60, v58, 0xc0c0004
	v_perm_b32 v3, v66, v62, 0xc0c0004
	v_lshl_or_b32 v34, v3, 16, v2
	ds_load_u8 v1, v235 offset:6096
	ds_load_u8 v2, v235 offset:5968
	ds_load_u8 v45, v235 offset:5984
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v235 offset:5200
	ds_load_u8 v3, v235 offset:5328
	ds_load_u8 v48, v235 offset:5344
	ds_load_u8 v49, v235 offset:5216
	v_lshl_or_b32 v37, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:524
	scratch_load_b32 v1, off, off offset:628
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	ds_load_u8 v3, v235 offset:5456
	ds_load_u8 v4, v235 offset:5584
	ds_load_u8 v50, v235 offset:5600
	ds_load_u8 v51, v235 offset:5472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v3, 16, v2
	v_perm_b32 v3, v251, v248, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:656
	scratch_load_b32 v2, off, off offset:668
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	scratch_load_b32 v2, off, off offset:684 ; 4-byte Folded Reload
	v_lshl_or_b32 v39, v1, 16, v0
	v_perm_b32 v0, v242, v158, 0xc0c0004
	v_perm_b32 v1, v149, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v254, 0xc0c0004
	v_lshl_or_b32 v38, v3, 16, v2
	v_perm_b32 v2, v130, v128, 0xc0c0004
	v_perm_b32 v3, v127, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[30:31], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[11:12], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[13:14], v[28:29], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[15:16], v[69:70], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[34:35], v[67:68], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[63:64], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[38:39], v[42:43], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[40:41], v[205:206], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v95, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:136
	scratch_load_b32 v1, off, off offset:164
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v81, v2
	v_cvt_f32_i32_e32 v80, v3
	v_cvt_f32_i32_e32 v82, v4
	v_cvt_f32_i32_e32 v79, v8
	v_cvt_f32_i32_e32 v78, v5
	v_cvt_f32_i32_e32 v88, v6
	v_cvt_f32_i32_e32 v77, v7
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:172
	scratch_load_b32 v2, off, off offset:176
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:184
	scratch_load_b32 v3, off, off offset:196
	v_lshl_or_b32 v9, v1, 16, v0
	v_perm_b32 v0, v118, v203, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v203, off, off offset:52
	scratch_load_b32 v1, off, off offset:320
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:204
	scratch_load_b32 v4, off, off offset:212
	s_waitcnt vmcnt(2)
	v_perm_b32 v1, v142, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v1, 16, v0
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	v_perm_b32 v0, v154, v71, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_lshl_or_b32 v8, v3, 16, v2
	v_perm_b32 v2, v106, v137, 0xc0c0004
	v_perm_b32 v3, v166, v164, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v166, off, off offset:84
	scratch_load_b32 v165, off, off offset:80
	s_waitcnt vmcnt(2)
	v_perm_b32 v1, v176, v1, 0xc0c0004
	v_lshl_or_b32 v10, v3, 16, v2
	v_perm_b32 v2, v194, v182, 0xc0c0004
	v_perm_b32 v3, v224, v204, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v224, off, off offset:696
	scratch_load_b32 v204, off, off offset:56
	v_lshl_or_b32 v13, v1, 16, v0
	scratch_load_b32 v1, off, off offset:432 ; 4-byte Folded Reload
	v_perm_b32 v0, v46, v65, 0xc0c0004
	v_lshl_or_b32 v12, v3, 16, v2
	v_perm_b32 v2, v74, v57, 0xc0c0004
	v_perm_b32 v3, v172, v101, 0xc0c0004
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v194, off, off offset:28
	scratch_load_b32 v182, off, off offset:16
	scratch_load_b32 v176, off, off offset:8
	scratch_load_b32 v172, off, off offset:4
	v_lshl_or_b32 v14, v3, 16, v2
	v_perm_b32 v2, v61, v59, 0xc0c0004
	v_perm_b32 v3, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v16, v3, 16, v2
	v_perm_b32 v2, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v51, v50, 0xc0c0004
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
	v_perm_b32 v2, v229, v162, 0xc0c0004
	v_perm_b32 v3, v155, v160, 0xc0c0004
	v_lshl_or_b32 v38, v3, 16, v2
	s_waitcnt vmcnt(4)
	v_perm_b32 v1, v54, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v15, v1, 16, v0
	scratch_load_b32 v1, off, off offset:472 ; 4-byte Folded Reload
	v_perm_b32 v0, v47, v18, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v55, v1, 0xc0c0004
	v_lshl_or_b32 v17, v1, 16, v0
	scratch_load_b32 v1, off, off offset:620 ; 4-byte Folded Reload
	v_perm_b32 v0, v44, v19, 0xc0c0004
	scratch_load_b32 v19, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v1, v45, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v1, 16, v0
	ds_load_u8 v0, v235 offset:6880
	ds_load_u8 v1, v235 offset:6752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v235 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v1, 16, v0
	scratch_load_b32 v0, off, off offset:640 ; 4-byte Folded Reload
	v_perm_b32 v1, v238, v234, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v255, 0xc0c0004
	v_lshl_or_b32 v39, v1, 16, v0
	v_wmma_i32_16x16x16_iu4 v[0:7], v[8:9], v[30:31], v[20:27] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:148
	scratch_load_b32 v185, off, off offset:20
	v_wmma_i32_16x16x16_iu4 v[0:7], v[10:11], v[32:33], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[12:13], v[28:29], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[14:15], v[69:70], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[16:17], v[67:68], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[34:35], v[63:64], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[36:37], v[42:43], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[38:39], v[205:206], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v87, v0
	v_cvt_f32_i32_e32 v101, v1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:152
	scratch_load_b32 v1, off, off offset:156
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v85, v2
	v_cvt_f32_i32_e32 v86, v3
	v_cvt_f32_i32_e32 v83, v4
	v_add_nc_u32_e32 v4, 0, v224
	v_mov_b32_e32 v106, v111
	v_cvt_f32_i32_e32 v8, v5
	v_cvt_f32_i32_e32 v5, v7
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v4, v4
	v_add_nc_u32_e32 v7, 0, v106
	ds_load_u8 v7, v7
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:160
	scratch_load_b32 v2, off, off offset:168
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:140
	scratch_load_b32 v3, off, off offset:144
	v_lshl_or_b32 v0, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_add_nc_u32_e32 v3, 0, v163
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v9, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:216
	scratch_load_b32 v3, off, off offset:224
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:188
	scratch_load_b32 v9, off, off offset:228
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v9, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:192
	scratch_load_b32 v10, off, off offset:200
	v_lshl_or_b32 v2, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	scratch_load_b32 v10, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v4, v10, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v3, v4, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[0:1], v[30:31], v[20:27] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:268
	scratch_load_b32 v1, off, off offset:272
	v_wmma_i32_16x16x16_iu4 v[9:16], v[2:3], v[32:33], v[9:16] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:240
	scratch_load_b32 v2, off, off offset:280
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:244
	scratch_load_b32 v3, off, off offset:248
	v_lshl_or_b32 v0, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	scratch_load_b32 v3, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[9:16], v[0:1], v[28:29], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:324
	scratch_load_b32 v1, off, off offset:332
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:296
	scratch_load_b32 v2, off, off offset:340
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:300
	scratch_load_b32 v3, off, off offset:304
	v_lshl_or_b32 v1, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v0, v3, 0xc0c0004
	scratch_load_b32 v0, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v4, v0
	scratch_load_b32 v0, off, off offset:756 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v19, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[69:70], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:388
	scratch_load_b32 v2, off, off offset:396
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:352
	scratch_load_b32 v3, off, off offset:400
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:360
	scratch_load_b32 v4, off, off offset:364
	v_lshl_or_b32 v1, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	scratch_load_b32 v4, off, off offset:372 ; 4-byte Folded Reload
	ds_load_u8 v7, v0
	scratch_load_b32 v0, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_perm_b32 v4, v4, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[67:68], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:452
	scratch_load_b32 v2, off, off offset:456
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:416
	scratch_load_b32 v3, off, off offset:460
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:420
	scratch_load_b32 v4, off, off offset:424
	v_lshl_or_b32 v1, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	scratch_load_b32 v4, off, off offset:440 ; 4-byte Folded Reload
	ds_load_u8 v17, v0
	scratch_load_b32 v0, off, off offset:764 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_perm_b32 v4, v4, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[63:64], v[9:16] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:496
	scratch_load_b32 v2, off, off offset:500
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:464
	scratch_load_b32 v3, off, off offset:508
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:468
	scratch_load_b32 v4, off, off offset:476
	v_lshl_or_b32 v1, v2, 16, v1
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v3, v4, 0xc0c0004
	scratch_load_b32 v4, off, off offset:484 ; 4-byte Folded Reload
	ds_load_u8 v18, v0
	scratch_load_b32 v0, off, off offset:768 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_perm_b32 v4, v4, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[42:43], v[9:16] neg_lo:[1,1,0]
	scratch_load_b32 v1, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v17, v1, v250, 0xc0c0004
	scratch_load_b32 v1, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v20, v246, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:632
	scratch_load_b32 v2, off, off offset:648
	s_waitcnt vmcnt(0)
	v_perm_b32 v21, v1, v2, 0xc0c0004
	scratch_load_b32 v1, off, off offset:180 ; 4-byte Folded Reload
	ds_load_u8 v0, v0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_perm_b32 v1, v1, v0, 0xc0c0004
	v_lshl_or_b32 v0, v20, 16, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v1, 16, v21
	v_wmma_i32_16x16x16_iu4 v[9:16], v[0:1], v[205:206], v[9:16] neg_lo:[1,1,0]
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:708
	scratch_load_b32 v206, off, off offset:64
	scratch_load_b32 v205, off, off offset:60
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v19, v9
	v_cvt_f32_i32_e32 v18, v10
	v_cvt_f32_i32_e32 v17, v11
	v_cvt_f32_i32_e32 v11, v13
	v_cvt_f32_i32_e32 v10, v14
	v_cvt_f32_i32_e32 v9, v15
	v_cvt_f32_i32_e32 v0, v16
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(2)
	v_cmp_lt_i32_e64 s0, s35, v1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v1, 1, v108
	s_add_i32 s35, s35, 64
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v1, s41, v1
	s_clause 0x1f
	buffer_load_u16 v7, v1, s[36:39], 0 offen
	buffer_load_u16 v99, v1, s[36:39], 0 offen offset:4
	buffer_load_u16 v102, v1, s[36:39], 0 offen offset:8
	buffer_load_u16 v103, v1, s[36:39], 0 offen offset:12
	buffer_load_u16 v75, v1, s[36:39], 0 offen offset:16
	buffer_load_u16 v74, v1, s[36:39], 0 offen offset:20
	buffer_load_u16 v73, v1, s[36:39], 0 offen offset:24
	buffer_load_u16 v72, v1, s[36:39], 0 offen offset:28
	buffer_load_u16 v71, v1, s[36:39], 0 offen offset:32
	buffer_load_u16 v70, v1, s[36:39], 0 offen offset:36
	buffer_load_u16 v69, v1, s[36:39], 0 offen offset:40
	buffer_load_u16 v68, v1, s[36:39], 0 offen offset:44
	buffer_load_u16 v67, v1, s[36:39], 0 offen offset:48
	buffer_load_u16 v66, v1, s[36:39], 0 offen offset:52
	buffer_load_u16 v65, v1, s[36:39], 0 offen offset:56
	buffer_load_u16 v64, v1, s[36:39], 0 offen offset:60
	buffer_load_u16 v63, v1, s[36:39], 0 offen offset:64
	buffer_load_u16 v62, v1, s[36:39], 0 offen offset:68
	buffer_load_u16 v61, v1, s[36:39], 0 offen offset:72
	buffer_load_u16 v60, v1, s[36:39], 0 offen offset:76
	buffer_load_u16 v59, v1, s[36:39], 0 offen offset:80
	buffer_load_u16 v58, v1, s[36:39], 0 offen offset:84
	buffer_load_u16 v57, v1, s[36:39], 0 offen offset:88
	buffer_load_u16 v56, v1, s[36:39], 0 offen offset:92
	buffer_load_u16 v55, v1, s[36:39], 0 offen offset:96
	buffer_load_u16 v54, v1, s[36:39], 0 offen offset:100
	buffer_load_u16 v53, v1, s[36:39], 0 offen offset:104
	buffer_load_u16 v52, v1, s[36:39], 0 offen offset:108
	buffer_load_u16 v51, v1, s[36:39], 0 offen offset:112
	buffer_load_u16 v50, v1, s[36:39], 0 offen offset:116
	buffer_load_u16 v49, v1, s[36:39], 0 offen offset:120
	buffer_load_u16 v48, v1, s[36:39], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v47, v1, s[36:39], 0 offen offset:128
	buffer_load_u16 v46, v1, s[36:39], 0 offen offset:132
	buffer_load_u16 v45, v1, s[36:39], 0 offen offset:136
	buffer_load_u16 v44, v1, s[36:39], 0 offen offset:140
	buffer_load_u16 v43, v1, s[36:39], 0 offen offset:144
	buffer_load_u16 v42, v1, s[36:39], 0 offen offset:148
	buffer_load_u16 v41, v1, s[36:39], 0 offen offset:152
	buffer_load_u16 v40, v1, s[36:39], 0 offen offset:156
	buffer_load_u16 v39, v1, s[36:39], 0 offen offset:160
	buffer_load_u16 v38, v1, s[36:39], 0 offen offset:164
	buffer_load_u16 v37, v1, s[36:39], 0 offen offset:168
	buffer_load_u16 v36, v1, s[36:39], 0 offen offset:172
	buffer_load_u16 v35, v1, s[36:39], 0 offen offset:176
	buffer_load_u16 v34, v1, s[36:39], 0 offen offset:180
	buffer_load_u16 v33, v1, s[36:39], 0 offen offset:184
	buffer_load_u16 v32, v1, s[36:39], 0 offen offset:188
	buffer_load_u16 v31, v1, s[36:39], 0 offen offset:192
	buffer_load_u16 v30, v1, s[36:39], 0 offen offset:196
	buffer_load_u16 v29, v1, s[36:39], 0 offen offset:200
	buffer_load_u16 v28, v1, s[36:39], 0 offen offset:204
	buffer_load_u16 v27, v1, s[36:39], 0 offen offset:208
	buffer_load_u16 v26, v1, s[36:39], 0 offen offset:212
	buffer_load_u16 v25, v1, s[36:39], 0 offen offset:216
	buffer_load_u16 v24, v1, s[36:39], 0 offen offset:220
	buffer_load_u16 v23, v1, s[36:39], 0 offen offset:224
	buffer_load_u16 v22, v1, s[36:39], 0 offen offset:228
	buffer_load_u16 v21, v1, s[36:39], 0 offen offset:232
	buffer_load_u16 v20, v1, s[36:39], 0 offen offset:236
	buffer_load_u16 v16, v1, s[36:39], 0 offen offset:240
	buffer_load_u16 v15, v1, s[36:39], 0 offen offset:244
	buffer_load_u16 v14, v1, s[36:39], 0 offen offset:248
	buffer_load_u16 v13, v1, s[36:39], 0 offen offset:252
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v1, 0x80000000, v141, s0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v104, v115, s[28:31], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[1:4], v1, s[24:27], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v141, s43, v141
	v_add_nc_u32_e32 v115, 2, v115
	s_add_i32 s41, s41, s42
	s_cmp_lg_u32 s40, 0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v112, v[1:4]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v1, 16, v104
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v3, v3, v1 :: v_dual_lshlrev_b32 v2, 16, v7
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v177, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v99
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v139, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v223, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v3, v3, v1 :: v_dual_lshlrev_b32 v2, 16, v102
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v222, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v3, v3, v1 :: v_dual_lshlrev_b32 v2, 16, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v221, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v3, v3, v1 :: v_dual_lshlrev_b32 v2, 16, v75
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v220, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v3, v3, v1 :: v_dual_lshlrev_b32 v2, 16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v219, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v73
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v3, v1
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v218, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v3, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v72
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v0, v0, v1
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v3, v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v217, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v71
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v126, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v216, v3, v2 :: v_dual_mul_f32 v3, v125, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v215, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v69
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v90, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v214, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v91, v1 :: v_dual_lshlrev_b32 v2, 16, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v213, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v67
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v135, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v212, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v157, v1 :: v_dual_lshlrev_b32 v2, 16, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v211, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v65
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v146, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v210, v3, v2 :: v_dual_mul_f32 v3, v140, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v209, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v63
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v132, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v208, v3, v2 :: v_dual_mul_f32 v3, v144, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v207, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v61
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v131, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v206, v3, v2 :: v_dual_mul_f32 v3, v152, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v205, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v59
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v100, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v204, v3, v2 :: v_dual_mul_f32 v3, v240, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v203, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v57
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v151, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v202, v3, v2 :: v_dual_mul_f32 v3, v129, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v201, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v55
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v107, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v200, v3, v2 :: v_dual_mul_f32 v3, v133, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v199, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v53
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v110, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v198, v3, v2 :: v_dual_mul_f32 v3, v98, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v197, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v51
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v120, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v196, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v119, v1 :: v_dual_lshlrev_b32 v2, 16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v195, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v49
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v76, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v194, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v123, v1 :: v_dual_lshlrev_b32 v2, 16, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v193, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v47
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v89, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v192, v3, v2 :: v_dual_mul_f32 v3, v122, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v191, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v45
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v116, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v190, v3, v2 :: v_dual_mul_f32 v3, v109, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v189, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v43
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v96, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v188, v3, v2 :: v_dual_mul_f32 v3, v94, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v187, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v41
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v93, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v186, v3, v2 :: v_dual_mul_f32 v3, v113, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v185, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v39
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v95, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v184, v3, v2 :: v_dual_mul_f32 v3, v81, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v183, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v37
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v80, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v182, v3, v2 :: v_dual_mul_f32 v3, v82, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v181, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v35
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v78, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v180, v3, v2 :: v_dual_mul_f32 v3, v88, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v179, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v33
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v77, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v178, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v79, v1 :: v_dual_lshlrev_b32 v2, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v176, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v87, v1 :: v_dual_lshlrev_b32 v2, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v175, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v101, v1 :: v_dual_lshlrev_b32 v2, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v174, v3, v2
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v29
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v85, v1
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v173, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v86, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v172, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v83, v1 :: v_dual_lshlrev_b32 v2, 16, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v171, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v8, v1 :: v_dual_lshlrev_b32 v2, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v170, v3, v2 :: v_dual_mul_f32 v3, v6, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v25
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v169, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v24
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v5, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v168, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v19, v1 :: v_dual_lshlrev_b32 v2, 16, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v167, v3, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v18, v1 :: v_dual_lshlrev_b32 v2, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v166, v3, v2 :: v_dual_mul_f32 v3, v17, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v2, 16, v21
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v165, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v20
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v12, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v225, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v16
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v11, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v227, v3, v2 :: v_dual_lshlrev_b32 v2, 16, v15
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v10, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v226, v3, v2 :: v_dual_mul_f32 v3, v9, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v1, 16, v13
	v_lshlrev_b32_e32 v2, 16, v14
	scratch_load_b32 v14, off, off offset:700 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v247, v0, v1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v161, v3, v2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v14, v0 offset:8192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v158, off, off offset:808
	scratch_load_b32 v159, off, off offset:812
	scratch_load_b32 v47, off, off offset:816
	scratch_load_b32 v48, off, off offset:820
	scratch_load_b32 v49, off, off offset:824
	scratch_load_b32 v50, off, off offset:828
	scratch_load_b32 v51, off, off offset:832
	scratch_load_b32 v12, off, off offset:836
.LBB0_4:                                ; %Flow601
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v25, 16, v158
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v7, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v8, 0
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
	s_mov_b32 s16, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v5, v235 offset:128
	ds_load_u8 v6, v235
	ds_load_u8 v7, v235 offset:384
	ds_load_u8 v8, v235 offset:256
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v4, 56, v12
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v235 offset:1664
	ds_load_u8 v11, v235 offset:1536
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshl_or_b32 v36, v159, 6, v4
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
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_lshl_or_b32 v11, v14, 16, v13
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[9:10], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:2176
	ds_load_u8 v9, v235 offset:2048
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v16, v15, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[26:33], v[11:12], v[21:22], v[26:33] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[26:33], v[9:10], v[19:20], v[26:33] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[26:33], v[9:10], v[17:18], v[26:33] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[26:33], v[9:10], v[15:16], v[26:33] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[26:33], v[9:10], v[13:14], v[26:33] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[26:33], v[9:10], v[11:12], v[26:33] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:7808
	ds_load_u8 v9, v235 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v235 offset:8064
	ds_load_u8 v10, v235 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v235 offset:7296
	ds_load_u8 v34, v235 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v34, v10, 0xc0c0004
	ds_load_u8 v34, v235 offset:7552
	ds_load_u8 v35, v235 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	v_lshl_or_b32 v35, v9, 16, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v0, v36, 56, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v34, v34, 16, v10
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[9:10], v0 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[34:35], v[9:10], v[26:33] neg_lo:[1,1,0]
	ds_load_u8 v0, v235 offset:656
	ds_load_u8 v34, v235 offset:528
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
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
	v_cvt_f32_i32_e32 v112, v36
	v_cvt_f32_i32_e32 v113, v37
	v_cvt_f32_i32_e32 v114, v38
	v_cvt_f32_i32_e32 v115, v39
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
	v_cvt_f32_i32_e32 v118, v34
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v235 offset:688
	ds_load_u8 v34, v235 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v119, v35
	v_cvt_f32_i32_e32 v120, v36
	v_cvt_f32_i32_e32 v121, v37
	v_cvt_f32_i32_e32 v122, v38
	v_cvt_f32_i32_e32 v123, v39
	v_cvt_f32_i32_e32 v124, v40
	v_cvt_f32_i32_e32 v125, v41
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
	v_cvt_f32_i32_e32 v127, v35
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v235 offset:704
	ds_load_u8 v35, v235 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v128, v36
	v_cvt_f32_i32_e32 v126, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v130, v38
	v_cvt_f32_i32_e32 v131, v39
	v_cvt_f32_i32_e32 v132, v40
	v_cvt_f32_i32_e32 v133, v41
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
	v_cvt_f32_i32_e32 v134, v35
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v235 offset:720
	ds_load_u8 v35, v235 offset:592
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v135, v36
	v_cvt_f32_i32_e32 v136, v37
	v_cvt_f32_i32_e32 v137, v38
	v_cvt_f32_i32_e32 v138, v39
	v_cvt_f32_i32_e32 v139, v40
	v_cvt_f32_i32_e32 v140, v41
	v_cvt_f32_i32_e32 v141, v42
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
	v_cvt_f32_i32_e32 v142, v35
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v235 offset:736
	ds_load_u8 v35, v235 offset:608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v143, v36
	v_cvt_f32_i32_e32 v144, v37
	v_cvt_f32_i32_e32 v145, v38
	v_cvt_f32_i32_e32 v146, v39
	v_cvt_f32_i32_e32 v147, v40
	v_cvt_f32_i32_e32 v148, v41
	v_cvt_f32_i32_e32 v149, v42
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
	v_cvt_f32_i32_e32 v150, v35
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v235 offset:240
	ds_load_u8 v35, v235 offset:112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v151, v36
	v_cvt_f32_i32_e32 v152, v37
	v_cvt_f32_i32_e32 v153, v38
	v_cvt_f32_i32_e32 v154, v39
	v_cvt_f32_i32_e32 v155, v40
	v_cvt_f32_i32_e32 v156, v41
	v_cvt_f32_i32_e32 v157, v42
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
	v_add_nc_u32_e32 v37, 0, v163
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
	v_add_nc_u32_e32 v35, 0, v224
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
	v_add_nc_u32_e32 v23, 0, v106
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
	v_cvt_f32_i32_e32 v0, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_6:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_waitcnt vmcnt(6)
	v_mul_lo_u32 v1, s34, v159
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s0, s1, 0
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s1, s33, s34
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s0, s7
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s1, s1, s0
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s6, s3
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v9, s0, v108, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v1, s1, v1, 1
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v11, 4, v9
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, 8, v9
	v_add_nc_u32_e32 v14, 16, v9
	v_add_nc_u32_e32 v15, 20, v9
	v_add_nc_u32_e32 v16, 24, v9
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v13, v1, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v1, 0x80000000, v11, s2
	v_cndmask_b32_e64 v11, 0x80000000, v12, s2
	v_add_nc_u32_e32 v12, 12, v9
	v_add_nc_u32_e32 v17, 28, v9
	v_cndmask_b32_e64 v10, 0x80000000, v9, s2
	v_add_nc_u32_e32 v18, 32, v9
	v_add_nc_u32_e32 v19, 36, v9
	v_add_nc_u32_e32 v20, 40, v9
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x7
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v21, v1, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v18, s2
	v_cndmask_b32_e64 v18, 0x80000000, v19, s2
	v_cndmask_b32_e64 v19, 0x80000000, v20, s2
	v_add_nc_u32_e32 v20, 44, v9
	v_add_nc_u32_e32 v22, 48, v9
	v_add_nc_u32_e32 v23, 52, v9
	v_add_nc_u32_e32 v24, 56, v9
	v_add_nc_u32_e32 v35, 60, v9
	v_add_nc_u32_e32 v36, 64, v9
	v_add_nc_u32_e32 v37, 0x44, v9
	v_add_nc_u32_e32 v38, 0x48, v9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	s_clause 0x7
	buffer_load_u16 v39, v1, s[8:11], 0 offen
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v36, s2
	v_cndmask_b32_e64 v36, 0x80000000, v37, s2
	v_cndmask_b32_e64 v37, 0x80000000, v38, s2
	v_add_nc_u32_e32 v38, 0x4c, v9
	v_add_nc_u32_e32 v40, 0x50, v9
	v_add_nc_u32_e32 v41, 0x54, v9
	v_add_nc_u32_e32 v42, 0x58, v9
	v_add_nc_u32_e32 v43, 0x5c, v9
	v_add_nc_u32_e32 v44, 0x60, v9
	v_add_nc_u32_e32 v45, 0x64, v9
	v_add_nc_u32_e32 v46, 0x68, v9
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	s_clause 0x7
	buffer_load_u16 v47, v1, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	buffer_load_u16 v37, v37, s[8:11], 0 offen
	buffer_load_u16 v38, v38, s[8:11], 0 offen
	buffer_load_u16 v40, v40, s[8:11], 0 offen
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	buffer_load_u16 v42, v42, s[8:11], 0 offen
	buffer_load_u16 v43, v43, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v44, s2
	v_cndmask_b32_e64 v44, 0x80000000, v45, s2
	v_cndmask_b32_e64 v45, 0x80000000, v46, s2
	v_add_nc_u32_e32 v46, 0x6c, v9
	v_add_nc_u32_e32 v48, 0x70, v9
	v_add_nc_u32_e32 v49, 0x74, v9
	v_add_nc_u32_e32 v50, 0x78, v9
	v_add_nc_u32_e32 v51, 0x7c, v9
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	s_clause 0x7
	buffer_load_u16 v55, v1, s[8:11], 0 offen
	buffer_load_u16 v44, v44, s[8:11], 0 offen
	buffer_load_u16 v45, v45, s[8:11], 0 offen
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	buffer_load_u16 v49, v49, s[8:11], 0 offen
	buffer_load_u16 v50, v50, s[8:11], 0 offen
	buffer_load_u16 v51, v51, s[8:11], 0 offen
	v_add_nc_u32_e32 v52, 0x80, v9
	v_add_nc_u32_e32 v53, 0x84, v9
	v_add_nc_u32_e32 v54, 0x88, v9
	v_add_nc_u32_e32 v56, 0x90, v9
	v_add_nc_u32_e32 v57, 0x94, v9
	v_cndmask_b32_e64 v1, 0x80000000, v52, s2
	v_cndmask_b32_e64 v52, 0x80000000, v53, s2
	v_cndmask_b32_e64 v53, 0x80000000, v54, s2
	v_add_nc_u32_e32 v54, 0x8c, v9
	v_add_nc_u32_e32 v58, 0x98, v9
	v_add_nc_u32_e32 v59, 0x9c, v9
	v_add_nc_u32_e32 v61, 0xa4, v9
	v_add_nc_u32_e32 v62, 0xa8, v9
	v_cndmask_b32_e64 v54, 0x80000000, v54, s2
	v_cndmask_b32_e64 v56, 0x80000000, v56, s2
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	v_cndmask_b32_e64 v58, 0x80000000, v58, s2
	v_cndmask_b32_e64 v59, 0x80000000, v59, s2
	s_clause 0x7
	buffer_load_u16 v63, v1, s[8:11], 0 offen
	buffer_load_u16 v52, v52, s[8:11], 0 offen
	buffer_load_u16 v53, v53, s[8:11], 0 offen
	buffer_load_u16 v54, v54, s[8:11], 0 offen
	buffer_load_u16 v56, v56, s[8:11], 0 offen
	buffer_load_u16 v57, v57, s[8:11], 0 offen
	buffer_load_u16 v58, v58, s[8:11], 0 offen
	buffer_load_u16 v59, v59, s[8:11], 0 offen
	v_add_nc_u32_e32 v64, 0xb0, v9
	v_add_nc_u32_e32 v65, 0xb4, v9
	v_add_nc_u32_e32 v66, 0xb8, v9
	v_add_nc_u32_e32 v67, 0xbc, v9
	v_add_nc_u32_e32 v68, 0xc0, v9
	v_add_nc_u32_e32 v69, 0xc4, v9
	v_add_nc_u32_e32 v70, 0xc8, v9
	v_cndmask_b32_e64 v64, 0x80000000, v64, s2
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	v_add_nc_u32_e32 v72, 0xd0, v9
	v_add_nc_u32_e32 v73, 0xd4, v9
	v_add_nc_u32_e32 v74, 0xd8, v9
	v_add_nc_u32_e32 v75, 0xdc, v9
	v_add_nc_u32_e32 v76, 0xe0, v9
	v_add_nc_u32_e32 v77, 0xe4, v9
	v_add_nc_u32_e32 v78, 0xe8, v9
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	v_add_nc_u32_e32 v80, 0xf0, v9
	v_add_nc_u32_e32 v81, 0xf4, v9
	v_add_nc_u32_e32 v82, 0xf8, v9
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s7
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v25
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	s_mov_b32 s0, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s5, s5, 0xffff
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v34, v34, v13
	v_mul_f32_e32 v0, v0, v13
	v_mul_f32_e32 v26, v26, v13
	v_mul_f32_e32 v4, v4, v13
	s_waitcnt vmcnt(39)
	v_dual_mul_f32 v27, v27, v13 :: v_dual_lshlrev_b32 v10, 16, v10
	s_waitcnt vmcnt(37)
	v_dual_mul_f32 v8, v8, v13 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(35)
	v_dual_mul_f32 v31, v31, v13 :: v_dual_lshlrev_b32 v14, 16, v14
	s_waitcnt vmcnt(34)
	v_dual_mul_f32 v28, v28, v13 :: v_dual_lshlrev_b32 v15, 16, v15
	v_mul_f32_e32 v30, v30, v13
	v_mul_f32_e32 v87, v113, v13
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v26, v10, v177
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v29, v29, v13 :: v_dual_lshlrev_b32 v12, 16, v12
	s_waitcnt vmcnt(33)
	v_dual_mul_f32 v33, v33, v13 :: v_dual_lshlrev_b32 v16, 16, v16
	v_mul_f32_e32 v103, v130, v13
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v85, v111, v13 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v96, v122, v13
	v_mul_f32_e32 v122, v149, v13
	v_mul_f32_e32 v113, v140, v13
	v_dual_mul_f32 v32, v32, v13 :: v_dual_lshlrev_b32 v19, 16, v19
	s_waitcnt vmcnt(27)
	v_dual_mul_f32 v89, v115, v13 :: v_dual_lshlrev_b32 v22, 16, v22
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v84, v110, v13 :: v_dual_lshlrev_b32 v23, 16, v23
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v91, v117, v13 :: v_dual_lshlrev_b32 v24, 16, v24
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v86, v112, v13 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v88, v114, v13 :: v_dual_lshlrev_b32 v47, 16, v47
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v93, v119, v13 :: v_dual_lshlrev_b32 v36, 16, v36
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v97, v123, v13 :: v_dual_lshlrev_b32 v40, 16, v40
	v_dual_mul_f32 v95, v121, v13 :: v_dual_lshlrev_b32 v38, 16, v38
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v99, v125, v13 :: v_dual_lshlrev_b32 v42, 16, v42
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v90, v116, v13 :: v_dual_lshlrev_b32 v43, 16, v43
	v_mul_f32_e32 v92, v118, v13
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v94, v120, v13 :: v_dual_lshlrev_b32 v55, 16, v55
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v101, v127, v13 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v105, v132, v13 :: v_dual_lshlrev_b32 v48, 16, v48
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v107, v134, v13 :: v_dual_lshlrev_b32 v50, 16, v50
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v34, v34, v46, v197
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v98, v124, v13 :: v_dual_lshlrev_b32 v51, 16, v51
	v_mul_f32_e32 v109, v136, v13
	v_mul_f32_e32 v110, v137, v13
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v197, v34, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v60, 0xa0, v9
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v111, v138, v13
	v_mul_f32_e32 v112, v139, v13
	v_mul_f32_e32 v114, v141, v13
	v_mul_f32_e32 v115, v142, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v1, 0x80000000, v60, s2
	v_cndmask_b32_e64 v60, 0x80000000, v61, s2
	v_cndmask_b32_e64 v61, 0x80000000, v62, s2
	v_add_nc_u32_e32 v62, 0xac, v9
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v63, 16, v63
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v56, 16, v56
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v58, 16, v58
	v_lshlrev_b32_e32 v52, 16, v52
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	s_clause 0x7
	buffer_load_u16 v71, v1, s[8:11], 0 offen
	buffer_load_u16 v60, v60, s[8:11], 0 offen
	buffer_load_u16 v61, v61, s[8:11], 0 offen
	buffer_load_u16 v62, v62, s[8:11], 0 offen
	buffer_load_u16 v64, v64, s[8:11], 0 offen
	buffer_load_u16 v65, v65, s[8:11], 0 offen
	buffer_load_u16 v66, v66, s[8:11], 0 offen
	buffer_load_u16 v67, v67, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v68, s2
	v_cndmask_b32_e64 v68, 0x80000000, v69, s2
	v_cndmask_b32_e64 v69, 0x80000000, v70, s2
	v_add_nc_u32_e32 v70, 0xcc, v9
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v116, v143, v13 :: v_dual_lshlrev_b32 v59, 16, v59
	v_mul_f32_e32 v118, v145, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	s_clause 0x7
	buffer_load_u16 v79, v1, s[8:11], 0 offen
	buffer_load_u16 v68, v68, s[8:11], 0 offen
	buffer_load_u16 v69, v69, s[8:11], 0 offen
	buffer_load_u16 v70, v70, s[8:11], 0 offen
	buffer_load_u16 v72, v72, s[8:11], 0 offen
	buffer_load_u16 v73, v73, s[8:11], 0 offen
	buffer_load_u16 v74, v74, s[8:11], 0 offen
	buffer_load_u16 v75, v75, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v76, s2
	v_cndmask_b32_e64 v76, 0x80000000, v77, s2
	v_cndmask_b32_e64 v77, 0x80000000, v78, s2
	v_add_nc_u32_e32 v78, 0xec, v9
	v_add_nc_u32_e32 v9, 0xfc, v9
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v120, v147, v13
	v_mul_f32_e32 v124, v151, v13
	v_mul_f32_e32 v2, v2, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	s_clause 0x7
	buffer_load_u16 v83, v1, s[8:11], 0 offen
	buffer_load_u16 v76, v76, s[8:11], 0 offen
	buffer_load_u16 v77, v77, s[8:11], 0 offen
	buffer_load_u16 v78, v78, s[8:11], 0 offen
	buffer_load_u16 v80, v80, s[8:11], 0 offen
	buffer_load_u16 v81, v81, s[8:11], 0 offen
	buffer_load_u16 v82, v82, s[8:11], 0 offen
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v14, v30, v14, v220
	v_fma_f32 v15, v31, v15, v219
	v_fma_f32 v31, v96, v40, v204
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v29, v12, v221
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v41, 16, v41
	v_lshlrev_b32_e32 v53, 16, v53
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v94, v37, v206
	v_fma_f32 v37, v101, v44, v199
	v_fma_f32 v11, v28, v11, v222
	v_fma_f32 v46, v110, v54, v189
	v_fma_f32 v16, v32, v16, v218
	v_fma_f32 v19, v86, v19, v214
	v_fma_f32 v22, v88, v22, v212
	v_fma_f32 v23, v89, v23, v211
	v_fma_f32 v24, v90, v24, v210
	v_fma_f32 v26, v91, v35, v209
	v_fma_f32 v28, v93, v36, v207
	v_fma_f32 v30, v95, v38, v205
	v_fma_f32 v32, v97, v41, v203
	v_fma_f32 v35, v99, v43, v201
	v_fma_f32 v41, v105, v50, v194
	v_fma_f32 v43, v107, v63, v192
	v_fma_f32 v50, v114, v59, v185
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v222, v11, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v87, v20, v213
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v214, v19, s2
	v_cndmask_b32_e64 v12, v221, v12, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v85, v18, v215
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v25
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v213, v20, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v100, v126, v13
	v_mul_f32_e32 v126, v153, v13
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v215, v18, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v117, v144, v13
	v_mul_f32_e32 v119, v146, v13
	v_mul_f32_e32 v121, v148, v13
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v100, v55, v200
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v123, v150, v13
	v_mul_f32_e32 v104, v131, v13
	v_mul_f32_e32 v102, v128, v13
	v_mul_f32_e32 v125, v152, v13
	v_mul_f32_e32 v127, v154, v13
	v_mul_f32_e32 v129, v156, v13
	v_mul_f32_e32 v3, v3, v13
	v_mul_f32_e32 v108, v135, v13
	v_mul_f32_e32 v106, v133, v13
	v_mul_f32_e32 v5, v5, v13
	v_mul_f32_e32 v7, v7, v13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v108, v52, v191
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v71, 16, v71
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v60, 16, v60
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v61, 16, v61
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v62, 16, v62
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v64, 16, v64
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v66, 16, v66
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v52, v116, v60, v183
	v_fma_f32 v54, v118, v62, v181
	v_fma_f32 v55, v119, v64, v180
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v79, 16, v79
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v68, 16, v68
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v70, 16, v70
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v72, 16, v72
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v59, v123, v79, v175
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v74, 16, v74
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v75, 16, v75
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v60, v124, v68, v174
	v_fma_f32 v62, v126, v70, v172
	v_fma_f32 v63, v127, v72, v171
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v83, 16, v83
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v76, 16, v76
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v77, 16, v77
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v0, v0, v83, v167
	v_fma_f32 v2, v2, v76, v166
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v77, v165
	v_fma_f32 v4, v4, v78, v225
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v167, v0, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v9, v247
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v165, v3, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v177, v10, s2
	v_cndmask_b32_e64 v4, v225, v4, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v130, v157, v13
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v0, v0, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v128, v155, v13
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v40, v104, v49, v195
	v_fma_f32 v49, v113, v58, v186
	v_fma_f32 v58, v122, v67, v176
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v247, v8, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v6, v6, v13
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v13, v27, v21, v223
	.loc	1 187 19 is_stmt 1              ; generate_amdgcn.py:187:19
	v_dual_max_f32 v9, v9, v9 :: v_dual_lshlrev_b32 v80, 16, v80
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v166, v2, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v223, v13, s2
	v_cndmask_b32_e64 v13, v220, v14, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v68, 0, v9
	v_dual_max_f32 v10, v10, v10 :: v_dual_lshlrev_b32 v69, 16, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v9, v13, v13
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v33, v17, v217
	v_fma_f32 v21, v84, v39, v216
	v_fma_f32 v27, v92, v47, v208
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v10, 0, v10 :: v_dual_lshlrev_b32 v65, 16, v65
	v_max_f32_e32 v70, 0, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v33, v98, v42, v202
	v_fma_f32 v38, v102, v45, v198
	v_fma_f32 v39, v103, v48, v196
	v_fma_f32 v42, v106, v51, v193
	v_fma_f32 v45, v109, v53, v190
	v_fma_f32 v47, v111, v56, v188
	v_fma_f32 v48, v112, v57, v187
	v_fma_f32 v51, v115, v71, v184
	v_fma_f32 v53, v117, v61, v182
	v_fma_f32 v56, v120, v65, v179
	v_fma_f32 v57, v121, v66, v178
	v_fma_f32 v61, v125, v69, v173
	v_fma_f32 v64, v128, v73, v170
	v_fma_f32 v65, v129, v74, v169
	v_fma_f32 v66, v130, v75, v168
	v_fma_f32 v7, v7, v82, v161
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v219, v15, s2
	v_cndmask_b32_e64 v15, v218, v16, s2
	v_cndmask_b32_e64 v16, v217, v17, s2
	v_cndmask_b32_e64 v17, v216, v21, s2
	v_cndmask_b32_e64 v21, v212, v22, s2
	v_cndmask_b32_e64 v22, v211, v23, s2
	v_cndmask_b32_e64 v23, v210, v24, s2
	v_cndmask_b32_e64 v24, v209, v26, s2
	v_cndmask_b32_e64 v26, v208, v27, s2
	v_cndmask_b32_e64 v27, v207, v28, s2
	v_cndmask_b32_e64 v28, v206, v29, s2
	v_cndmask_b32_e64 v29, v205, v30, s2
	v_cndmask_b32_e64 v30, v204, v31, s2
	v_cndmask_b32_e64 v31, v203, v32, s2
	v_cndmask_b32_e64 v32, v202, v33, s2
	v_cndmask_b32_e64 v33, v201, v35, s2
	v_cndmask_b32_e64 v35, v200, v36, s2
	v_cndmask_b32_e64 v36, v199, v37, s2
	v_cndmask_b32_e64 v37, v198, v38, s2
	v_cndmask_b32_e64 v38, v196, v39, s2
	v_cndmask_b32_e64 v39, v195, v40, s2
	v_cndmask_b32_e64 v40, v194, v41, s2
	v_cndmask_b32_e64 v41, v193, v42, s2
	v_cndmask_b32_e64 v42, v192, v43, s2
	v_cndmask_b32_e64 v43, v191, v44, s2
	v_cndmask_b32_e64 v44, v190, v45, s2
	v_cndmask_b32_e64 v45, v189, v46, s2
	v_cndmask_b32_e64 v46, v188, v47, s2
	v_cndmask_b32_e64 v47, v187, v48, s2
	v_cndmask_b32_e64 v48, v186, v49, s2
	v_cndmask_b32_e64 v49, v185, v50, s2
	v_cndmask_b32_e64 v50, v184, v51, s2
	v_cndmask_b32_e64 v51, v183, v52, s2
	v_cndmask_b32_e64 v52, v182, v53, s2
	v_cndmask_b32_e64 v53, v181, v54, s2
	v_cndmask_b32_e64 v54, v180, v55, s2
	v_cndmask_b32_e64 v55, v179, v56, s2
	v_cndmask_b32_e64 v56, v178, v57, s2
	v_cndmask_b32_e64 v57, v176, v58, s2
	v_cndmask_b32_e64 v58, v175, v59, s2
	v_cndmask_b32_e64 v59, v174, v60, s2
	v_cndmask_b32_e64 v60, v173, v61, s2
	v_cndmask_b32_e64 v61, v172, v62, s2
	v_cndmask_b32_e64 v62, v171, v63, s2
	v_cndmask_b32_e64 v63, v170, v64, s2
	v_cndmask_b32_e64 v64, v169, v65, s2
	v_cndmask_b32_e64 v65, v168, v66, s2
	v_cndmask_b32_e64 v66, v161, v7, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v7, v11, v11
	v_dual_max_f32 v11, v14, v14 :: v_dual_max_f32 v8, v12, v12
	v_dual_max_f32 v12, v15, v15 :: v_dual_max_f32 v13, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v15, 0, v7
	v_max_f32_e32 v71, 0, v11
	v_max_f32_e32 v11, v19, v19
	v_max_f32_e32 v7, v16, v16
	v_max_f32_e32 v9, v18, v18
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v80, v227
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v69, 0, v8
	v_max_f32_e32 v75, 0, v11
	v_dual_max_f32 v11, v24, v24 :: v_dual_max_f32 v72, 0, v7
	v_dual_max_f32 v76, 0, v13 :: v_dual_max_f32 v13, v26, v26
	v_max_f32_e32 v74, 0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v78, 0, v11 :: v_dual_max_f32 v11, v30, v30
	v_max_f32_e32 v8, v17, v17
	v_max_f32_e32 v79, 0, v13
	v_max_f32_e32 v13, v31, v31
	v_max_f32_e32 v9, v23, v23
	v_max_f32_e32 v31, 0, v11
	v_max_f32_e32 v11, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v73, 0, v8 :: v_dual_max_f32 v80, 0, v13
	v_dual_max_f32 v13, v37, v37 :: v_dual_max_f32 v8, v22, v22
	v_dual_max_f32 v36, 0, v11 :: v_dual_max_f32 v11, v40, v40
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v37, 0, v13
	v_dual_max_f32 v13, v41, v41 :: v_dual_max_f32 v22, 0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v40, 0, v11 :: v_dual_max_f32 v11, v45, v45
	v_dual_max_f32 v8, v28, v28 :: v_dual_max_f32 v41, 0, v13
	v_max_f32_e32 v13, v46, v46
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v81, 16, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v45, 0, v11
	v_max_f32_e32 v11, v50, v50
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v227, v5, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v46, 0, v13 :: v_dual_max_f32 v13, v51, v51
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v31, v31, v31
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v50, 0, v11
	v_dual_max_f32 v11, v55, v55 :: v_dual_max_f32 v12, 0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v51, 0, v13 :: v_dual_mul_f32 v36, v36, v36
	v_max_f32_e32 v13, v56, v56
	v_max_f32_e32 v55, 0, v11
	v_max_f32_e32 v11, v60, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.l, v15.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v56, s7, v159
	.loc	1 187 19 is_stmt 1              ; generate_amdgcn.py:187:19
	v_max_f32_e32 v26, 0, v13
	v_max_f32_e32 v13, v61, v61
	v_max_f32_e32 v19, 0, v11
	v_max_f32_e32 v11, v65, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s7, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v20, 0, v13
	v_dual_max_f32 v16, 0, v11 :: v_dual_max_f32 v11, 0, v0
	v_max_f32_e32 v0, v2, v2
	v_dual_max_f32 v2, v3, v3 :: v_dual_max_f32 v3, v4, v4
	v_max_f32_e32 v4, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v16, v16, v16
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v13, 0, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v13, v13, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.h, v0.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v77, 0, v9
	v_max_f32_e32 v9, v29, v29
	v_dual_max_f32 v29, 0, v8 :: v_dual_max_f32 v8, v33, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.h, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v30, 0, v9 :: v_dual_max_f32 v9, v35, v35
	v_dual_max_f32 v33, 0, v8 :: v_dual_max_f32 v8, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v29, v29, v29
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v35, 0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v9, v39, v39 :: v_dual_max_f32 v38, 0, v8
	v_dual_max_f32 v8, v43, v43 :: v_dual_mul_f32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v39, 0, v9
	v_max_f32_e32 v9, v44, v44
	v_max_f32_e32 v43, 0, v8
	v_max_f32_e32 v8, v48, v48
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v44, 0, v9
	v_dual_max_f32 v9, v49, v49 :: v_dual_max_f32 v48, 0, v8
	v_max_f32_e32 v8, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v49, 0, v9
	v_max_f32_e32 v9, v54, v54
	v_dual_max_f32 v53, 0, v8 :: v_dual_max_f32 v8, v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v24, 0, v8
	v_max_f32_e32 v8, v63, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v63.h, v0.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v54, 0, v9 :: v_dual_max_f32 v9, v59, v59
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v17, 0, v8 :: v_dual_max_f32 v8, 0, v2
	v_dual_max_f32 v2, v66, v66 :: v_dual_max_f32 v23, 0, v9
	v_max_f32_e32 v9, v64, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v8, v8, v8
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v14, 0, v9 :: v_dual_max_f32 v9, 0, v3
	v_max_f32_e32 v3, v67, v67
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v81, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v3, 0, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v226, v6, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v5, v6, v6 :: v_dual_max_f32 v6, 0, v4
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v4, v10, v10
	v_mul_f32_e32 v10, v68, v68
	v_mul_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v10.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v7, v21, v21 :: v_dual_and_b32 v58, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v21, 0, v7
	v_max_f32_e32 v7, v27, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v10, v10, v58, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v58, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v28, 0, v7 :: v_dual_max_f32 v7, v32, v32
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v28, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v32, 0, v7 :: v_dual_max_f32 v7, v34, v34
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v37, v37, v37 :: v_dual_mul_f32 v32, v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v34, 0, v7 :: v_dual_max_f32 v7, v42, v42
	v_max_f32_e32 v42, 0, v7
	v_max_f32_e32 v7, v47, v47
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v59, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v47, 0, v7
	v_max_f32_e32 v7, v52, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v59.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v52, 0, v7 :: v_dual_max_f32 v7, v57, v57
	v_max_f32_e32 v27, 0, v7
	v_max_f32_e32 v7, v62, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v62.h, v0.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v27, v27, v27
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v18, 0, v7 :: v_dual_max_f32 v7, 0, v5
	v_max_f32_e32 v5, 0, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v4.h
	v_mov_b16_e32 v2.h, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v18, v18, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v57, 1, v2
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add3_u32 v2, s33, s6, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v56, 1, v60
	.loc	1 188 19 is_stmt 1              ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v60, v12, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s6, s10
	v_add3_u32 v4, v4, v57, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v57, v71, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v10.h
	v_and_b32_e32 v10, 1, v0
	v_add3_u32 v15, v15, v56, 0x7fff
	v_mov_b16_e32 v56.l, v58.h
	v_mov_b16_e32 v0.l, v57.h
	v_mov_b16_e32 v56.h, v0.h
	v_add3_u32 v10, v59, v10, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v59, v72, v72
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.l, v60.h
	v_and_b32_e32 v12, 1, v0
	v_and_b32_e32 v56, 1, v56
	v_mov_b16_e32 v10.l, v15.h
	v_mov_b16_e32 v0.l, v59.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v57, v12, 0x7fff
	v_add3_u32 v15, v58, v56, 0x7fff
	v_and_b32_e32 v56, 1, v61
	.loc	1 188 19 is_stmt 1              ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v58, v73, v73 :: v_dual_and_b32 v57, 1, v0
	v_mul_f32_e32 v61, v74, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.l, v15.h
	v_add3_u32 v56, v60, v56, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v15, v59, v57, 0x7fff
	v_mov_b16_e32 v57.l, v58.h
	v_mov_b16_e32 v57.h, v0.h
	v_mov_b16_e32 v0.l, v61.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v59, v76, v76 :: v_dual_mul_f32 v60, v75, v75
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v15.l, v56.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v56, 1, v57
	v_and_b32_e32 v57, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v0.l, v59.h
	v_mov_b16_e32 v62.l, v60.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v30, v30, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v56, v58, v56, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v58, v21, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v21, v61, v57, 0x7fff
	v_and_b32_e32 v57, 1, v0
	v_and_b32_e32 v61, 1, v62
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v62, v22, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v63.l, v58.h
	v_mov_b16_e32 v21.l, v56.h
	v_add3_u32 v22, v59, v57, 0x7fff
	v_add3_u32 v56, v60, v61, 0x7fff
	v_mov_b16_e32 v0.l, v62.h
	v_and_b32_e32 v57, 1, v63
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v59, v78, v78 :: v_dual_mul_f32 v60, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v56.h
	v_and_b32_e32 v56, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v57, v58, v57, 0x7fff
	v_mov_b16_e32 v0.l, v59.h
	v_mov_b16_e32 v58.l, v60.h
	v_mov_b16_e32 v58.h, v0.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v61, v79, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v56, v62, v56, 0x7fff
	v_and_b32_e32 v62, 1, v0
	v_mov_b16_e32 v0.l, v28.h
	v_and_b32_e32 v58, 1, v58
	v_mov_b16_e32 v63.l, v61.h
	v_mov_b16_e32 v56.l, v57.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v35, v35, v35 :: v_dual_mul_f32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v60, v58, 0x7fff
	v_add3_u32 v58, v59, v62, 0x7fff
	v_and_b32_e32 v59, 1, v63
	v_and_b32_e32 v60, 1, v0
	v_mov_b16_e32 v0.l, v30.h
	v_mov_b16_e32 v58.l, v57.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v20, v20, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v61, v59, 0x7fff
	v_mov_b16_e32 v59.l, v29.h
	v_mov_b16_e32 v59.h, v0.h
	v_add3_u32 v28, v28, v60, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v60, v80, v80
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.l, v57.h
	v_mov_b16_e32 v61.l, v31.h
	v_and_b32_e32 v57, 1, v59
	v_and_b32_e32 v59, 1, v0
	v_mov_b16_e32 v61.h, v0.h
	v_mov_b16_e32 v0.l, v60.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v14, v14, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v29, v29, v57, 0x7fff
	v_add3_u32 v30, v30, v59, 0x7fff
	v_and_b32_e32 v59, 1, v61
	v_and_b32_e32 v57, 1, v0
	v_mov_b16_e32 v61.l, v32.h
	v_mov_b16_e32 v30.l, v29.h
	v_mov_b16_e32 v0.l, v33.h
	v_add3_u32 v29, v31, v59, 0x7fff
	v_add3_u32 v31, v60, v57, 0x7fff
	v_and_b32_e32 v57, 1, v61
	v_mov_b16_e32 v59.l, v37.h
	v_mov_b16_e32 v59.h, v0.h
	v_mov_b16_e32 v31.l, v29.h
	v_and_b32_e32 v29, 1, v0
	v_add3_u32 v32, v32, v57, 0x7fff
	v_mov_b16_e32 v57.l, v35.h
	v_mov_b16_e32 v57.h, v0.h
	v_mov_b16_e32 v0.l, v36.h
	v_add3_u32 v29, v33, v29, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v33, v34, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v29.l, v32.h
	v_and_b32_e32 v57, 1, v57
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v5, v5, v5 :: v_dual_and_b32 v34, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v33.h
	v_add_nc_u32_e32 v2, 32, v1
	v_add3_u32 v32, v35, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v36, v34, 0x7fff
	v_and_b32_e32 v35, 1, v59
	v_and_b32_e32 v36, 1, v0
	v_mov_b16_e32 v34.l, v32.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v32, v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v35, v37, v35, 0x7fff
	v_add3_u32 v33, v33, v36, 0x7fff
	v_mov_b16_e32 v36.l, v38.h
	v_mov_b16_e32 v36.h, v0.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v39, v40, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v0.l, v32.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v37, v41, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v33.l, v35.h
	v_and_b32_e32 v35, 1, v36
	v_mov_b16_e32 v40.l, v39.h
	v_mov_b16_e32 v40.h, v0.h
	v_and_b32_e32 v36, 1, v0
	v_mov_b16_e32 v0.l, v37.h
	v_add3_u32 v35, v38, v35, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v38, v42, v42
	v_dual_mul_f32 v41, v43, v43 :: v_dual_and_b32 v40, 1, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v32, v32, v36, 0x7fff
	v_and_b32_e32 v36, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v42.l, v38.h
	v_mov_b16_e32 v42.h, v0.h
	v_mov_b16_e32 v32.l, v35.h
	v_add3_u32 v35, v39, v40, 0x7fff
	v_mov_b16_e32 v0.l, v41.h
	v_add3_u32 v36, v37, v36, 0x7fff
	v_and_b32_e32 v37, 1, v42
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v39, v45, v45 :: v_dual_mul_f32 v40, v44, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v35.h
	v_and_b32_e32 v35, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v37, v38, v37, 0x7fff
	v_mov_b16_e32 v0.l, v39.h
	v_mov_b16_e32 v38.l, v40.h
	v_mov_b16_e32 v38.h, v0.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v42, v46, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v35, v41, v35, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v41, v47, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v43, 1, v0
	v_and_b32_e32 v38, 1, v38
	v_mov_b16_e32 v44.l, v42.h
	v_mov_b16_e32 v44.h, v0.h
	v_mov_b16_e32 v0.l, v41.h
	v_mov_b16_e32 v35.l, v37.h
	v_add3_u32 v37, v40, v38, 0x7fff
	v_add3_u32 v38, v39, v43, 0x7fff
	v_and_b32_e32 v39, 1, v44
	v_and_b32_e32 v40, 1, v0
	v_mov_b16_e32 v47.h, v0.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v43, v48, v48
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v37.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v37, v49, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v39, v42, v39, 0x7fff
	v_add3_u32 v40, v41, v40, 0x7fff
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v41.h, v0.h
	v_mov_b16_e32 v0.l, v37.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v42, v51, v51
	v_mul_f32_e32 v44, v50, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v40.l, v39.h
	v_and_b32_e32 v39, 1, v41
	v_and_b32_e32 v41, 1, v0
	v_mov_b16_e32 v0.l, v42.h
	v_mov_b16_e32 v45.l, v44.h
	v_mov_b16_e32 v45.h, v0.h
	v_add3_u32 v39, v43, v39, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v43, v52, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v37, v37, v41, 0x7fff
	v_and_b32_e32 v41, 1, v0
	v_and_b32_e32 v45, 1, v45
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v46, v53, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v47.l, v43.h
	v_mov_b16_e32 v37.l, v39.h
	v_add3_u32 v41, v42, v41, 0x7fff
	v_add3_u32 v39, v44, v45, 0x7fff
	v_mov_b16_e32 v0.l, v46.h
	v_and_b32_e32 v42, 1, v47
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v44, v55, v55 :: v_dual_mul_f32 v45, v54, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.l, v39.h
	v_and_b32_e32 v39, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v42, v43, v42, 0x7fff
	v_mov_b16_e32 v0.l, v44.h
	v_mov_b16_e32 v43.l, v45.h
	v_mov_b16_e32 v43.h, v0.h
	v_add3_u32 v39, v46, v39, 0x7fff
	v_mov_b16_e32 v47.l, v26.h
	v_and_b32_e32 v46, 1, v0
	v_mov_b16_e32 v39.l, v42.h
	v_and_b32_e32 v43, 1, v43
	v_mov_b16_e32 v0.l, v27.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v7, v7, v7
	v_mul_f32_e32 v3, v3, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v25, v33, v36, vcc_lo
	v_add3_u32 v42, v45, v43, 0x7fff
	v_add3_u32 v43, v44, v46, 0x7fff
	v_and_b32_e32 v44, 1, v47
	v_and_b32_e32 v45, 1, v0
	v_mov_b16_e32 v42.l, v24.h
	v_mov_b16_e32 v43.l, v42.h
	v_mov_b16_e32 v42.h, v0.h
	v_add3_u32 v26, v26, v44, 0x7fff
	v_mov_b16_e32 v44.h, v0.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v19, v19, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v27, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v27.l, v26.h
	v_and_b32_e32 v26, 1, v42
	v_mov_b16_e32 v44.l, v19.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v24, v24, v26, 0x7fff
	v_mov_b16_e32 v0.l, v23.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v42, 1, v0
	v_mov_b16_e32 v0.l, v20.h
	v_add3_u32 v23, v23, v42, 0x7fff
	v_and_b32_e32 v42, 1, v44
	v_mov_b16_e32 v44.l, v18.h
	v_mov_b16_e32 v23.l, v24.h
	v_and_b32_e32 v26, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v24, 1, v44
	v_add3_u32 v19, v19, v42, 0x7fff
	v_add3_u32 v20, v20, v26, 0x7fff
	v_mov_b16_e32 v26.h, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v18, v18, v24, 0x7fff
	v_mov_b16_e32 v24.l, v14.h
	v_mov_b16_e32 v24.h, v0.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v17, v17, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v20.l, v19.h
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v0.l, v17.h
	v_add3_u32 v14, v14, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v19, 1, v0
	v_mov_b16_e32 v0.l, v16.h
	v_cndmask_b32_e32 v24, v36, v33, vcc_lo
	v_mov_b16_e32 v14.l, v8.h
	v_cndmask_b32_e32 v33, v27, v39, vcc_lo
	v_add3_u32 v17, v17, v19, 0x7fff
	v_and_b32_e32 v19, 1, v0
	v_mov_b16_e32 v17.l, v18.h
	v_mov_b16_e32 v0.l, v13.h
	v_cndmask_b32_e32 v27, v39, v27, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v16, v16, v19, 0x7fff
	v_mov_b16_e32 v16.l, v14.h
	v_mov_b16_e32 v14.h, v0.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v11, v11, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v19, 1, v0
	v_permlanex16_b32 v27, v27, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v14, 1, v14
	v_mov_b16_e32 v26.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v8, v8, v14, 0x7fff
	v_and_b32_e32 v18, 1, v26
	v_cndmask_b32_e32 v26, v40, v35, vcc_lo
	v_add3_u32 v13, v13, v19, 0x7fff
	v_mov_b16_e32 v19.h, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v11, v11, v18, 0x7fff
	v_mov_b16_e32 v18.l, v6.h
	v_mov_b16_e32 v18.h, v0.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v9, v9, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v11.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v0.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v6, v18, 0x7fff
	v_and_b32_e32 v11, 1, v0
	v_mov_b16_e32 v0.l, v7.h
	v_cndmask_b32_e32 v18, v29, v30, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v0
	v_mov_b16_e32 v0.l, v3.h
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v7, v7, v14, 0x7fff
	v_cndmask_b32_e32 v14, v31, v28, vcc_lo
	v_mov_b16_e32 v19.l, v5.h
	v_mov_b16_e32 v7.l, v6.h
	v_add3_u32 v0, v3, v0, 0x7fff
	v_dual_cndmask_b32 v3, v4, v12 :: v_dual_cndmask_b32 v6, v15, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v36, v7, v13 :: v_dual_and_b32 v19, 1, v19
	v_cndmask_b32_e32 v7, v13, v7, vcc_lo
	v_mov_b32_e32 v13, 0x5410
	v_add3_u32 v5, v5, v19, 0x7fff
	v_cndmask_b32_e32 v19, v30, v29, vcc_lo
	v_cndmask_b32_e32 v30, v38, v37, vcc_lo
	v_add3_u32 v9, v9, v11, 0x7fff
	v_mov_b16_e32 v9.l, v8.h
	v_mov_b16_e32 v0.l, v5.h
	v_dual_cndmask_b32 v5, v12, v4 :: v_dual_cndmask_b32 v4, v10, v15
	v_cndmask_b32_e32 v11, v58, v22, vcc_lo
	v_dual_cndmask_b32 v15, v28, v31 :: v_dual_cndmask_b32 v28, v35, v40
	v_cndmask_b32_e32 v35, v16, v20, vcc_lo
	v_cndmask_b32_e32 v16, v20, v16, vcc_lo
	v_mov_b32_e32 v20, 0x7632
	v_cndmask_b32_e32 v8, v56, v21, vcc_lo
	v_cndmask_b32_e32 v10, v21, v56, vcc_lo
	v_cndmask_b32_e32 v12, v22, v58, vcc_lo
	v_dual_cndmask_b32 v21, v32, v34 :: v_dual_cndmask_b32 v22, v34, v32
	v_cndmask_b32_e32 v29, v37, v38, vcc_lo
	v_dual_cndmask_b32 v34, v17, v23 :: v_dual_cndmask_b32 v37, v0, v9
	v_cndmask_b32_e32 v0, v9, v0, vcc_lo
	v_permlanex16_b32 v9, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v3, 0x1054, v13, vcc_lo
	v_cndmask_b32_e32 v13, 0x3276, v20, vcc_lo
	v_permlanex16_b32 v20, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v32, v41, v43 :: v_dual_cndmask_b32 v17, v23, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, v3, 8, v3
	v_lshl_or_b32 v4, v13, 8, v13
	v_cndmask_b32_e32 v31, v43, v41, vcc_lo
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v3, 0x540054, v3
	v_and_b32_e32 v4, 0x760076, v4
	v_permlanex16_b32 v13, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v4, v4, 4, v4
	v_permlanex16_b32 v23, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v38, 0x5040504, v3
	v_permlanex16_b32 v22, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v39, 0x7060706, v4
	v_permlanex16_b32 v40, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v9, v5, v38
	v_perm_b32 v7, v10, v8, v38
	v_perm_b32 v17, v22, v24, v38
	v_perm_b32 v4, v9, v5, v39
	v_perm_b32 v5, v20, v6, v38
	v_perm_b32 v6, v20, v6, v39
	v_perm_b32 v8, v10, v8, v39
	v_perm_b32 v9, v12, v11, v38
	v_perm_b32 v10, v12, v11, v39
	v_perm_b32 v11, v13, v14, v38
	v_perm_b32 v12, v13, v14, v39
	v_perm_b32 v13, v15, v18, v38
	v_perm_b32 v14, v15, v18, v39
	v_perm_b32 v15, v19, v21, v38
	v_perm_b32 v16, v19, v21, v39
	v_perm_b32 v18, v22, v24, v39
	v_perm_b32 v19, v23, v26, v38
	v_perm_b32 v20, v23, v26, v39
	v_perm_b32 v21, v25, v29, v38
	v_perm_b32 v22, v25, v29, v39
	v_perm_b32 v23, v28, v31, v38
	v_perm_b32 v24, v28, v31, v39
	v_perm_b32 v25, v27, v33, v38
	v_perm_b32 v26, v27, v33, v39
	v_perm_b32 v27, v30, v34, v38
	v_perm_b32 v28, v30, v34, v39
	v_and_b32_e32 v34, 0x1e0, v158
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v29, v32, v35, v38
	v_perm_b32 v30, v32, v35, v39
	v_perm_b32 v31, v40, v36, v38
	v_cmp_eq_u32_e32 vcc_lo, 0, v34
	v_add_nc_u32_e32 v34, 64, v1
	v_perm_b32 v32, v40, v36, v39
	v_perm_b32 v33, v0, v37, v38
	v_dual_cndmask_b32 v35, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v36, 0x80000000, v34, vcc_lo
	v_perm_b32 v34, v0, v37, v39
	v_add_nc_u32_e32 v0, 0x60, v1
	s_clause 0x2
	buffer_store_b128 v[3:6], v35, s[4:7], 0 offen
	buffer_store_b128 v[7:10], v2, s[4:7], 0 offen
	buffer_store_b128 v[11:14], v36, s[4:7], 0 offen
	v_add_nc_u32_e32 v2, 0x80, v1
	v_add_nc_u32_e32 v3, 0xa0, v1
	v_add_nc_u32_e32 v4, 0xc0, v1
	v_add_nc_u32_e32 v1, 0xe0, v1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[4:7], 0 offen
	buffer_store_b128 v[19:22], v2, s[4:7], 0 offen
	buffer_store_b128 v[23:26], v3, s[4:7], 0 offen
	buffer_store_b128 v[27:30], v4, s[4:7], 0 offen
	buffer_store_b128 v[31:34], v1, s[4:7], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 844
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 844
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 35220
; TotalNumSgprs: 46
; NumVgprs: 256
; ScratchSize: 844
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 844
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 210
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
