	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
	v_mov_b32_e32 v83, v0
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v2, 7, v83
	v_lshlrev_b32_e32 v1, 1, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 4, v2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_lshlrev_b32_e32 v12, 1, v83
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_lshlrev_b32_e32 v13, 4, v83
	v_or_b32_e32 v15, 0x7f0, v83
	v_or_b32_e32 v16, 0xbf0, v83
	v_or_b32_e32 v17, 0xff0, v83
	v_or_b32_e32 v18, 0x13f0, v83
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
	v_or_b32_e32 v19, 0x17f0, v83
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v23, 0, v13
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_or_b32_e32 v20, 0x1bf0, v83
	v_or_b32_e32 v21, 0x1ff0, v83
	v_rcp_iflag_f32_e32 v0, s7
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_add_nc_u32_e32 v22, 0, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s16, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s18, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s18
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s17, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s17
	v_readfirstlane_b32 s17, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v0, 3, v83
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[3:4], null, s26, v0, v[1:2]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s10
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s18
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s7
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s6, s6, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s6, s19, s5
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s35, s27, 1
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s6, s6, s17
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s5, s3, 6
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[4:5], null, s35, v0, v[2:3]
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s7, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s19, s4, 0x7f
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s23, s6, s17
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s5, v0
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s20, s19, 31
.Ltmp15:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s18, s23, s18
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s7, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s20, 25
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s18
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s22, s35, s5
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s23, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s19, s4
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s7, v6
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 64, v6
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v4, s33, s22, v4
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s21, s26, s5
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s44, s20, 7
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s19, 0x7f
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v3, s21, s34, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, s4, vcc_lo
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v5, s27, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s9, s9, 0xffff
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v7, 0x80000000, v5, vcc_lo
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u16 v11, v3, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b128 v[3:6], v4, s[28:31], 0 offen
	buffer_load_b128 v[7:10], v7, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s19, 0xff
	s_mov_b32 s16, -1
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(2)
	ds_store_b16 v22, v11 offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v23, v[3:6]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v23, v[7:10] offset:8192
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr9
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v3, 0x7f0, v83
	v_or_b32_e32 v4, 0xbf0, v83
	v_or_b32_e32 v5, 0xff0, v83
	v_or_b32_e32 v6, 0x13f0, v83
	v_or_b32_e32 v7, 0x17f0, v83
	v_or_b32_e32 v8, 0x1bf0, v83
	v_or_b32_e32 v9, 0x1ff0, v83
	s_mov_b32 s16, 0
.LBB0_2:                                ; %Flow2008
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v26, 15, v83
	v_or_b32_e32 v10, 0x3f0, v83
	v_bfe_u32 v27, v83, 4, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v211, 0, v26
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v75, 0, v10
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v209, 0
	v_mov_b32_e32 v213, 0
	v_mov_b32_e32 v13, 0
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s1, s44, -1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v75, off offset:592
	scratch_store_b32 off, v26, off offset:672
	scratch_store_b32 off, v27, off offset:676
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	v_dual_mov_b32 v14, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v4, s7, v0
	s_lshl_b32 s7, s6, 8
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v3, s3, 7, v3
	s_add_i32 s3, s7, s35
	s_lshl_b32 s18, s17, 8
	s_add_i32 s5, s5, 64
	s_sub_i32 s3, s3, s18
	s_sub_i32 s7, s7, s18
	s_mov_b32 s18, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v0, s5, v0
	s_lshl_b32 s19, s6, 7
	s_lshl_b32 s17, s17, 7
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v205, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v0, s26, v0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v210, 0
	v_mov_b32_e32 v201, 0
	v_add3_u32 v1, v0, s34, v1
	v_add_nc_u32_e32 v0, 0, v15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:608
	scratch_store_b32 off, v16, off offset:688
	v_add_nc_u32_e32 v0, 0, v16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:612
	scratch_store_b32 off, v17, off offset:692
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v0, 0, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:616
	scratch_store_b32 off, v18, off offset:696
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v0, 0, v18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:620
	scratch_store_b32 off, v19, off offset:700
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v0, 0, v19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:624
	scratch_store_b32 off, v20, off offset:704
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v0, 0, v20
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v4, off offset:600
	scratch_store_b32 off, v83, off offset:680
	scratch_store_b32 off, v21, off offset:708
	scratch_store_b32 off, v0, off offset:628
	v_lshlrev_b32_e32 v4, 1, v27
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v0, 0, v21
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v153, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v4, off offset:604
	scratch_store_b32 off, v15, off offset:684
	scratch_store_b32 off, v0, off offset:632
	v_add_nc_u32_e32 v4, 0x81, v3
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v3, 0x80, v3
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v206, 0
	v_mov_b32_e32 v155, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v4, s27, v4
	v_mul_lo_u32 v3, s27, v3
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v158, 0
	v_mov_b32_e32 v199, 0
	v_add3_u32 v4, v4, s19, v2
	v_add3_u32 v2, v3, s19, v2
	s_mov_b32 s19, s16
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v149, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v80, s17, v4
	v_subrev_nc_u32_e32 v2, s17, v2
	s_mov_b32 s17, s16
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v5, s34, v26
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v156, 0
	v_mov_b32_e32 v195, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v5, s44, v5
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v143, 0
	v_lshlrev_b32_e32 v69, 1, v5
	v_dual_mov_b32 v3, s16 :: v_dual_mov_b32 v4, s17
	v_dual_mov_b32 v5, s18 :: v_dual_mov_b32 v6, s19
	v_dual_mov_b32 v7, s20 :: v_dual_mov_b32 v8, s21
	v_dual_mov_b32 v9, s22 :: v_dual_mov_b32 v10, s23
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v85, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v100, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s0, s1, 1
	s_lshl_b32 s6, s27, 2
	s_lshl_b32 s45, s27, 7
	s_lshl_b32 s26, s26, 6
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_clause 0x3                            ; 40-byte Folded Spill
	scratch_store_b128 off, v[3:6], off offset:636
	scratch_store_b128 off, v[7:10], off offset:652
	scratch_store_b32 off, v23, off offset:668
	scratch_store_b32 off, v22, off offset:596
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	scratch_load_b32 v0, off, off offset:600 ; 4-byte Folded Reload
	s_clause 0xd                            ; 56-byte Folded Spill
	scratch_store_b32 off, v25, off offset:16
	scratch_store_b32 off, v24, off offset:8
	scratch_store_b32 off, v11, off
	scratch_store_b32 off, v14, off offset:20
	scratch_store_b32 off, v13, off offset:12
	scratch_store_b32 off, v12, off offset:4
	scratch_store_b32 off, v90, off offset:52
	scratch_store_b32 off, v232, off offset:48
	scratch_store_b32 off, v233, off offset:44
	scratch_store_b32 off, v86, off offset:40
	scratch_store_b32 off, v196, off offset:36
	scratch_store_b32 off, v194, off offset:32
	scratch_store_b32 off, v85, off offset:28
	scratch_store_b32 off, v190, off offset:24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s0, s0, -1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_waitcnt vmcnt(0)
	v_cmp_lt_i32_e32 vcc_lo, s5, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s5, s5, 64
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e32 v0, 0x80000000, v1, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v1, s26, v1
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v0, v211 offset:16464
	ds_load_u8 v9, v211 offset:16448
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b128 v[214:217], off, off offset:636
	scratch_load_b128 v[218:221], off, off offset:652
	scratch_load_b32 v7, off, off offset:628
	scratch_load_b32 v8, off, off offset:632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:16496
	ds_load_u8 v10, v211 offset:16480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:16400
	ds_load_u8 v11, v211 offset:16384
	v_lshl_or_b32 v30, v9, 16, v0
	ds_load_u8 v0, v211 offset:640
	ds_load_u8 v9, v211 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:16432
	ds_load_u8 v12, v211 offset:16416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v11, 16, v10
	ds_load_u8 v9, v211 offset:896
	ds_load_u8 v10, v211 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:128
	ds_load_u8 v11, v211
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v211 offset:16592
	ds_load_u8 v9, v211 offset:16576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:384
	ds_load_u8 v12, v211 offset:256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v211 offset:16624
	ds_load_u8 v10, v211 offset:16608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:16528
	ds_load_u8 v11, v211 offset:16512
	v_lshl_or_b32 v36, v9, 16, v0
	ds_load_u8 v0, v211 offset:1664
	ds_load_u8 v9, v211 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:16560
	ds_load_u8 v12, v211 offset:16544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v11, 16, v10
	ds_load_u8 v9, v211 offset:1920
	ds_load_u8 v10, v211 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:1152
	ds_load_u8 v11, v211 offset:1024
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v211 offset:16720
	ds_load_u8 v9, v211 offset:16704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:1408
	ds_load_u8 v12, v211 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v211 offset:16752
	ds_load_u8 v10, v211 offset:16736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:16656
	ds_load_u8 v11, v211 offset:16640
	v_lshl_or_b32 v34, v9, 16, v0
	ds_load_u8 v0, v211 offset:2688
	ds_load_u8 v9, v211 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:16688
	ds_load_u8 v12, v211 offset:16672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v11, 16, v10
	ds_load_u8 v9, v211 offset:2944
	ds_load_u8 v10, v211 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:2176
	ds_load_u8 v11, v211 offset:2048
	v_lshl_or_b32 v38, v9, 16, v0
	ds_load_u8 v0, v211 offset:16848
	ds_load_u8 v9, v211 offset:16832
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:2432
	ds_load_u8 v12, v211 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v11, 16, v10
	ds_load_u8 v9, v211 offset:16880
	ds_load_u8 v10, v211 offset:16864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:16784
	ds_load_u8 v11, v211 offset:16768
	v_lshl_or_b32 v32, v9, 16, v0
	ds_load_u8 v0, v211 offset:3712
	ds_load_u8 v9, v211 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:16816
	ds_load_u8 v12, v211 offset:16800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v11, 16, v10
	ds_load_u8 v9, v211 offset:3968
	ds_load_u8 v10, v211 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:3200
	ds_load_u8 v11, v211 offset:3072
	v_lshl_or_b32 v40, v9, 16, v0
	ds_load_u8 v0, v211 offset:16976
	ds_load_u8 v9, v211 offset:16960
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:3456
	ds_load_u8 v12, v211 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v11, 16, v10
	ds_load_u8 v9, v211 offset:17008
	ds_load_u8 v10, v211 offset:16992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:16912
	ds_load_u8 v11, v211 offset:16896
	v_lshl_or_b32 v28, v9, 16, v0
	ds_load_u8 v0, v211 offset:4736
	ds_load_u8 v9, v211 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:16944
	ds_load_u8 v12, v211 offset:16928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v11, 16, v10
	ds_load_u8 v9, v211 offset:4992
	ds_load_u8 v10, v211 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:4224
	ds_load_u8 v11, v211 offset:4096
	v_lshl_or_b32 v42, v9, 16, v0
	ds_load_u8 v0, v211 offset:17104
	ds_load_u8 v9, v211 offset:17088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:4480
	ds_load_u8 v12, v211 offset:4352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v11, 16, v10
	ds_load_u8 v9, v211 offset:17136
	ds_load_u8 v10, v211 offset:17120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:17040
	ds_load_u8 v11, v211 offset:17024
	v_lshl_or_b32 v26, v9, 16, v0
	ds_load_u8 v0, v211 offset:5760
	ds_load_u8 v9, v211 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:17072
	ds_load_u8 v12, v211 offset:17056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v11, 16, v10
	ds_load_u8 v9, v211 offset:6016
	ds_load_u8 v10, v211 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:5248
	ds_load_u8 v11, v211 offset:5120
	v_lshl_or_b32 v44, v9, 16, v0
	ds_load_u8 v0, v211 offset:17232
	ds_load_u8 v9, v211 offset:17216
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:5504
	ds_load_u8 v12, v211 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	ds_load_u8 v9, v211 offset:17264
	ds_load_u8 v10, v211 offset:17248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:17168
	ds_load_u8 v11, v211 offset:17152
	v_lshl_or_b32 v24, v9, 16, v0
	ds_load_u8 v0, v211 offset:6784
	ds_load_u8 v9, v211 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:17200
	ds_load_u8 v12, v211 offset:17184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v23, v11, 16, v10
	ds_load_u8 v9, v211 offset:7040
	ds_load_u8 v10, v211 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:6272
	ds_load_u8 v11, v211 offset:6144
	v_lshl_or_b32 v46, v9, 16, v0
	ds_load_u8 v0, v211 offset:17296
	ds_load_u8 v9, v211 offset:17280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:6528
	ds_load_u8 v12, v211 offset:6400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v11, 16, v10
	ds_load_u8 v9, v211 offset:17328
	ds_load_u8 v10, v211 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:17360
	ds_load_u8 v11, v211 offset:17344
	v_lshl_or_b32 v21, v9, 16, v0
	ds_load_u8 v0, v211 offset:7808
	ds_load_u8 v9, v211 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v75 offset:16384
	ds_load_u8 v12, v211 offset:17376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v11, 16, v10
	ds_load_u8 v9, v211 offset:8064
	ds_load_u8 v10, v211 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:7296
	ds_load_u8 v11, v211 offset:7168
	v_lshl_or_b32 v48, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:7552
	ds_load_u8 v12, v211 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v11, 16, v10
	s_waitcnt vmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[214:221] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:8832
	ds_load_u8 v9, v211 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9088
	ds_load_u8 v10, v211 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:8320
	ds_load_u8 v11, v211 offset:8192
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v211 offset:9856
	ds_load_u8 v9, v211 offset:9728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:8576
	ds_load_u8 v12, v211 offset:8448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v211 offset:10112
	ds_load_u8 v10, v211 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:9344
	ds_load_u8 v11, v211 offset:9216
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v211 offset:10880
	ds_load_u8 v9, v211 offset:10752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:9600
	ds_load_u8 v12, v211 offset:9472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v211 offset:11136
	ds_load_u8 v10, v211 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:10368
	ds_load_u8 v11, v211 offset:10240
	v_lshl_or_b32 v38, v9, 16, v0
	ds_load_u8 v0, v211 offset:11904
	ds_load_u8 v9, v211 offset:11776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:10624
	ds_load_u8 v12, v211 offset:10496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v11, 16, v10
	ds_load_u8 v9, v211 offset:12160
	ds_load_u8 v10, v211 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:11392
	ds_load_u8 v11, v211 offset:11264
	v_lshl_or_b32 v40, v9, 16, v0
	ds_load_u8 v0, v211 offset:12928
	ds_load_u8 v9, v211 offset:12800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:11648
	ds_load_u8 v12, v211 offset:11520
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v11, 16, v10
	ds_load_u8 v9, v211 offset:13184
	ds_load_u8 v10, v211 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:12416
	ds_load_u8 v11, v211 offset:12288
	v_lshl_or_b32 v42, v9, 16, v0
	ds_load_u8 v0, v211 offset:13952
	ds_load_u8 v9, v211 offset:13824
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:12672
	ds_load_u8 v12, v211 offset:12544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v11, 16, v10
	ds_load_u8 v9, v211 offset:14208
	ds_load_u8 v10, v211 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:13440
	ds_load_u8 v11, v211 offset:13312
	v_lshl_or_b32 v44, v9, 16, v0
	ds_load_u8 v0, v211 offset:14976
	ds_load_u8 v9, v211 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:13696
	ds_load_u8 v12, v211 offset:13568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	ds_load_u8 v9, v211 offset:15232
	ds_load_u8 v10, v211 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:14464
	ds_load_u8 v11, v211 offset:14336
	v_lshl_or_b32 v46, v9, 16, v0
	ds_load_u8 v0, v211 offset:16000
	ds_load_u8 v9, v211 offset:15872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:14720
	ds_load_u8 v12, v211 offset:14592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v11, 16, v10
	ds_load_u8 v9, v211 offset:16256
	ds_load_u8 v10, v211 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:15488
	ds_load_u8 v11, v211 offset:15360
	v_lshl_or_b32 v48, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:15744
	ds_load_u8 v12, v211 offset:15616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[214:221] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:656
	ds_load_u8 v9, v211 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:912
	ds_load_u8 v10, v211 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:16
	ds_load_u8 v11, v211 offset:144
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v211 offset:1680
	ds_load_u8 v9, v211 offset:1552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v211 offset:400
	ds_load_u8 v12, v211 offset:272
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v211 offset:1936
	ds_load_u8 v10, v211 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:1168
	ds_load_u8 v11, v211 offset:1040
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v211 offset:2704
	ds_load_u8 v9, v211 offset:2576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:1424
	ds_load_u8 v12, v211 offset:1296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v211 offset:2960
	ds_load_u8 v10, v211 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:2192
	ds_load_u8 v11, v211 offset:2064
	v_lshl_or_b32 v38, v9, 16, v0
	ds_load_u8 v0, v211 offset:3728
	ds_load_u8 v9, v211 offset:3600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:2448
	ds_load_u8 v12, v211 offset:2320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v11, 16, v10
	ds_load_u8 v9, v211 offset:3984
	ds_load_u8 v10, v211 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:3216
	ds_load_u8 v11, v211 offset:3088
	v_lshl_or_b32 v40, v9, 16, v0
	ds_load_u8 v0, v211 offset:4752
	ds_load_u8 v9, v211 offset:4624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:3472
	ds_load_u8 v12, v211 offset:3344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v11, 16, v10
	ds_load_u8 v9, v211 offset:5008
	ds_load_u8 v10, v211 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:4240
	ds_load_u8 v11, v211 offset:4112
	v_lshl_or_b32 v42, v9, 16, v0
	ds_load_u8 v0, v211 offset:5776
	ds_load_u8 v9, v211 offset:5648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:4496
	ds_load_u8 v12, v211 offset:4368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v11, 16, v10
	ds_load_u8 v9, v211 offset:6032
	ds_load_u8 v10, v211 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:5264
	ds_load_u8 v11, v211 offset:5136
	v_lshl_or_b32 v44, v9, 16, v0
	ds_load_u8 v0, v211 offset:6800
	ds_load_u8 v9, v211 offset:6672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:5520
	ds_load_u8 v12, v211 offset:5392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	ds_load_u8 v9, v211 offset:7056
	ds_load_u8 v10, v211 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:6288
	ds_load_u8 v11, v211 offset:6160
	v_lshl_or_b32 v46, v9, 16, v0
	ds_load_u8 v0, v211 offset:7824
	ds_load_u8 v9, v211 offset:7696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:6544
	ds_load_u8 v12, v211 offset:6416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v11, 16, v10
	ds_load_u8 v9, v211 offset:8080
	ds_load_u8 v10, v211 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:7312
	ds_load_u8 v11, v211 offset:7184
	v_lshl_or_b32 v48, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:7568
	ds_load_u8 v12, v211 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[214:221] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:8848
	ds_load_u8 v9, v211 offset:8720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9104
	ds_load_u8 v10, v211 offset:8976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:8336
	ds_load_u8 v11, v211 offset:8208
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v211 offset:9872
	ds_load_u8 v9, v211 offset:9744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:8592
	ds_load_u8 v12, v211 offset:8464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v211 offset:10128
	ds_load_u8 v10, v211 offset:10000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:9360
	ds_load_u8 v11, v211 offset:9232
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v211 offset:10896
	ds_load_u8 v9, v211 offset:10768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:9616
	ds_load_u8 v12, v211 offset:9488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v211 offset:11152
	ds_load_u8 v10, v211 offset:11024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:10384
	ds_load_u8 v11, v211 offset:10256
	v_lshl_or_b32 v38, v9, 16, v0
	ds_load_u8 v0, v211 offset:11920
	ds_load_u8 v9, v211 offset:11792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:10640
	ds_load_u8 v12, v211 offset:10512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v11, 16, v10
	ds_load_u8 v9, v211 offset:12176
	ds_load_u8 v10, v211 offset:12048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:11408
	ds_load_u8 v11, v211 offset:11280
	v_lshl_or_b32 v40, v9, 16, v0
	ds_load_u8 v0, v211 offset:12944
	ds_load_u8 v9, v211 offset:12816
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:11664
	ds_load_u8 v12, v211 offset:11536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v11, 16, v10
	ds_load_u8 v9, v211 offset:13200
	ds_load_u8 v10, v211 offset:13072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:12432
	ds_load_u8 v11, v211 offset:12304
	v_lshl_or_b32 v42, v9, 16, v0
	ds_load_u8 v0, v211 offset:13968
	ds_load_u8 v9, v211 offset:13840
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:12688
	ds_load_u8 v12, v211 offset:12560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v11, 16, v10
	ds_load_u8 v9, v211 offset:14224
	ds_load_u8 v10, v211 offset:14096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:13456
	ds_load_u8 v11, v211 offset:13328
	v_lshl_or_b32 v44, v9, 16, v0
	ds_load_u8 v0, v211 offset:14992
	ds_load_u8 v9, v211 offset:14864
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:13712
	ds_load_u8 v12, v211 offset:13584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	ds_load_u8 v9, v211 offset:15248
	ds_load_u8 v10, v211 offset:15120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:14480
	ds_load_u8 v11, v211 offset:14352
	v_lshl_or_b32 v46, v9, 16, v0
	ds_load_u8 v0, v211 offset:16016
	ds_load_u8 v9, v211 offset:15888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:14736
	ds_load_u8 v12, v211 offset:14608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v11, 16, v10
	ds_load_u8 v9, v211 offset:16272
	ds_load_u8 v10, v211 offset:16144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:15504
	ds_load_u8 v11, v211 offset:15376
	v_lshl_or_b32 v48, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:15760
	ds_load_u8 v12, v211 offset:15632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[214:221] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:672
	ds_load_u8 v9, v211 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:928
	ds_load_u8 v10, v211 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:32
	ds_load_u8 v11, v211 offset:160
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v211 offset:1696
	ds_load_u8 v9, v211 offset:1568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v211 offset:416
	ds_load_u8 v12, v211 offset:288
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v211 offset:1952
	ds_load_u8 v10, v211 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:1184
	ds_load_u8 v11, v211 offset:1056
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v211 offset:2720
	ds_load_u8 v9, v211 offset:2592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:1440
	ds_load_u8 v12, v211 offset:1312
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v211 offset:2976
	ds_load_u8 v10, v211 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:2208
	ds_load_u8 v11, v211 offset:2080
	v_lshl_or_b32 v38, v9, 16, v0
	ds_load_u8 v0, v211 offset:3744
	ds_load_u8 v9, v211 offset:3616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:2464
	ds_load_u8 v12, v211 offset:2336
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v11, 16, v10
	ds_load_u8 v9, v211 offset:4000
	ds_load_u8 v10, v211 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:3232
	ds_load_u8 v11, v211 offset:3104
	v_lshl_or_b32 v40, v9, 16, v0
	ds_load_u8 v0, v211 offset:4768
	ds_load_u8 v9, v211 offset:4640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:3488
	ds_load_u8 v12, v211 offset:3360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v11, 16, v10
	ds_load_u8 v9, v211 offset:5024
	ds_load_u8 v10, v211 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:4256
	ds_load_u8 v11, v211 offset:4128
	v_lshl_or_b32 v42, v9, 16, v0
	ds_load_u8 v0, v211 offset:5792
	ds_load_u8 v9, v211 offset:5664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:4512
	ds_load_u8 v12, v211 offset:4384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v11, 16, v10
	ds_load_u8 v9, v211 offset:6048
	ds_load_u8 v10, v211 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:5280
	ds_load_u8 v11, v211 offset:5152
	v_lshl_or_b32 v44, v9, 16, v0
	ds_load_u8 v0, v211 offset:6816
	ds_load_u8 v9, v211 offset:6688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:5536
	ds_load_u8 v12, v211 offset:5408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	ds_load_u8 v9, v211 offset:7072
	ds_load_u8 v10, v211 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:6304
	ds_load_u8 v11, v211 offset:6176
	v_lshl_or_b32 v46, v9, 16, v0
	ds_load_u8 v0, v211 offset:7840
	ds_load_u8 v9, v211 offset:7712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:6560
	ds_load_u8 v12, v211 offset:6432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v11, 16, v10
	ds_load_u8 v9, v211 offset:8096
	ds_load_u8 v10, v211 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:7328
	ds_load_u8 v11, v211 offset:7200
	v_lshl_or_b32 v48, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:7584
	ds_load_u8 v12, v211 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[214:221] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:8864
	ds_load_u8 v9, v211 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9120
	ds_load_u8 v10, v211 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:8352
	ds_load_u8 v11, v211 offset:8224
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v211 offset:9888
	ds_load_u8 v9, v211 offset:9760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:8608
	ds_load_u8 v12, v211 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v211 offset:10144
	ds_load_u8 v10, v211 offset:10016
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v49, v211 offset:48
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v11, v211 offset:9376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e32 v10, 0x80000000, v2, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v2, s45, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v20, v9, 16, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[3:6], v10, s[28:31], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v10, v211 offset:9248
	ds_load_u8 v0, v211 offset:10912
	ds_load_u8 v9, v211 offset:10784
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	ds_load_u8 v11, v211 offset:9632
	ds_load_u8 v12, v211 offset:9504
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v211 offset:11168
	ds_load_u8 v10, v211 offset:11040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:10400
	ds_load_u8 v11, v211 offset:10272
	v_lshl_or_b32 v38, v9, 16, v0
	ds_load_u8 v0, v211 offset:11936
	ds_load_u8 v9, v211 offset:11808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:10656
	ds_load_u8 v12, v211 offset:10528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v11, 16, v10
	ds_load_u8 v9, v211 offset:12192
	ds_load_u8 v10, v211 offset:12064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:11424
	ds_load_u8 v11, v211 offset:11296
	v_lshl_or_b32 v40, v9, 16, v0
	ds_load_u8 v0, v211 offset:12960
	ds_load_u8 v9, v211 offset:12832
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:11680
	ds_load_u8 v12, v211 offset:11552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v11, 16, v10
	ds_load_u8 v9, v211 offset:13216
	ds_load_u8 v10, v211 offset:13088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:12448
	ds_load_u8 v11, v211 offset:12320
	v_lshl_or_b32 v42, v9, 16, v0
	ds_load_u8 v0, v211 offset:13984
	ds_load_u8 v9, v211 offset:13856
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:12704
	ds_load_u8 v12, v211 offset:12576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v11, 16, v10
	ds_load_u8 v9, v211 offset:14240
	ds_load_u8 v10, v211 offset:14112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:13472
	ds_load_u8 v11, v211 offset:13344
	v_lshl_or_b32 v44, v9, 16, v0
	ds_load_u8 v0, v211 offset:15008
	ds_load_u8 v9, v211 offset:14880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:13728
	ds_load_u8 v12, v211 offset:13600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	ds_load_u8 v9, v211 offset:15264
	ds_load_u8 v10, v211 offset:15136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:14496
	ds_load_u8 v11, v211 offset:14368
	v_lshl_or_b32 v46, v9, 16, v0
	ds_load_u8 v0, v211 offset:16032
	ds_load_u8 v9, v211 offset:15904
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:14752
	ds_load_u8 v12, v211 offset:14624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v11, 16, v10
	ds_load_u8 v9, v211 offset:16288
	ds_load_u8 v10, v211 offset:16160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:15520
	ds_load_u8 v11, v211 offset:15392
	v_lshl_or_b32 v48, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:15776
	ds_load_u8 v12, v211 offset:15648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[214:221] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v11, v211 offset:432
	ds_load_u8 v12, v211 offset:304
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt vmcnt(0)
	scratch_store_b128 off, v[3:6], off offset:252 ; 16-byte Folded Spill
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v3, off, off offset:612
	scratch_load_b32 v4, off, off offset:616
	scratch_load_b32 v5, off, off offset:620
	scratch_load_b32 v6, off, off offset:624
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:688
	ds_load_u8 v9, v211 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:944
	ds_load_u8 v10, v211 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:176
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v211 offset:1712
	ds_load_u8 v9, v211 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v49, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:1968
	ds_load_u8 v10, v211 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:1200
	ds_load_u8 v11, v211 offset:1072
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v211 offset:2736
	ds_load_u8 v9, v211 offset:2608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:1456
	ds_load_u8 v12, v211 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v211 offset:2992
	ds_load_u8 v10, v211 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:2224
	ds_load_u8 v11, v211 offset:2096
	v_lshl_or_b32 v38, v9, 16, v0
	ds_load_u8 v0, v211 offset:3760
	ds_load_u8 v9, v211 offset:3632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:2480
	ds_load_u8 v12, v211 offset:2352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v11, 16, v10
	ds_load_u8 v9, v211 offset:4016
	ds_load_u8 v10, v211 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:3248
	ds_load_u8 v11, v211 offset:3120
	v_lshl_or_b32 v40, v9, 16, v0
	ds_load_u8 v0, v211 offset:4784
	ds_load_u8 v9, v211 offset:4656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:3504
	ds_load_u8 v12, v211 offset:3376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v11, 16, v10
	ds_load_u8 v9, v211 offset:5040
	ds_load_u8 v10, v211 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:4272
	ds_load_u8 v11, v211 offset:4144
	v_lshl_or_b32 v42, v9, 16, v0
	ds_load_u8 v0, v211 offset:5808
	ds_load_u8 v9, v211 offset:5680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:4528
	ds_load_u8 v12, v211 offset:4400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v11, 16, v10
	ds_load_u8 v9, v211 offset:6064
	ds_load_u8 v10, v211 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:5296
	ds_load_u8 v11, v211 offset:5168
	v_lshl_or_b32 v44, v9, 16, v0
	ds_load_u8 v0, v211 offset:6832
	ds_load_u8 v9, v211 offset:6704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:5552
	ds_load_u8 v12, v211 offset:5424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	ds_load_u8 v9, v211 offset:7088
	ds_load_u8 v10, v211 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:6320
	ds_load_u8 v11, v211 offset:6192
	v_lshl_or_b32 v46, v9, 16, v0
	ds_load_u8 v0, v211 offset:7856
	ds_load_u8 v9, v211 offset:7728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:6576
	ds_load_u8 v12, v211 offset:6448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v11, 16, v10
	ds_load_u8 v9, v211 offset:8112
	ds_load_u8 v10, v211 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:7344
	ds_load_u8 v11, v211 offset:7216
	v_lshl_or_b32 v48, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:7600
	ds_load_u8 v12, v211 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[214:221] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:8880
	ds_load_u8 v9, v211 offset:8752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9136
	ds_load_u8 v10, v211 offset:9008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:8368
	ds_load_u8 v11, v211 offset:8240
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v211 offset:9904
	ds_load_u8 v9, v211 offset:9776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:8624
	ds_load_u8 v12, v211 offset:8496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v211 offset:10160
	ds_load_u8 v10, v211 offset:10032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:9392
	ds_load_u8 v11, v211 offset:9264
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v211 offset:10928
	ds_load_u8 v9, v211 offset:10800
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:9648
	ds_load_u8 v12, v211 offset:9520
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v211 offset:11184
	ds_load_u8 v10, v211 offset:11056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:10416
	ds_load_u8 v11, v211 offset:10288
	v_lshl_or_b32 v38, v9, 16, v0
	ds_load_u8 v0, v211 offset:11952
	ds_load_u8 v9, v211 offset:11824
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:10672
	ds_load_u8 v12, v211 offset:10544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v11, 16, v10
	ds_load_u8 v9, v211 offset:12208
	ds_load_u8 v10, v211 offset:12080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:11440
	ds_load_u8 v11, v211 offset:11312
	v_lshl_or_b32 v40, v9, 16, v0
	ds_load_u8 v0, v211 offset:12976
	ds_load_u8 v9, v211 offset:12848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:11696
	ds_load_u8 v12, v211 offset:11568
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v11, 16, v10
	ds_load_u8 v9, v211 offset:13232
	ds_load_u8 v10, v211 offset:13104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:12464
	ds_load_u8 v11, v211 offset:12336
	v_lshl_or_b32 v42, v9, 16, v0
	ds_load_u8 v0, v211 offset:14000
	ds_load_u8 v9, v211 offset:13872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:12720
	ds_load_u8 v12, v211 offset:12592
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v11, 16, v10
	ds_load_u8 v9, v211 offset:14256
	ds_load_u8 v10, v211 offset:14128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:13488
	ds_load_u8 v11, v211 offset:13360
	v_lshl_or_b32 v44, v9, 16, v0
	ds_load_u8 v0, v211 offset:15024
	ds_load_u8 v9, v211 offset:14896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:13744
	ds_load_u8 v12, v211 offset:13616
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	ds_load_u8 v9, v211 offset:15280
	ds_load_u8 v10, v211 offset:15152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:14512
	ds_load_u8 v11, v211 offset:14384
	v_lshl_or_b32 v46, v9, 16, v0
	ds_load_u8 v0, v211 offset:16048
	ds_load_u8 v9, v211 offset:15920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:14768
	ds_load_u8 v12, v211 offset:14640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v11, 16, v10
	ds_load_u8 v9, v211 offset:16304
	ds_load_u8 v10, v211 offset:16176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:15536
	ds_load_u8 v11, v211 offset:15408
	v_lshl_or_b32 v48, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:15792
	ds_load_u8 v12, v211 offset:15664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[214:221] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:704
	ds_load_u8 v9, v211 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:960
	ds_load_u8 v10, v211 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:192
	ds_load_u8 v11, v211 offset:64
	v_lshl_or_b32 v18, v9, 16, v0
	ds_load_u8 v0, v211 offset:1728
	ds_load_u8 v9, v211 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:448
	ds_load_u8 v12, v211 offset:320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v11, 16, v10
	ds_load_u8 v9, v211 offset:1984
	ds_load_u8 v10, v211 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:1216
	ds_load_u8 v11, v211 offset:1088
	v_lshl_or_b32 v20, v9, 16, v0
	ds_load_u8 v0, v211 offset:2752
	ds_load_u8 v9, v211 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:1472
	ds_load_u8 v12, v211 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v211 offset:3008
	ds_load_u8 v10, v211 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:2240
	ds_load_u8 v11, v211 offset:2112
	v_lshl_or_b32 v38, v9, 16, v0
	ds_load_u8 v0, v211 offset:3776
	ds_load_u8 v9, v211 offset:3648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:2496
	ds_load_u8 v12, v211 offset:2368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v11, 16, v10
	ds_load_u8 v9, v211 offset:4032
	ds_load_u8 v10, v211 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:3264
	ds_load_u8 v11, v211 offset:3136
	v_lshl_or_b32 v40, v9, 16, v0
	ds_load_u8 v0, v211 offset:4800
	ds_load_u8 v9, v211 offset:4672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:3520
	ds_load_u8 v12, v211 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v11, 16, v10
	ds_load_u8 v9, v211 offset:5056
	ds_load_u8 v10, v211 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:4288
	ds_load_u8 v11, v211 offset:4160
	v_lshl_or_b32 v42, v9, 16, v0
	ds_load_u8 v0, v211 offset:5824
	ds_load_u8 v9, v211 offset:5696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:4544
	ds_load_u8 v12, v211 offset:4416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v11, 16, v10
	ds_load_u8 v9, v211 offset:6080
	ds_load_u8 v10, v211 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:5312
	ds_load_u8 v11, v211 offset:5184
	v_lshl_or_b32 v44, v9, 16, v0
	ds_load_u8 v0, v211 offset:6848
	ds_load_u8 v9, v211 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:5568
	ds_load_u8 v12, v211 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v11, 16, v10
	ds_load_u8 v9, v211 offset:7104
	ds_load_u8 v10, v211 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:6336
	ds_load_u8 v11, v211 offset:6208
	v_lshl_or_b32 v46, v9, 16, v0
	ds_load_u8 v0, v211 offset:7872
	ds_load_u8 v9, v211 offset:7744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:6592
	ds_load_u8 v12, v211 offset:6464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v11, 16, v10
	ds_load_u8 v9, v211 offset:8128
	ds_load_u8 v10, v211 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:7360
	ds_load_u8 v11, v211 offset:7232
	v_lshl_or_b32 v48, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:7616
	ds_load_u8 v12, v211 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[29:30], v[214:221] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:8896
	ds_load_u8 v9, v211 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9152
	ds_load_u8 v10, v211 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:8384
	ds_load_u8 v11, v211 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	ds_load_u8 v10, v211 offset:8640
	ds_load_u8 v12, v211 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v9, v12, 16, v11
	ds_load_u8 v0, v211 offset:9920
	ds_load_u8 v11, v211 offset:9792
	v_wmma_i32_16x16x16_iu4 v[44:51], v[9:10], v[29:30], v[214:221] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v11, v0, 0xc0c0004
	ds_load_u8 v11, v211 offset:10176
	ds_load_u8 v12, v211 offset:10048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:9408
	ds_load_u8 v13, v211 offset:9280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v13, v12, 0xc0c0004
	ds_load_u8 v12, v211 offset:9664
	ds_load_u8 v14, v211 offset:9536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v14, v12, 0xc0c0004
	v_lshl_or_b32 v12, v11, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v11, v14, 16, v13
	ds_load_u8 v0, v211 offset:10944
	ds_load_u8 v13, v211 offset:10816
	v_wmma_i32_16x16x16_iu4 v[44:51], v[11:12], v[35:36], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	ds_load_u8 v13, v211 offset:11200
	ds_load_u8 v14, v211 offset:11072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v211 offset:10432
	ds_load_u8 v15, v211 offset:10304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v14, 0xc0c0004
	ds_load_u8 v14, v211 offset:10688
	ds_load_u8 v16, v211 offset:10560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v14, 0xc0c0004
	v_lshl_or_b32 v14, v13, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v13, v16, 16, v15
	ds_load_u8 v0, v211 offset:11968
	ds_load_u8 v15, v211 offset:11840
	v_wmma_i32_16x16x16_iu4 v[44:51], v[13:14], v[33:34], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v211 offset:12224
	ds_load_u8 v16, v211 offset:12096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v211 offset:11456
	ds_load_u8 v17, v211 offset:11328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	ds_load_u8 v16, v211 offset:11712
	ds_load_u8 v18, v211 offset:11584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v16, 0xc0c0004
	v_lshl_or_b32 v16, v15, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v15, v18, 16, v17
	ds_load_u8 v0, v211 offset:12992
	ds_load_u8 v17, v211 offset:12864
	v_wmma_i32_16x16x16_iu4 v[44:51], v[15:16], v[31:32], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v211 offset:13248
	ds_load_u8 v18, v211 offset:13120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v211 offset:12480
	ds_load_u8 v19, v211 offset:12352
	v_lshl_or_b32 v38, v17, 16, v0
	ds_load_u8 v0, v211 offset:14016
	ds_load_u8 v17, v211 offset:13888
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v211 offset:12736
	ds_load_u8 v20, v211 offset:12608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v19, 16, v18
	ds_load_u8 v17, v211 offset:14272
	ds_load_u8 v18, v211 offset:14144
	v_wmma_i32_16x16x16_iu4 v[44:51], v[37:38], v[27:28], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v211 offset:13504
	ds_load_u8 v19, v211 offset:13376
	v_lshl_or_b32 v40, v17, 16, v0
	ds_load_u8 v0, v211 offset:15040
	ds_load_u8 v17, v211 offset:14912
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v211 offset:13760
	ds_load_u8 v20, v211 offset:13632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v19, 16, v18
	ds_load_u8 v17, v211 offset:15296
	ds_load_u8 v18, v211 offset:15168
	v_wmma_i32_16x16x16_iu4 v[44:51], v[39:40], v[25:26], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v211 offset:14528
	ds_load_u8 v19, v211 offset:14400
	v_lshl_or_b32 v42, v17, 16, v0
	ds_load_u8 v0, v211 offset:16064
	ds_load_u8 v17, v211 offset:15936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v211 offset:14784
	ds_load_u8 v20, v211 offset:14656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_perm_b32 v20, v17, v0, 0xc0c0004
	ds_load_u8 v0, v211 offset:16320
	ds_load_u8 v17, v211 offset:16192
	v_lshl_or_b32 v41, v19, 16, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[41:42], v[23:24], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v211 offset:15552
	ds_load_u8 v18, v211 offset:15424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v211 offset:15808
	ds_load_u8 v19, v211 offset:15680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	v_lshl_or_b32 v18, v0, 16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[44:51], v[17:18], v[21:22], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v44
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v45
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v46
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v47
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v48
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v49
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v50
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v51
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:720
	ds_load_u8 v9, v211 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:976
	ds_load_u8 v10, v211 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:208
	ds_load_u8 v11, v211 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v11, v10, 0xc0c0004
	ds_load_u8 v10, v211 offset:464
	ds_load_u8 v12, v211 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v12, v10, 0xc0c0004
	v_lshl_or_b32 v10, v9, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v9, v12, 16, v11
	ds_load_u8 v0, v211 offset:1744
	ds_load_u8 v11, v211 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v11, v0, 0xc0c0004
	ds_load_u8 v11, v211 offset:2000
	ds_load_u8 v12, v211 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:1232
	ds_load_u8 v13, v211 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v13, v12, 0xc0c0004
	ds_load_u8 v12, v211 offset:1488
	ds_load_u8 v14, v211 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v14, v12, 0xc0c0004
	v_lshl_or_b32 v12, v11, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v11, v14, 16, v13
	ds_load_u8 v0, v211 offset:2768
	ds_load_u8 v13, v211 offset:2640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	ds_load_u8 v13, v211 offset:3024
	ds_load_u8 v14, v211 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v211 offset:2256
	ds_load_u8 v15, v211 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v15, v14, 0xc0c0004
	ds_load_u8 v14, v211 offset:2512
	ds_load_u8 v16, v211 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v14, 0xc0c0004
	v_lshl_or_b32 v14, v13, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v13, v16, 16, v15
	ds_load_u8 v0, v211 offset:3792
	ds_load_u8 v15, v211 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v15, v0, 0xc0c0004
	ds_load_u8 v15, v211 offset:4048
	ds_load_u8 v16, v211 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v211 offset:3280
	ds_load_u8 v17, v211 offset:3152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v17, v16, 0xc0c0004
	ds_load_u8 v16, v211 offset:3536
	ds_load_u8 v18, v211 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v16, 0xc0c0004
	v_lshl_or_b32 v16, v15, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v15, v18, 16, v17
	ds_load_u8 v0, v211 offset:4816
	ds_load_u8 v17, v211 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	ds_load_u8 v17, v211 offset:5072
	ds_load_u8 v18, v211 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v211 offset:4304
	ds_load_u8 v19, v211 offset:4176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v18, 0xc0c0004
	ds_load_u8 v18, v211 offset:4560
	ds_load_u8 v20, v211 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v18, 0xc0c0004
	v_lshl_or_b32 v18, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v17, v20, 16, v19
	ds_load_u8 v0, v211 offset:5840
	ds_load_u8 v19, v211 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v19, v0, 0xc0c0004
	ds_load_u8 v19, v211 offset:6096
	ds_load_u8 v20, v211 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v211 offset:5328
	ds_load_u8 v44, v211 offset:5200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v20, 0xc0c0004
	ds_load_u8 v20, v211 offset:5584
	ds_load_u8 v45, v211 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v20, 0xc0c0004
	v_lshl_or_b32 v20, v19, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v19, v45, 16, v44
	ds_load_u8 v0, v211 offset:6864
	ds_load_u8 v44, v211 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	ds_load_u8 v44, v211 offset:7120
	ds_load_u8 v45, v211 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v211 offset:6352
	ds_load_u8 v46, v211 offset:6224
	v_lshl_or_b32 v53, v44, 16, v0
	ds_load_u8 v0, v211 offset:7888
	ds_load_u8 v44, v211 offset:7760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v211 offset:6608
	ds_load_u8 v47, v211 offset:6480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v44, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v46, 16, v45
	ds_load_u8 v44, v211 offset:8144
	ds_load_u8 v45, v211 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v211 offset:7376
	ds_load_u8 v46, v211 offset:7248
	v_lshl_or_b32 v59, v44, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v211 offset:7632
	ds_load_u8 v47, v211 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[44:51], v[9:10], v[29:30], v[214:221] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[11:12], v[35:36], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[13:14], v[33:34], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[15:16], v[31:32], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[17:18], v[27:28], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[19:20], v[25:26], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[52:53], v[23:24], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[58:59], v[21:22], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v44
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v45
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v46
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v47
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v48
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v49
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v50
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v51
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:8912
	ds_load_u8 v9, v211 offset:8784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9168
	ds_load_u8 v10, v211 offset:9040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:8400
	ds_load_u8 v11, v211 offset:8272
	v_lshl_or_b32 v45, v9, 16, v0
	ds_load_u8 v0, v211 offset:9936
	ds_load_u8 v9, v211 offset:9808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:8656
	ds_load_u8 v12, v211 offset:8528
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v11, 16, v10
	ds_load_u8 v9, v211 offset:10192
	ds_load_u8 v10, v211 offset:10064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:9424
	ds_load_u8 v11, v211 offset:9296
	v_lshl_or_b32 v47, v9, 16, v0
	ds_load_u8 v0, v211 offset:10960
	ds_load_u8 v9, v211 offset:10832
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:9680
	ds_load_u8 v12, v211 offset:9552
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v11, 16, v10
	ds_load_u8 v9, v211 offset:11216
	ds_load_u8 v10, v211 offset:11088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:10448
	ds_load_u8 v11, v211 offset:10320
	v_lshl_or_b32 v49, v9, 16, v0
	ds_load_u8 v0, v211 offset:11984
	ds_load_u8 v9, v211 offset:11856
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:10704
	ds_load_u8 v12, v211 offset:10576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v11, 16, v10
	ds_load_u8 v9, v211 offset:12240
	ds_load_u8 v10, v211 offset:12112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:11472
	ds_load_u8 v11, v211 offset:11344
	v_lshl_or_b32 v51, v9, 16, v0
	ds_load_u8 v0, v211 offset:13008
	ds_load_u8 v9, v211 offset:12880
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:11728
	ds_load_u8 v12, v211 offset:11600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v11, 16, v10
	ds_load_u8 v9, v211 offset:13264
	ds_load_u8 v10, v211 offset:13136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:12496
	ds_load_u8 v11, v211 offset:12368
	v_lshl_or_b32 v53, v9, 16, v0
	ds_load_u8 v0, v211 offset:14032
	ds_load_u8 v9, v211 offset:13904
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:12752
	ds_load_u8 v12, v211 offset:12624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v11, 16, v10
	ds_load_u8 v9, v211 offset:14288
	ds_load_u8 v10, v211 offset:14160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:13520
	ds_load_u8 v11, v211 offset:13392
	v_lshl_or_b32 v59, v9, 16, v0
	ds_load_u8 v0, v211 offset:15056
	ds_load_u8 v9, v211 offset:14928
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:13776
	ds_load_u8 v12, v211 offset:13648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v11, 16, v10
	ds_load_u8 v9, v211 offset:15312
	ds_load_u8 v10, v211 offset:15184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:14544
	ds_load_u8 v11, v211 offset:14416
	v_lshl_or_b32 v64, v9, 16, v0
	ds_load_u8 v0, v211 offset:16080
	ds_load_u8 v9, v211 offset:15952
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:14800
	ds_load_u8 v12, v211 offset:14672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v11, 16, v10
	ds_load_u8 v9, v211 offset:16336
	ds_load_u8 v10, v211 offset:16208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:15568
	ds_load_u8 v11, v211 offset:15440
	v_lshl_or_b32 v66, v9, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:15824
	ds_load_u8 v12, v211 offset:15696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[29:30], v[214:221] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[50:51], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[52:53], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[58:59], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v211 offset:736
	ds_load_u8 v10, v211 offset:608
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:992
	ds_load_u8 v11, v211 offset:864
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:224
	ds_load_u8 v12, v211 offset:96
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:480
	ds_load_u8 v13, v211 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v12, 16, v11
	ds_load_u8 v11, v211 offset:1760
	ds_load_u8 v12, v211 offset:1632
	v_wmma_i32_16x16x16_iu4 v[83:90], v[9:10], v[29:30], v[214:221] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v9, v211 offset:8928
	ds_load_u8 v10, v211 offset:8800
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:2016
	ds_load_u8 v13, v211 offset:1888
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v211 offset:1248
	ds_load_u8 v14, v211 offset:1120
	v_lshl_or_b32 v12, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v211 offset:1504
	ds_load_u8 v15, v211 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v14, 16, v13
	ds_load_u8 v13, v211 offset:2784
	ds_load_u8 v14, v211 offset:2656
	v_wmma_i32_16x16x16_iu4 v[83:90], v[11:12], v[35:36], v[83:90] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v10, v211 offset:9184
	ds_load_u8 v11, v211 offset:9056
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v211 offset:3040
	ds_load_u8 v15, v211 offset:2912
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:8416
	ds_load_u8 v12, v211 offset:8288
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v211 offset:2272
	ds_load_u8 v16, v211 offset:2144
	v_lshl_or_b32 v14, v14, 16, v13
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v211 offset:2528
	ds_load_u8 v17, v211 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v16, 16, v15
	ds_load_u8 v15, v211 offset:3808
	ds_load_u8 v16, v211 offset:3680
	v_wmma_i32_16x16x16_iu4 v[83:90], v[13:14], v[33:34], v[83:90] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v12, v211 offset:8672
	ds_load_u8 v13, v211 offset:8544
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v211 offset:4064
	ds_load_u8 v17, v211 offset:3936
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v211 offset:3296
	ds_load_u8 v44, v211 offset:3168
	v_lshl_or_b32 v16, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v44, v17, 0xc0c0004
	ds_load_u8 v44, v211 offset:3552
	ds_load_u8 v45, v211 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v44, 16, v17
	ds_load_u8 v17, v211 offset:4832
	ds_load_u8 v44, v211 offset:4704
	v_wmma_i32_16x16x16_iu4 v[83:90], v[15:16], v[31:32], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v44, v17, 0xc0c0004
	ds_load_u8 v44, v211 offset:5088
	ds_load_u8 v45, v211 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v211 offset:4320
	ds_load_u8 v46, v211 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v46, v45, 0xc0c0004
	ds_load_u8 v45, v211 offset:4576
	ds_load_u8 v47, v211 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v45, 0xc0c0004
	v_lshl_or_b32 v45, v44, 16, v17
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v44, v47, 16, v46
	ds_load_u8 v17, v211 offset:5856
	ds_load_u8 v46, v211 offset:5728
	v_wmma_i32_16x16x16_iu4 v[83:90], v[44:45], v[27:28], v[83:90] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v45, v10, 16, v9
	ds_load_u8 v9, v211 offset:9952
	ds_load_u8 v10, v211 offset:9824
	v_lshl_or_b32 v44, v12, 16, v11
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v46, v17, 0xc0c0004
	ds_load_u8 v46, v211 offset:6112
	ds_load_u8 v47, v211 offset:5984
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:10208
	ds_load_u8 v11, v211 offset:10080
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v211 offset:5344
	ds_load_u8 v48, v211 offset:5216
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:9440
	ds_load_u8 v12, v211 offset:9312
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v48, v47, 0xc0c0004
	ds_load_u8 v47, v211 offset:5600
	ds_load_u8 v49, v211 offset:5472
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:9696
	ds_load_u8 v13, v211 offset:9568
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v49, v49, v47, 0xc0c0004
	v_lshl_or_b32 v47, v46, 16, v17
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v46, v49, 16, v48
	ds_load_u8 v17, v211 offset:6880
	ds_load_u8 v48, v211 offset:6752
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[83:90], v[46:47], v[25:26], v[83:90] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v47, v10, 16, v9
	ds_load_u8 v9, v211 offset:10976
	ds_load_u8 v10, v211 offset:10848
	v_lshl_or_b32 v46, v12, 16, v11
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v48, v17, 0xc0c0004
	ds_load_u8 v48, v211 offset:7136
	ds_load_u8 v49, v211 offset:7008
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:11232
	ds_load_u8 v11, v211 offset:11104
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v211 offset:6368
	ds_load_u8 v53, v211 offset:6240
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:10464
	ds_load_u8 v12, v211 offset:10336
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v53, v49, 0xc0c0004
	ds_load_u8 v49, v211 offset:6624
	ds_load_u8 v58, v211 offset:6496
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:10720
	ds_load_u8 v13, v211 offset:10592
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v58, v49, 0xc0c0004
	v_lshl_or_b32 v49, v48, 16, v17
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v48, v58, 16, v53
	ds_load_u8 v17, v211 offset:7904
	ds_load_u8 v53, v211 offset:7776
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[83:90], v[48:49], v[23:24], v[83:90] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v49, v10, 16, v9
	ds_load_u8 v9, v211 offset:12000
	ds_load_u8 v10, v211 offset:11872
	v_lshl_or_b32 v48, v12, 16, v11
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v53, v17, 0xc0c0004
	ds_load_u8 v53, v211 offset:8160
	ds_load_u8 v58, v211 offset:8032
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:12256
	ds_load_u8 v11, v211 offset:12128
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v58, v53, 0xc0c0004
	ds_load_u8 v58, v211 offset:7392
	ds_load_u8 v59, v211 offset:7264
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:11488
	ds_load_u8 v12, v211 offset:11360
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v211 offset:7648
	ds_load_u8 v60, v211 offset:7520
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:11744
	ds_load_u8 v13, v211 offset:11616
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v60, v60, v59, 0xc0c0004
	v_lshl_or_b32 v59, v53, 16, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v58, v60, 16, v58
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[83:90], v[58:59], v[21:22], v[83:90] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v59, v10, 16, v9
	ds_load_u8 v9, v211 offset:13024
	ds_load_u8 v10, v211 offset:12896
	v_lshl_or_b32 v58, v12, 16, v11
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v83
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v84
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v85
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:13280
	ds_load_u8 v11, v211 offset:13152
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v86
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v87
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v88
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:12512
	ds_load_u8 v12, v211 offset:12384
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v0, v89
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v73, v10, 16, v9
	ds_load_u8 v9, v211 offset:14048
	ds_load_u8 v10, v211 offset:13920
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v90
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:12768
	ds_load_u8 v13, v211 offset:12640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v12, 16, v11
	ds_load_u8 v10, v211 offset:14304
	ds_load_u8 v11, v211 offset:14176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:13536
	ds_load_u8 v12, v211 offset:13408
	v_lshl_or_b32 v79, v10, 16, v9
	ds_load_u8 v9, v211 offset:15072
	ds_load_u8 v10, v211 offset:14944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:13792
	ds_load_u8 v13, v211 offset:13664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v12, 16, v11
	ds_load_u8 v10, v211 offset:15328
	ds_load_u8 v11, v211 offset:15200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:14560
	ds_load_u8 v12, v211 offset:14432
	v_lshl_or_b32 v84, v10, 16, v9
	ds_load_u8 v9, v211 offset:16096
	ds_load_u8 v10, v211 offset:15968
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:14816
	ds_load_u8 v13, v211 offset:14688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v12, 16, v11
	ds_load_u8 v10, v211 offset:16352
	ds_load_u8 v11, v211 offset:16224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:15584
	ds_load_u8 v12, v211 offset:15456
	v_lshl_or_b32 v86, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:15840
	ds_load_u8 v13, v211 offset:15712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[29:30], v[214:221] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[58:59], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[78:79], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[23:24], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v211 offset:240
	ds_load_u8 v10, v211 offset:112
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:496
	ds_load_u8 v11, v211 offset:368
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v15
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:752
	ds_load_u8 v12, v211 offset:624
	v_lshl_or_b32 v9, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v75
	ds_load_u8 v13, v211 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v12, 16, v11
	ds_load_u8 v11, v211 offset:1264
	ds_load_u8 v12, v211 offset:1136
	v_wmma_i32_16x16x16_iu4 v[83:90], v[9:10], v[29:30], v[214:221] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v211 offset:1520
	ds_load_u8 v13, v211 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v211 offset:1776
	ds_load_u8 v14, v211 offset:1648
	v_lshl_or_b32 v11, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v14, v0
	ds_load_u8 v15, v211 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v13
	ds_load_u8 v13, v211 offset:2288
	ds_load_u8 v14, v211 offset:2160
	v_wmma_i32_16x16x16_iu4 v[83:90], v[11:12], v[35:36], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v211 offset:2544
	ds_load_u8 v15, v211 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v211 offset:2800
	ds_load_u8 v16, v211 offset:2672
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v3
	ds_load_u8 v17, v211 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	ds_load_u8 v15, v211 offset:3312
	ds_load_u8 v16, v211 offset:3184
	v_wmma_i32_16x16x16_iu4 v[83:90], v[13:14], v[33:34], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v211 offset:3568
	ds_load_u8 v17, v211 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v211 offset:3824
	ds_load_u8 v44, v211 offset:3696
	v_lshl_or_b32 v15, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v44, v17, 0xc0c0004
	ds_load_u8 v44, v4
	ds_load_u8 v45, v211 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v16, v44, 16, v17
	ds_load_u8 v17, v211 offset:4336
	ds_load_u8 v44, v211 offset:4208
	v_wmma_i32_16x16x16_iu4 v[83:90], v[15:16], v[31:32], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v44, v17, 0xc0c0004
	ds_load_u8 v44, v211 offset:4592
	ds_load_u8 v45, v211 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v211 offset:4848
	ds_load_u8 v46, v211 offset:4720
	v_lshl_or_b32 v44, v44, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v5
	ds_load_u8 v47, v211 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v46, 16, v45
	ds_load_u8 v17, v211 offset:5360
	ds_load_u8 v46, v211 offset:5232
	v_wmma_i32_16x16x16_iu4 v[83:90], v[44:45], v[27:28], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v46, v17, 0xc0c0004
	ds_load_u8 v46, v211 offset:5616
	ds_load_u8 v47, v211 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v211 offset:5872
	ds_load_u8 v48, v211 offset:5744
	v_lshl_or_b32 v46, v46, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v6
	ds_load_u8 v49, v211 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v48, 16, v47
	ds_load_u8 v17, v211 offset:6384
	ds_load_u8 v48, v211 offset:6256
	v_wmma_i32_16x16x16_iu4 v[83:90], v[46:47], v[25:26], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v48, v17, 0xc0c0004
	ds_load_u8 v48, v211 offset:6640
	ds_load_u8 v49, v211 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v211 offset:6896
	ds_load_u8 v53, v211 offset:6768
	v_lshl_or_b32 v48, v48, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v53, v49, 0xc0c0004
	ds_load_u8 v53, v7
	ds_load_u8 v58, v211 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v58, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v53, 16, v49
	ds_load_u8 v17, v211 offset:7408
	ds_load_u8 v53, v211 offset:7280
	v_wmma_i32_16x16x16_iu4 v[83:90], v[48:49], v[23:24], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v53, v17, 0xc0c0004
	ds_load_u8 v53, v211 offset:7664
	ds_load_u8 v58, v211 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v58, v53, 0xc0c0004
	ds_load_u8 v58, v211 offset:7920
	ds_load_u8 v59, v211 offset:7792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v59, v58, 0xc0c0004
	ds_load_u8 v58, v8
	ds_load_u8 v60, v211 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v60, v58, 0xc0c0004
	v_lshl_or_b32 v58, v53, 16, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v60, 16, v59
	v_wmma_i32_16x16x16_iu4 v[83:90], v[58:59], v[21:22], v[83:90] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v83
	scratch_store_b32 off, v9, off offset:552 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v84
	scratch_store_b32 off, v9, off offset:548 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v85
	scratch_store_b32 off, v9, off offset:544 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v86
	scratch_store_b32 off, v9, off offset:540 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v87
	scratch_store_b32 off, v9, off offset:536 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v88
	scratch_store_b32 off, v9, off offset:532 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v89
	scratch_store_b32 off, v9, off offset:528 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v90
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	scratch_store_b32 off, v9, off offset:524 ; 4-byte Folded Spill
	ds_load_u8 v9, v211 offset:8432
	ds_load_u8 v10, v211 offset:8304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:8688
	ds_load_u8 v11, v211 offset:8560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:8944
	ds_load_u8 v12, v211 offset:8816
	v_lshl_or_b32 v44, v10, 16, v9
	ds_load_u8 v9, v211 offset:9456
	ds_load_u8 v10, v211 offset:9328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v75 offset:8192
	ds_load_u8 v13, v211 offset:9072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v12, 16, v11
	ds_load_u8 v10, v211 offset:9712
	ds_load_u8 v11, v211 offset:9584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:9968
	ds_load_u8 v12, v211 offset:9840
	v_lshl_or_b32 v46, v10, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v0 offset:8192
	ds_load_u8 v13, v211 offset:10096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v12, 16, v11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[29:30], v[214:221] neg_lo:[1,1,0]
	ds_load_u8 v17, v211 offset:10480
	ds_load_u8 v29, v211 offset:10352
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v29, v17, 0xc0c0004
	ds_load_u8 v29, v211 offset:10736
	ds_load_u8 v30, v211 offset:10608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v211 offset:10992
	ds_load_u8 v35, v211 offset:10864
	v_lshl_or_b32 v29, v29, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v35, v30, 0xc0c0004
	ds_load_u8 v35, v3 offset:8192
	ds_load_u8 v36, v211 offset:11120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v35, 16, v30
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[33:34], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v211 offset:11504
	ds_load_u8 v29, v211 offset:11376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v29, v17, 0xc0c0004
	ds_load_u8 v29, v211 offset:11760
	ds_load_u8 v30, v211 offset:11632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v211 offset:12016
	ds_load_u8 v33, v211 offset:11888
	v_lshl_or_b32 v29, v29, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v33, v30, 0xc0c0004
	ds_load_u8 v33, v4 offset:8192
	ds_load_u8 v34, v211 offset:12144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v33, 16, v30
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[31:32], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v211 offset:12528
	ds_load_u8 v29, v211 offset:12400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v29, v17, 0xc0c0004
	ds_load_u8 v29, v211 offset:12784
	ds_load_u8 v30, v211 offset:12656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v211 offset:13040
	ds_load_u8 v31, v211 offset:12912
	v_lshl_or_b32 v29, v29, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v5 offset:8192
	ds_load_u8 v32, v211 offset:13168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v31, 16, v30
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[27:28], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v211 offset:13552
	ds_load_u8 v27, v211 offset:13424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v27, v17, 0xc0c0004
	ds_load_u8 v27, v211 offset:13808
	ds_load_u8 v28, v211 offset:13680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v211 offset:14064
	ds_load_u8 v29, v211 offset:13936
	v_lshl_or_b32 v27, v27, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v6 offset:8192
	ds_load_u8 v30, v211 offset:14192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v29, 16, v28
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v211 offset:14576
	ds_load_u8 v25, v211 offset:14448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v25, v17, 0xc0c0004
	ds_load_u8 v25, v211 offset:14832
	ds_load_u8 v26, v211 offset:14704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v211 offset:15088
	ds_load_u8 v27, v211 offset:14960
	v_lshl_or_b32 v25, v25, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v7 offset:8192
	ds_load_u8 v28, v211 offset:15216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v27, 16, v26
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[23:24], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v211 offset:15600
	ds_load_u8 v23, v211 offset:15472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v23, v17, 0xc0c0004
	ds_load_u8 v23, v211 offset:15856
	ds_load_u8 v24, v211 offset:15728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v211 offset:16112
	ds_load_u8 v25, v211 offset:15984
	v_lshl_or_b32 v23, v23, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v8 offset:8192
	ds_load_u8 v26, v211 offset:16240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v24, v25, 16, v24
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v0, v9
	v_cvt_f32_i32_e32 v171, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v170, v15
	scratch_store_b32 off, v0, off offset:576 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v10
	scratch_load_b32 v10, off, off offset:604 ; 4-byte Folded Reload
	scratch_store_b32 off, v0, off offset:572 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v11
	scratch_store_b32 off, v0, off offset:568 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v12
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v13
	scratch_store_b32 off, v0, off offset:560 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v14
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, s3, v10
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v214, v69, s[36:39], 0 offen
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1f
	buffer_load_u16 v224, v16, s[40:43], 0 offen
	buffer_load_u16 v223, v16, s[40:43], 0 offen offset:4
	buffer_load_u16 v222, v16, s[40:43], 0 offen offset:8
	buffer_load_u16 v221, v16, s[40:43], 0 offen offset:12
	buffer_load_u16 v220, v16, s[40:43], 0 offen offset:16
	buffer_load_u16 v219, v16, s[40:43], 0 offen offset:20
	buffer_load_u16 v218, v16, s[40:43], 0 offen offset:24
	buffer_load_u16 v217, v16, s[40:43], 0 offen offset:28
	buffer_load_u16 v216, v16, s[40:43], 0 offen offset:32
	buffer_load_u16 v215, v16, s[40:43], 0 offen offset:36
	buffer_load_u16 v37, v16, s[40:43], 0 offen offset:40
	buffer_load_u16 v38, v16, s[40:43], 0 offen offset:44
	buffer_load_u16 v90, v16, s[40:43], 0 offen offset:48
	buffer_load_u16 v89, v16, s[40:43], 0 offen offset:52
	buffer_load_u16 v88, v16, s[40:43], 0 offen offset:56
	buffer_load_u16 v87, v16, s[40:43], 0 offen offset:60
	buffer_load_u16 v86, v16, s[40:43], 0 offen offset:64
	buffer_load_u16 v85, v16, s[40:43], 0 offen offset:68
	buffer_load_u16 v84, v16, s[40:43], 0 offen offset:72
	buffer_load_u16 v83, v16, s[40:43], 0 offen offset:76
	buffer_load_u16 v60, v16, s[40:43], 0 offen offset:80
	buffer_load_u16 v59, v16, s[40:43], 0 offen offset:84
	buffer_load_u16 v58, v16, s[40:43], 0 offen offset:88
	buffer_load_u16 v39, v16, s[40:43], 0 offen offset:92
	buffer_load_u16 v53, v16, s[40:43], 0 offen offset:96
	buffer_load_u16 v49, v16, s[40:43], 0 offen offset:100
	buffer_load_u16 v48, v16, s[40:43], 0 offen offset:104
	buffer_load_u16 v47, v16, s[40:43], 0 offen offset:108
	buffer_load_u16 v46, v16, s[40:43], 0 offen offset:112
	buffer_load_u16 v45, v16, s[40:43], 0 offen offset:116
	buffer_load_u16 v44, v16, s[40:43], 0 offen offset:120
	buffer_load_u16 v255, v16, s[40:43], 0 offen offset:124
	s_clause 0x10
	buffer_load_u16 v254, v16, s[40:43], 0 offen offset:128
	buffer_load_u16 v40, v16, s[40:43], 0 offen offset:132
	buffer_load_u16 v79, v16, s[40:43], 0 offen offset:136
	buffer_load_u16 v78, v16, s[40:43], 0 offen offset:140
	buffer_load_u16 v253, v16, s[40:43], 0 offen offset:144
	buffer_load_u16 v252, v16, s[40:43], 0 offen offset:148
	buffer_load_u16 v66, v16, s[40:43], 0 offen offset:152
	buffer_load_u16 v251, v16, s[40:43], 0 offen offset:156
	buffer_load_u16 v250, v16, s[40:43], 0 offen offset:160
	buffer_load_u16 v249, v16, s[40:43], 0 offen offset:164
	buffer_load_u16 v248, v16, s[40:43], 0 offen offset:168
	buffer_load_u16 v247, v16, s[40:43], 0 offen offset:172
	buffer_load_u16 v246, v16, s[40:43], 0 offen offset:176
	buffer_load_u16 v245, v16, s[40:43], 0 offen offset:180
	buffer_load_u16 v244, v16, s[40:43], 0 offen offset:184
	buffer_load_u16 v243, v16, s[40:43], 0 offen offset:188
	buffer_load_u16 v0, v16, s[40:43], 0 offen offset:192
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v9, s7, v10
	s_clause 0x1f
	buffer_load_u16 v3, v9, s[40:43], 0 offen
	buffer_load_u16 v4, v9, s[40:43], 0 offen offset:4
	buffer_load_u16 v5, v9, s[40:43], 0 offen offset:8
	buffer_load_u16 v74, v9, s[40:43], 0 offen offset:12
	buffer_load_u16 v73, v9, s[40:43], 0 offen offset:16
	buffer_load_u16 v6, v9, s[40:43], 0 offen offset:20
	buffer_load_u16 v57, v9, s[40:43], 0 offen offset:24
	buffer_load_u16 v56, v9, s[40:43], 0 offen offset:28
	buffer_load_u16 v55, v9, s[40:43], 0 offen offset:32
	buffer_load_u16 v62, v9, s[40:43], 0 offen offset:36
	buffer_load_u16 v61, v9, s[40:43], 0 offen offset:40
	buffer_load_u16 v54, v9, s[40:43], 0 offen offset:44
	buffer_load_u16 v7, v9, s[40:43], 0 offen offset:48
	buffer_load_u16 v72, v9, s[40:43], 0 offen offset:52
	buffer_load_u16 v8, v9, s[40:43], 0 offen offset:56
	buffer_load_u16 v13, v9, s[40:43], 0 offen offset:60
	buffer_load_u16 v14, v9, s[40:43], 0 offen offset:64
	buffer_load_u16 v15, v9, s[40:43], 0 offen offset:68
	buffer_load_u16 v17, v9, s[40:43], 0 offen offset:72
	buffer_load_u16 v18, v9, s[40:43], 0 offen offset:76
	buffer_load_u16 v19, v9, s[40:43], 0 offen offset:80
	buffer_load_u16 v20, v9, s[40:43], 0 offen offset:84
	buffer_load_u16 v21, v9, s[40:43], 0 offen offset:88
	buffer_load_u16 v22, v9, s[40:43], 0 offen offset:92
	buffer_load_u16 v23, v9, s[40:43], 0 offen offset:96
	buffer_load_u16 v24, v9, s[40:43], 0 offen offset:100
	buffer_load_u16 v25, v9, s[40:43], 0 offen offset:104
	buffer_load_u16 v26, v9, s[40:43], 0 offen offset:108
	buffer_load_u16 v70, v9, s[40:43], 0 offen offset:112
	buffer_load_u16 v196, v9, s[40:43], 0 offen offset:116
	buffer_load_u16 v67, v9, s[40:43], 0 offen offset:120
	buffer_load_u16 v27, v9, s[40:43], 0 offen offset:124
	s_clause 0x1f
	buffer_load_u16 v68, v9, s[40:43], 0 offen offset:128
	buffer_load_u16 v194, v9, s[40:43], 0 offen offset:132
	buffer_load_u16 v75, v9, s[40:43], 0 offen offset:136
	buffer_load_u16 v28, v9, s[40:43], 0 offen offset:140
	buffer_load_u16 v77, v9, s[40:43], 0 offen offset:144
	buffer_load_u16 v76, v9, s[40:43], 0 offen offset:148
	buffer_load_u16 v29, v9, s[40:43], 0 offen offset:152
	buffer_load_u16 v30, v9, s[40:43], 0 offen offset:156
	buffer_load_u16 v190, v9, s[40:43], 0 offen offset:160
	buffer_load_u16 v31, v9, s[40:43], 0 offen offset:164
	buffer_load_u16 v32, v9, s[40:43], 0 offen offset:168
	buffer_load_u16 v237, v9, s[40:43], 0 offen offset:172
	buffer_load_u16 v235, v9, s[40:43], 0 offen offset:176
	buffer_load_u16 v233, v9, s[40:43], 0 offen offset:180
	buffer_load_u16 v238, v9, s[40:43], 0 offen offset:184
	buffer_load_u16 v236, v9, s[40:43], 0 offen offset:188
	buffer_load_u16 v234, v9, s[40:43], 0 offen offset:192
	buffer_load_u16 v232, v9, s[40:43], 0 offen offset:196
	buffer_load_u16 v33, v9, s[40:43], 0 offen offset:200
	buffer_load_u16 v34, v9, s[40:43], 0 offen offset:204
	buffer_load_u16 v35, v9, s[40:43], 0 offen offset:208
	buffer_load_u16 v36, v9, s[40:43], 0 offen offset:212
	buffer_load_u16 v175, v9, s[40:43], 0 offen offset:216
	buffer_load_u16 v176, v9, s[40:43], 0 offen offset:220
	buffer_load_u16 v231, v9, s[40:43], 0 offen offset:224
	buffer_load_u16 v174, v9, s[40:43], 0 offen offset:228
	buffer_load_u16 v229, v9, s[40:43], 0 offen offset:232
	buffer_load_u16 v230, v9, s[40:43], 0 offen offset:236
	buffer_load_u16 v227, v9, s[40:43], 0 offen offset:240
	buffer_load_u16 v228, v9, s[40:43], 0 offen offset:244
	buffer_load_u16 v226, v9, s[40:43], 0 offen offset:248
	buffer_load_u16 v225, v9, s[40:43], 0 offen offset:252
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v9, 0x80000000, v80, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v80, s45, v80
	s_add_i32 s3, s3, s6
	s_add_i32 s7, s7, s6
	s_cmp_lg_u32 s0, 0
	v_add_nc_u32_e32 v69, 2, v69
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(62)
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	buffer_load_u16 v0, v16, s[40:43], 0 offen offset:196
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:584 ; 4-byte Folded Spill
	s_clause 0xb
	buffer_load_u16 v82, v16, s[40:43], 0 offen offset:200
	buffer_load_u16 v41, v16, s[40:43], 0 offen offset:204
	buffer_load_u16 v42, v16, s[40:43], 0 offen offset:208
	buffer_load_u16 v43, v16, s[40:43], 0 offen offset:212
	buffer_load_u16 v50, v16, s[40:43], 0 offen offset:216
	buffer_load_u16 v51, v16, s[40:43], 0 offen offset:220
	buffer_load_u16 v52, v16, s[40:43], 0 offen offset:224
	buffer_load_u16 v63, v16, s[40:43], 0 offen offset:228
	buffer_load_u16 v64, v16, s[40:43], 0 offen offset:232
	buffer_load_u16 v65, v16, s[40:43], 0 offen offset:236
	buffer_load_u16 v81, v16, s[40:43], 0 offen offset:240
	buffer_load_u16 v0, v16, s[40:43], 0 offen offset:244
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1
	buffer_load_u16 v128, v16, s[40:43], 0 offen offset:248
	buffer_load_u16 v16, v16, s[40:43], 0 offen offset:252
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	s_waitcnt vmcnt(3)
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:668
	scratch_load_b128 v[239:242], off, off offset:252
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[239:242]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	ds_store_b128 v0, v[9:12] offset:8192
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v9, 16, v214
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:4
	scratch_load_b32 v3, off, off offset:420
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v213, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v212, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v5
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v163, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v74
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v164, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v73
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v162, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v6
	scratch_load_b32 v0, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v161, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v57
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v159, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v56
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v160, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v55
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v157, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v62
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v158, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v61
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v155, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v54
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v156, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v7
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v153, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v72
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v154, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v8
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v152, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v13
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v151, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v14
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v150, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v15
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v149, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v148, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:12
	scratch_load_b32 v0, off, off offset:232
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v147, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v14, off, off offset:20
	scratch_load_b32 v0, off, off offset:228
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v146, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v145, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v144, v11, v10 :: v_dual_mul_f32 v11, v9, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v22
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v143, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v23
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v142, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v141, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v25
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v140, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v26
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v139, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v70
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v138, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v196
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v137, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v67
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:596
	scratch_load_b32 v0, off, off offset:300
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v136, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v27
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v135, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v68
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v134, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v194
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v133, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v75
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v75, off, off offset:592
	scratch_load_b32 v0, off, off offset:352
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v132, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v131, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v77
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v130, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v76
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:8
	scratch_load_b32 v0, off, off offset:336
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v129, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v29
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:16
	scratch_load_b32 v0, off, off offset:332
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v127, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v30
	scratch_load_b32 v0, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v126, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v190
	scratch_load_b32 v0, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v125, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v31
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v124, v11, v10
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v10, 16, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v123, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v237
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v122, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v235
	scratch_load_b32 v0, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v121, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v233
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v120, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v238
	scratch_load_b32 v0, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v119, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v236
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v118, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v234
	scratch_load_b32 v0, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v117, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v232
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v116, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v33
	scratch_load_b32 v0, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v115, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v34
	scratch_load_b32 v0, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v114, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v35
	scratch_load_b32 v0, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v113, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v36
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v112, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v175
	scratch_load_b32 v0, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v111, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v176
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v110, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v231
	scratch_load_b32 v0, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v109, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v174
	scratch_load_b32 v0, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v108, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v229
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v107, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v230
	scratch_load_b32 v0, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v106, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v227
	scratch_load_b32 v0, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v105, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v228
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v104, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v226
	scratch_load_b32 v0, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v102, v11, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v225
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v100, v11, v10
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v224
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v14, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v223
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v13, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v222
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v210, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v221
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v12, v11, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v220
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v208, v11, v10 :: v_dual_mul_f32 v11, v9, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v209, v11, v10
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v218
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v206, v11, v10
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v217
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v207, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v216
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v204, v11, v10 :: v_dual_mul_f32 v11, v9, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v0, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v215
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v205, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v37
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v202, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v38
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v203, v11, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v90
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v90, off, off offset:52
	scratch_load_b32 v232, off, off offset:48
	scratch_load_b32 v233, off, off offset:44
	scratch_load_b32 v0, off, off offset:136
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v71, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v89
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v201, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v88
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v233, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v87
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v200, v11, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v86
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v86, off, off offset:40
	scratch_load_b32 v196, off, off offset:36
	scratch_load_b32 v194, off, off offset:32
	scratch_load_b32 v0, off, off offset:216
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v199, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v85
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v85, off, off offset:28
	scratch_load_b32 v190, off, off offset:24
	scratch_load_b32 v0, off, off offset:212
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v232, v11, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v84
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v197, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v83
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v198, v11, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v60
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v193, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v59
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v195, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v58
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v192, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v39
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v194, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v53
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v189, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v49
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v191, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v48
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v187, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v47
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v188, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v46
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v185, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v45
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v186, v11, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v44
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v183, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v255
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v184, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v254
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v181, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v40
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v182, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v79
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v179, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v78
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v180, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v253
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v177, v11, v10 :: v_dual_lshlrev_b32 v10, 16, v252
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v11, v9, v0
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v178, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v66
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v24, v11, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v11, v9, v0 :: v_dual_lshlrev_b32 v10, 16, v251
	scratch_load_b32 v0, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v25, v11, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v10, 16, v250
	scratch_load_b32 v11, off, off          ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v9, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v173, v0, v10 :: v_dual_mul_f32 v10, v9, v3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	scratch_load_b32 v3, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v249
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v11, v10, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v248
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v196, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v247
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v172, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v246
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v169, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v245
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v190, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v244
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v167, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v243
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v168, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	scratch_load_b32 v0, off, off offset:588 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v165, v10, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	scratch_load_b32 v0, off, off offset:584 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v166, v10, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v82
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v101, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v41
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v103, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v42
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v98, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v43
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v99, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v50
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v96, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v51
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v97, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v52
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v94, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v63
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:568 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v95, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v64
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:564 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v92, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v65
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v93, v10, v0 :: v_dual_lshlrev_b32 v0, 16, v81
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v3
	scratch_load_b32 v3, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v90, v10, v0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	scratch_load_b32 v0, off, off offset:580 ; 4-byte Folded Reload
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v10, v9, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v91, v10, v0 :: v_dual_mul_f32 v10, v9, v170
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v0, 16, v128
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v85, v10, v0 :: v_dual_mul_f32 v0, v9, v171
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v9, 16, v16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v86, v0, v9
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v22, v0 offset:16384
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v3, off, off offset:684
	scratch_load_b32 v4, off, off offset:688
	scratch_load_b32 v5, off, off offset:692
	scratch_load_b32 v6, off, off offset:696
	scratch_load_b32 v7, off, off offset:700
	scratch_load_b32 v8, off, off offset:704
	scratch_load_b32 v9, off, off offset:708
	scratch_load_b32 v83, off, off offset:680
	scratch_load_b32 v26, off, off offset:672
	scratch_load_b32 v27, off, off offset:676
.LBB0_6:                                ; %Flow2009
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v212, off offset:268
	scratch_store_b32 off, v213, off offset:252
	scratch_store_b32 off, v14, off offset:20
	scratch_store_b32 off, v13, off offset:12
	scratch_store_b32 off, v12, off offset:4
	scratch_store_b32 off, v180, off offset:248
	scratch_store_b32 off, v179, off offset:244
	scratch_store_b32 off, v178, off offset:240
	scratch_store_b32 off, v177, off offset:236
	scratch_store_b32 off, v25, off offset:16
	scratch_store_b32 off, v24, off offset:8
	scratch_store_b32 off, v11, off
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v0, v211 offset:16384
	ds_load_u8_d16 v249, v211 offset:16768
	ds_load_u8_d16 v250, v211 offset:16784
	ds_load_u8_d16 v66, v211 offset:16800
	ds_load_u8_d16 v251, v211 offset:16816
	ds_load_u8_d16 v252, v211 offset:16832
	ds_load_u8_d16 v253, v211 offset:16848
	ds_load_u8_d16 v128, v211 offset:16864
	ds_load_u8_d16 v212, v211 offset:16880
	ds_load_u8_d16 v170, v211 offset:16896
	ds_load_u8_d16 v171, v211 offset:16912
	ds_load_u8_d16 v234, v211 offset:16928
	ds_load_u8_d16 v236, v211 offset:16944
	ds_load_u8_d16 v241, v211 offset:16960
	ds_load_u8_d16 v242, v211 offset:16976
	ds_load_u8_d16 v243, v211 offset:16992
	ds_load_u8_d16 v245, v211 offset:17008
	ds_load_u8_d16 v16, v211 offset:17024
	ds_load_u8_d16 v178, v211 offset:17040
	ds_load_u8_d16 v88, v211 offset:17056
	ds_load_u8_d16 v89, v211 offset:17072
	ds_load_u8_d16 v84, v211 offset:17088
	ds_load_u8_d16 v87, v211 offset:17104
	ds_load_u8_d16 v179, v211 offset:17120
	ds_load_u8_d16 v180, v211 offset:17136
	ds_load_u8_d16 v235, v211 offset:17152
	ds_load_u8_d16 v237, v211 offset:17168
	ds_load_u8_d16 v238, v211 offset:17184
	ds_load_u8_d16 v240, v211 offset:17200
	ds_load_u8_d16 v244, v211 offset:17216
	ds_load_u8_d16 v246, v211 offset:17232
	ds_load_u8_d16 v247, v211 offset:17248
	ds_load_u8_d16 v248, v211 offset:17264
	ds_load_u8_d16 v229, v211 offset:17280
	ds_load_u8_d16 v230, v211 offset:17296
	ds_load_u8_d16 v231, v211 offset:17312
	ds_load_u8_d16 v21, v211 offset:17328
	ds_load_u8_d16 v20, v211 offset:17344
	ds_load_u8_d16 v23, v211 offset:17360
	ds_load_u8_d16 v22, v211 offset:17376
	ds_load_u8_d16 v82, v75 offset:16384
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v72, 0, v9
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v76, 0, v8
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v77, 0, v7
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v78, 0, v6
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v177, 0, v5
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v174, 0, v4
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v175, 0, v3
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	s_waitcnt lgkmcnt(40)
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v211 offset:16400
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v228, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v211 offset:16416
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v211 offset:16432
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v218, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_mov_b32 s4, 0
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v211 offset:16448
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v211 offset:16464
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v211 offset:16480
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	ds_load_u8_d16 v0, v211 offset:16496
	ds_load_u8_d16 v1, v211 offset:16512
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:292 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v211 offset:16528
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:296 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v211 offset:16544
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:300 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v211 offset:16560
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:304 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v211 offset:16576
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:308 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v211 offset:16592
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:312 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v211 offset:16608
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:316 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v211 offset:16624
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:320 ; 4-byte Folded Spill
	ds_load_u8_d16 v239, v211 offset:16640
	ds_load_u8_d16 v254, v211 offset:16656
	ds_load_u8_d16 v255, v211 offset:16672
	ds_load_u8_d16 v1, v211 offset:16688
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:272 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v211 offset:16704
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:276 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v211 offset:16720
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:280 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v211 offset:16736
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:284 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v211 offset:16752
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:288 ; 4-byte Folded Spill
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v1, 0, 1, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v1
	v_mov_b32_e32 v1, 0
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:340
	scratch_load_b32 v2, off, off offset:348
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	ds_load_u8 v17, v211 offset:1760
	ds_load_u8 v24, v211 offset:1632
	v_mov_b16_e64 v176.l, v16.l
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	scratch_load_b32 v2, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v2, 16, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:324
	scratch_load_b32 v2, off, off offset:328
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:332
	scratch_load_b32 v3, off, off offset:336
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v2, 16, v1
	ds_load_u8 v1, v211 offset:640
	ds_load_u8 v2, v211 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v211 offset:896
	ds_load_u8 v3, v211 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v2, 16, v1
	ds_load_u8 v1, v211 offset:128
	ds_load_u8 v2, v211
	ds_load_u8 v11, v211 offset:16
	ds_load_u8 v12, v211 offset:32
	ds_load_u8 v13, v211 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v211 offset:384
	ds_load_u8 v3, v211 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[79:80], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:308
	scratch_load_b32 v10, off, off offset:312
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:316
	scratch_load_b32 v14, off, off offset:320
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v10, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v10, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:292
	scratch_load_b32 v10, off, off offset:296
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:300
	scratch_load_b32 v14, off, off offset:304
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v10, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v10, 16, v9
	ds_load_u8 v9, v211 offset:1664
	ds_load_u8 v10, v211 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:1920
	ds_load_u8 v14, v211 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:1152
	ds_load_u8 v14, v211 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v211 offset:1408
	ds_load_u8 v15, v211 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v14, 16, v9
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[69:70], v[49:56] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:276
	scratch_load_b32 v10, off, off offset:280
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v10, off, off offset:284
	scratch_load_b32 v14, off, off offset:288
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v10, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v10, 16, v9
	scratch_load_b32 v10, off, off offset:272 ; 4-byte Folded Reload
	v_perm_b32 v9, v239, v254, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v10, v255, v10, 0xc0c0004
	v_lshl_or_b32 v67, v10, 16, v9
	ds_load_u8 v9, v211 offset:2688
	ds_load_u8 v10, v211 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:2944
	ds_load_u8 v14, v211 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:2176
	ds_load_u8 v14, v211 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v211 offset:2432
	ds_load_u8 v15, v211 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v14, 16, v9
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[67:68], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v9, v252, v253, 0xc0c0004
	v_perm_b32 v10, v128, v212, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v10, 16, v9
	v_perm_b32 v9, v249, v250, 0xc0c0004
	v_perm_b32 v10, v66, v251, 0xc0c0004
	v_lshl_or_b32 v61, v10, 16, v9
	ds_load_u8 v9, v211 offset:3712
	ds_load_u8 v10, v211 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:3968
	ds_load_u8 v14, v211 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:3200
	ds_load_u8 v14, v211 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v211 offset:3456
	ds_load_u8 v15, v211 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v14, 16, v9
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[61:62], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v9, v241, v242, 0xc0c0004
	v_perm_b32 v10, v243, v245, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v10, 16, v9
	v_perm_b32 v9, v170, v171, 0xc0c0004
	v_perm_b32 v10, v234, v236, 0xc0c0004
	v_lshl_or_b32 v59, v10, 16, v9
	ds_load_u8 v9, v211 offset:4736
	ds_load_u8 v10, v211 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:4992
	ds_load_u8 v14, v211 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:4224
	ds_load_u8 v14, v211 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v211 offset:4480
	ds_load_u8 v15, v211 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v14, 16, v9
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[59:60], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v9, v84, v87, 0xc0c0004
	v_perm_b32 v10, v179, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v10, 16, v9
	v_perm_b32 v9, v16, v178, 0xc0c0004
	v_perm_b32 v10, v88, v89, 0xc0c0004
	v_lshl_or_b32 v57, v10, 16, v9
	ds_load_u8 v9, v211 offset:5760
	ds_load_u8 v10, v211 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:6016
	ds_load_u8 v14, v211 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:5248
	ds_load_u8 v14, v211 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v211 offset:5504
	ds_load_u8 v15, v211 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v14, 16, v9
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[57:58], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v9, v244, v246, 0xc0c0004
	v_perm_b32 v10, v247, v248, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v10, 16, v9
	v_perm_b32 v9, v235, v237, 0xc0c0004
	v_perm_b32 v10, v238, v240, 0xc0c0004
	v_lshl_or_b32 v73, v10, 16, v9
	ds_load_u8 v9, v211 offset:6784
	ds_load_u8 v10, v211 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:7040
	ds_load_u8 v14, v211 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:6272
	ds_load_u8 v14, v211 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v211 offset:6528
	ds_load_u8 v15, v211 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v14, 16, v9
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[73:74], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v9, v20, v23, 0xc0c0004
	v_perm_b32 v10, v22, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v10, 16, v9
	v_perm_b32 v9, v229, v230, 0xc0c0004
	v_perm_b32 v10, v231, v21, 0xc0c0004
	v_lshl_or_b32 v18, v10, 16, v9
	ds_load_u8 v9, v211 offset:7808
	ds_load_u8 v10, v211 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:8064
	ds_load_u8 v14, v211 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:7296
	ds_load_u8 v14, v211 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	ds_load_u8 v14, v211 offset:7552
	ds_load_u8 v15, v211 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v14, 16, v9
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[18:19], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:656
	ds_load_u8 v10, v211 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:912
	ds_load_u8 v14, v211 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v14, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:400
	ds_load_u8 v14, v211 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:1680
	ds_load_u8 v10, v211 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:1936
	ds_load_u8 v11, v211 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:1168
	ds_load_u8 v11, v211 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:1424
	ds_load_u8 v14, v211 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[69:70], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:2704
	ds_load_u8 v10, v211 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:2960
	ds_load_u8 v11, v211 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:2192
	ds_load_u8 v11, v211 offset:2064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:2448
	ds_load_u8 v14, v211 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[67:68], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:3728
	ds_load_u8 v10, v211 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:3984
	ds_load_u8 v11, v211 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:3216
	ds_load_u8 v11, v211 offset:3088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:3472
	ds_load_u8 v14, v211 offset:3344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[61:62], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:4752
	ds_load_u8 v10, v211 offset:4624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:5008
	ds_load_u8 v11, v211 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:4240
	ds_load_u8 v11, v211 offset:4112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:4496
	ds_load_u8 v14, v211 offset:4368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[59:60], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:5776
	ds_load_u8 v10, v211 offset:5648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:6032
	ds_load_u8 v11, v211 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:5264
	ds_load_u8 v11, v211 offset:5136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:5520
	ds_load_u8 v14, v211 offset:5392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[57:58], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:6800
	ds_load_u8 v10, v211 offset:6672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:7056
	ds_load_u8 v11, v211 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:6288
	ds_load_u8 v11, v211 offset:6160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:6544
	ds_load_u8 v14, v211 offset:6416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[73:74], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:7824
	ds_load_u8 v10, v211 offset:7696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:8080
	ds_load_u8 v11, v211 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:7312
	ds_load_u8 v11, v211 offset:7184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:7568
	ds_load_u8 v14, v211 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v14, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[18:19], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:672
	ds_load_u8 v10, v211 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:928
	ds_load_u8 v11, v211 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v12, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:416
	ds_load_u8 v12, v211 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[221:228], v[9:10], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:1696
	ds_load_u8 v10, v211 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:1952
	ds_load_u8 v11, v211 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:1184
	ds_load_u8 v11, v211 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:1440
	ds_load_u8 v12, v211 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[221:228], v[9:10], v[69:70], v[221:228] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:2720
	ds_load_u8 v10, v211 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:2976
	ds_load_u8 v11, v211 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:2208
	ds_load_u8 v11, v211 offset:2080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:2464
	ds_load_u8 v12, v211 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[221:228], v[9:10], v[67:68], v[221:228] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:3744
	ds_load_u8 v10, v211 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:4000
	ds_load_u8 v11, v211 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:3232
	ds_load_u8 v11, v211 offset:3104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:3488
	ds_load_u8 v12, v211 offset:3360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[221:228], v[9:10], v[61:62], v[221:228] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:4768
	ds_load_u8 v10, v211 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:5024
	ds_load_u8 v11, v211 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:4256
	ds_load_u8 v11, v211 offset:4128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:4512
	ds_load_u8 v12, v211 offset:4384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[221:228], v[9:10], v[59:60], v[221:228] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:5792
	ds_load_u8 v10, v211 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:6048
	ds_load_u8 v11, v211 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:5280
	ds_load_u8 v11, v211 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:5536
	ds_load_u8 v12, v211 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[221:228], v[9:10], v[57:58], v[221:228] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:6816
	ds_load_u8 v10, v211 offset:6688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:7072
	ds_load_u8 v11, v211 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:6304
	ds_load_u8 v11, v211 offset:6176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:6560
	ds_load_u8 v12, v211 offset:6432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[221:228], v[9:10], v[73:74], v[221:228] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:7840
	ds_load_u8 v10, v211 offset:7712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:8096
	ds_load_u8 v11, v211 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:7328
	ds_load_u8 v11, v211 offset:7200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:7584
	ds_load_u8 v12, v211 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[221:228], v[9:10], v[18:19], v[221:228] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:688
	ds_load_u8 v10, v211 offset:560
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v225, v225
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:944
	ds_load_u8 v11, v211 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v211 offset:432
	ds_load_u8 v12, v211 offset:304
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:176
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v13, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:1712
	ds_load_u8 v10, v211 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:1968
	ds_load_u8 v11, v211 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:1200
	ds_load_u8 v11, v211 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:1456
	ds_load_u8 v12, v211 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[69:70], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:2736
	ds_load_u8 v10, v211 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:2992
	ds_load_u8 v11, v211 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:2224
	ds_load_u8 v11, v211 offset:2096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:2480
	ds_load_u8 v12, v211 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[67:68], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:3760
	ds_load_u8 v10, v211 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:4016
	ds_load_u8 v11, v211 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:3248
	ds_load_u8 v11, v211 offset:3120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:3504
	ds_load_u8 v12, v211 offset:3376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[61:62], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:4784
	ds_load_u8 v10, v211 offset:4656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:5040
	ds_load_u8 v11, v211 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:4272
	ds_load_u8 v11, v211 offset:4144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:4528
	ds_load_u8 v12, v211 offset:4400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[59:60], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:5808
	ds_load_u8 v10, v211 offset:5680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:6064
	ds_load_u8 v11, v211 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:5296
	ds_load_u8 v11, v211 offset:5168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:5552
	ds_load_u8 v12, v211 offset:5424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[57:58], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:6832
	ds_load_u8 v10, v211 offset:6704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:7088
	ds_load_u8 v11, v211 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:6320
	ds_load_u8 v11, v211 offset:6192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:6576
	ds_load_u8 v12, v211 offset:6448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[73:74], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:7856
	ds_load_u8 v10, v211 offset:7728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:8112
	ds_load_u8 v11, v211 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:7344
	ds_load_u8 v11, v211 offset:7216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:7600
	ds_load_u8 v12, v211 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[18:19], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:704
	ds_load_u8 v10, v211 offset:576
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:960
	ds_load_u8 v11, v211 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:192
	ds_load_u8 v11, v211 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:448
	ds_load_u8 v12, v211 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:1728
	ds_load_u8 v10, v211 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:1984
	ds_load_u8 v11, v211 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:1216
	ds_load_u8 v11, v211 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:1472
	ds_load_u8 v12, v211 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[69:70], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:2752
	ds_load_u8 v10, v211 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:3008
	ds_load_u8 v11, v211 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:2240
	ds_load_u8 v11, v211 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:2496
	ds_load_u8 v12, v211 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[67:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:3776
	ds_load_u8 v10, v211 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:4032
	ds_load_u8 v11, v211 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:3264
	ds_load_u8 v11, v211 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:3520
	ds_load_u8 v12, v211 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[61:62], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:4800
	ds_load_u8 v10, v211 offset:4672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:5056
	ds_load_u8 v11, v211 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:4288
	ds_load_u8 v11, v211 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:4544
	ds_load_u8 v12, v211 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[59:60], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:5824
	ds_load_u8 v10, v211 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:6080
	ds_load_u8 v11, v211 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:5312
	ds_load_u8 v11, v211 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:5568
	ds_load_u8 v12, v211 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[57:58], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:6848
	ds_load_u8 v10, v211 offset:6720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:7104
	ds_load_u8 v11, v211 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:6336
	ds_load_u8 v11, v211 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:6592
	ds_load_u8 v12, v211 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[73:74], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:7872
	ds_load_u8 v10, v211 offset:7744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:8128
	ds_load_u8 v11, v211 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:7360
	ds_load_u8 v11, v211 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:7616
	ds_load_u8 v12, v211 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[18:19], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:720
	ds_load_u8 v10, v211 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:976
	ds_load_u8 v11, v211 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:208
	ds_load_u8 v11, v211 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:464
	ds_load_u8 v12, v211 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[213:220], v[9:10], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:1744
	ds_load_u8 v10, v211 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:2000
	ds_load_u8 v11, v211 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:1232
	ds_load_u8 v11, v211 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:1488
	ds_load_u8 v12, v211 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[213:220], v[9:10], v[69:70], v[213:220] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:2768
	ds_load_u8 v10, v211 offset:2640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:3024
	ds_load_u8 v11, v211 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:2256
	ds_load_u8 v11, v211 offset:2128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:2512
	ds_load_u8 v12, v211 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[213:220], v[9:10], v[67:68], v[213:220] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:3792
	ds_load_u8 v10, v211 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:4048
	ds_load_u8 v11, v211 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:3280
	ds_load_u8 v11, v211 offset:3152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:3536
	ds_load_u8 v12, v211 offset:3408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[213:220], v[9:10], v[61:62], v[213:220] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:4816
	ds_load_u8 v10, v211 offset:4688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:5072
	ds_load_u8 v11, v211 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:4304
	ds_load_u8 v11, v211 offset:4176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:4560
	ds_load_u8 v12, v211 offset:4432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[213:220], v[9:10], v[59:60], v[213:220] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:5840
	ds_load_u8 v10, v211 offset:5712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:6096
	ds_load_u8 v11, v211 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:5328
	ds_load_u8 v11, v211 offset:5200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:5584
	ds_load_u8 v12, v211 offset:5456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[213:220], v[9:10], v[57:58], v[213:220] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:6864
	ds_load_u8 v10, v211 offset:6736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:7120
	ds_load_u8 v11, v211 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:6352
	ds_load_u8 v11, v211 offset:6224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:6608
	ds_load_u8 v12, v211 offset:6480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[213:220], v[9:10], v[73:74], v[213:220] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:7888
	ds_load_u8 v10, v211 offset:7760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:8144
	ds_load_u8 v11, v211 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v211 offset:7376
	ds_load_u8 v11, v211 offset:7248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v211 offset:7632
	ds_load_u8 v12, v211 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[213:220], v[9:10], v[18:19], v[213:220] neg_lo:[1,1,0]
	ds_load_u8 v9, v211 offset:736
	ds_load_u8 v10, v211 offset:608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:992
	ds_load_u8 v11, v211 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v10, 16, v9
	ds_load_u8 v9, v211 offset:224
	ds_load_u8 v10, v211 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v211 offset:480
	ds_load_u8 v11, v211 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v24, v211 offset:2016
	ds_load_u8 v63, v211 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v24, 16, v17
	ds_load_u8 v17, v211 offset:1248
	ds_load_u8 v24, v211 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:1504
	ds_load_u8 v63, v211 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v24, 16, v17
	ds_load_u8 v17, v211 offset:2784
	ds_load_u8 v24, v211 offset:2656
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[69:70], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:3040
	ds_load_u8 v63, v211 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v24, 16, v17
	ds_load_u8 v17, v211 offset:2272
	ds_load_u8 v24, v211 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:2528
	ds_load_u8 v63, v211 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v24, 16, v17
	ds_load_u8 v17, v211 offset:3808
	ds_load_u8 v24, v211 offset:3680
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[67:68], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:4064
	ds_load_u8 v63, v211 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v24, 16, v17
	ds_load_u8 v17, v211 offset:3296
	ds_load_u8 v24, v211 offset:3168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:3552
	ds_load_u8 v63, v211 offset:3424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v24, 16, v17
	ds_load_u8 v17, v211 offset:4832
	ds_load_u8 v24, v211 offset:4704
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[61:62], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:5088
	ds_load_u8 v63, v211 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v24, 16, v17
	ds_load_u8 v17, v211 offset:4320
	ds_load_u8 v24, v211 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:4576
	ds_load_u8 v63, v211 offset:4448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v24, 16, v17
	ds_load_u8 v17, v211 offset:5856
	ds_load_u8 v24, v211 offset:5728
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[59:60], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:6112
	ds_load_u8 v63, v211 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v24, 16, v17
	ds_load_u8 v17, v211 offset:5344
	ds_load_u8 v24, v211 offset:5216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:5600
	ds_load_u8 v63, v211 offset:5472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v24, 16, v17
	ds_load_u8 v17, v211 offset:6880
	ds_load_u8 v24, v211 offset:6752
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[57:58], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:7136
	ds_load_u8 v63, v211 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v24, 16, v17
	ds_load_u8 v17, v211 offset:6368
	ds_load_u8 v24, v211 offset:6240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:6624
	ds_load_u8 v63, v211 offset:6496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v24, 16, v17
	ds_load_u8 v17, v211 offset:7904
	ds_load_u8 v24, v211 offset:7776
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[73:74], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:8160
	ds_load_u8 v63, v211 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v24, 16, v17
	ds_load_u8 v17, v211 offset:7392
	ds_load_u8 v24, v211 offset:7264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:7648
	ds_load_u8 v63, v211 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v24, 16, v17
	ds_load_u8 v17, v211 offset:240
	ds_load_u8 v24, v211 offset:112
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[18:19], v[9:16] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v65, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v9, v15
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v24, v17, 0xc0c0004
	ds_load_u8 v17, v211 offset:496
	ds_load_u8 v63, v211 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v63, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v17, 16, v24
	ds_load_u8 v17, v211 offset:752
	ds_load_u8 v24, v211 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v75
	ds_load_u8 v64, v211 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v64, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v24, 16, v17
	ds_load_u8 v17, v211 offset:1264
	ds_load_u8 v24, v211 offset:1136
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[79:80], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:1520
	ds_load_u8 v63, v211 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v24, 16, v17
	ds_load_u8 v17, v211 offset:1776
	ds_load_u8 v24, v211 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v175
	ds_load_u8 v64, v211 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v64, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v24, 16, v17
	ds_load_u8 v17, v211 offset:2288
	ds_load_u8 v24, v211 offset:2160
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[69:70], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:2544
	ds_load_u8 v63, v211 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v24, 16, v17
	ds_load_u8 v17, v211 offset:2800
	ds_load_u8 v24, v211 offset:2672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v174
	ds_load_u8 v64, v211 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v64, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v24, 16, v17
	ds_load_u8 v17, v211 offset:3312
	ds_load_u8 v24, v211 offset:3184
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[67:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:3568
	ds_load_u8 v63, v211 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v63, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v24, 16, v17
	ds_load_u8 v17, v211 offset:3824
	ds_load_u8 v24, v211 offset:3696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v177
	ds_load_u8 v64, v211 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v64, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v24, 16, v17
	ds_load_u8 v17, v211 offset:4336
	ds_load_u8 v24, v211 offset:4208
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[61:62], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v64, v10
	v_cvt_f32_i32_e32 v63, v11
	v_cvt_f32_i32_e32 v11, v14
	v_cvt_f32_i32_e32 v10, v16
	v_mov_b16_e64 v16.l, v176.l
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:4592
	ds_load_u8 v61, v211 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v61, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v24, 16, v17
	ds_load_u8 v17, v211 offset:4848
	ds_load_u8 v24, v211 offset:4720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v78
	ds_load_u8 v62, v211 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v62, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v24, 16, v17
	ds_load_u8 v17, v211 offset:5360
	ds_load_u8 v24, v211 offset:5232
	v_wmma_i32_16x16x16_iu4 v[1:8], v[61:62], v[59:60], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v61, v213
	v_cvt_f32_i32_e32 v62, v12
	v_cvt_f32_i32_e32 v12, v13
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:5616
	ds_load_u8 v59, v211 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v59, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v24, 16, v17
	ds_load_u8 v17, v211 offset:5872
	ds_load_u8 v24, v211 offset:5744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v77
	ds_load_u8 v60, v211 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v60, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v24, 16, v17
	ds_load_u8 v17, v211 offset:6384
	ds_load_u8 v24, v211 offset:6256
	v_wmma_i32_16x16x16_iu4 v[1:8], v[59:60], v[57:58], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v60, v214
	v_cvt_f32_i32_e32 v59, v215
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:6640
	ds_load_u8 v57, v211 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v57, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v24, 16, v17
	ds_load_u8 v17, v211 offset:6896
	ds_load_u8 v24, v211 offset:6768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v76
	ds_load_u8 v58, v211 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v58, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v24, 16, v17
	ds_load_u8 v17, v211 offset:7408
	ds_load_u8 v24, v211 offset:7280
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[73:74], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v211 offset:7664
	ds_load_u8 v57, v211 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v57, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v24, 16, v17
	ds_load_u8 v17, v211 offset:7920
	ds_load_u8 v24, v211 offset:7792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v24, v17, 0xc0c0004
	ds_load_u8 v24, v72
	ds_load_u8 v58, v211 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v58, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v24, 16, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v24, v53
	v_cvt_f32_i32_e32 v17, v56
	v_cvt_f32_i32_e32 v53, v41
	v_cvt_f32_i32_e32 v41, v47
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[18:19], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v57, v49
	v_cvt_f32_i32_e32 v58, v50
	v_cvt_f32_i32_e32 v49, v51
	v_cvt_f32_i32_e32 v50, v52
	v_cvt_f32_i32_e32 v19, v54
	v_cvt_f32_i32_e32 v18, v55
	v_cvt_f32_i32_e32 v54, v42
	v_cvt_f32_i32_e32 v51, v43
	v_cvt_f32_i32_e32 v52, v44
	v_cvt_f32_i32_e32 v43, v45
	v_cvt_f32_i32_e32 v44, v46
	v_cvt_f32_i32_e32 v42, v48
	v_cvt_f32_i32_e32 v47, v221
	v_cvt_f32_i32_e32 v48, v222
	v_cvt_f32_i32_e32 v45, v223
	v_cvt_f32_i32_e32 v46, v224
	v_cvt_f32_i32_e32 v224, v226
	v_cvt_f32_i32_e32 v222, v227
	v_cvt_f32_i32_e32 v223, v228
	v_cvt_f32_i32_e32 v55, v33
	v_cvt_f32_i32_e32 v56, v34
	v_cvt_f32_i32_e32 v34, v36
	v_cvt_f32_i32_e32 v33, v37
	v_cvt_f32_i32_e32 v228, v38
	v_cvt_f32_i32_e32 v227, v39
	v_cvt_f32_i32_e32 v226, v40
	v_cvt_f32_i32_e32 v39, v25
	v_cvt_f32_i32_e32 v38, v26
	v_cvt_f32_i32_e32 v37, v27
	v_cvt_f32_i32_e32 v36, v28
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v27, v30
	v_cvt_f32_i32_e32 v26, v31
	v_cvt_f32_i32_e32 v25, v32
	v_cvt_f32_i32_e32 v40, v216
	v_cvt_f32_i32_e32 v32, v217
	v_cvt_f32_i32_e32 v31, v218
	v_cvt_f32_i32_e32 v30, v219
	v_cvt_f32_i32_e32 v29, v220
	v_cvt_f32_i32_e32 v13, v1
	v_cvt_f32_i32_e32 v14, v2
	v_cvt_f32_i32_e32 v1, v3
	v_cvt_f32_i32_e32 v2, v4
	v_cvt_f32_i32_e32 v220, v5
	v_cvt_f32_i32_e32 v221, v6
	v_cvt_f32_i32_e32 v219, v7
	v_cvt_f32_i32_e32 v218, v8
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v176, v78 :: v_dual_mov_b32 v215, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v77, off offset:360
	scratch_store_b32 off, v76, off offset:356
	scratch_store_b32 off, v72, off offset:352
	scratch_store_b32 off, v14, off offset:232
	scratch_store_b32 off, v13, off offset:228
	scratch_store_b32 off, v2, off offset:224
	scratch_store_b32 off, v1, off offset:220
	scratch_store_b32 off, v65, off offset:216
	scratch_store_b32 off, v64, off offset:212
	scratch_store_b32 off, v63, off offset:208
	scratch_store_b32 off, v62, off offset:204
	scratch_store_b32 off, v12, off offset:200
	scratch_store_b32 off, v11, off offset:196
	scratch_store_b32 off, v10, off offset:192
	scratch_store_b32 off, v9, off offset:188
	scratch_store_b32 off, v61, off offset:184
	scratch_store_b32 off, v60, off offset:180
	scratch_store_b32 off, v59, off offset:176
	scratch_store_b32 off, v40, off offset:172
	scratch_store_b32 off, v32, off offset:168
	scratch_store_b32 off, v31, off offset:164
	scratch_store_b32 off, v30, off offset:160
	scratch_store_b32 off, v29, off offset:156
	scratch_store_b32 off, v39, off offset:152
	scratch_store_b32 off, v38, off offset:148
	scratch_store_b32 off, v37, off offset:144
	scratch_store_b32 off, v36, off offset:140
	scratch_store_b32 off, v28, off offset:136
	scratch_store_b32 off, v27, off offset:132
	scratch_store_b32 off, v26, off offset:128
	scratch_store_b32 off, v25, off offset:124
	scratch_store_b32 off, v56, off offset:120
	s_clause 0x17                           ; 96-byte Folded Spill
	scratch_store_b32 off, v55, off offset:116
	scratch_store_b32 off, v35, off offset:112
	scratch_store_b32 off, v34, off offset:108
	scratch_store_b32 off, v33, off offset:104
	scratch_store_b32 off, v48, off offset:100
	scratch_store_b32 off, v47, off offset:96
	scratch_store_b32 off, v46, off offset:92
	scratch_store_b32 off, v45, off offset:88
	scratch_store_b32 off, v54, off offset:84
	scratch_store_b32 off, v53, off offset:80
	scratch_store_b32 off, v52, off offset:76
	scratch_store_b32 off, v51, off offset:72
	scratch_store_b32 off, v44, off offset:68
	scratch_store_b32 off, v43, off offset:64
	scratch_store_b32 off, v42, off offset:60
	scratch_store_b32 off, v41, off offset:56
	scratch_store_b32 off, v58, off offset:52
	scratch_store_b32 off, v57, off offset:48
	scratch_store_b32 off, v50, off offset:44
	scratch_store_b32 off, v49, off offset:40
	scratch_store_b32 off, v24, off offset:36
	scratch_store_b32 off, v19, off offset:32
	scratch_store_b32 off, v18, off offset:28
	scratch_store_b32 off, v17, off offset:24
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v3, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:340
	scratch_load_b32 v2, off, off offset:348
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v64, v218 :: v_dual_mov_b32 v65, v219
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v2, 0xc0c0004
	scratch_load_b32 v2, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v2, 16, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:324
	scratch_load_b32 v1, off, off offset:328
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v0, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:332
	scratch_load_b32 v2, off, off offset:336
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v0, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v2, 16, v1
	ds_load_u8 v1, v211 offset:8832
	ds_load_u8 v2, v211 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v211 offset:9088
	ds_load_u8 v3, v211 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v2, 16, v1
	ds_load_u8 v1, v211 offset:8320
	ds_load_u8 v2, v211 offset:8192
	ds_load_u8 v11, v211 offset:8208
	ds_load_u8 v12, v211 offset:8224
	ds_load_u8 v13, v211 offset:8240
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v211 offset:8576
	ds_load_u8 v3, v211 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[79:80], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:308
	scratch_load_b32 v9, off, off offset:312
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:316
	scratch_load_b32 v10, off, off offset:320
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v9, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:292
	scratch_load_b32 v9, off, off offset:296
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:300
	scratch_load_b32 v10, off, off offset:304
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v9, 16, v0
	ds_load_u8 v0, v211 offset:9856
	ds_load_u8 v9, v211 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:10112
	ds_load_u8 v10, v211 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:9344
	ds_load_u8 v9, v211 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9600
	ds_load_u8 v14, v211 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[60:61], v[41:48] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:276
	scratch_load_b32 v9, off, off offset:280
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v0, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:284
	scratch_load_b32 v10, off, off offset:288
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v9, 16, v0
	scratch_load_b32 v9, off, off offset:272 ; 4-byte Folded Reload
	v_perm_b32 v0, v239, v254, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v255, v9, 0xc0c0004
	v_lshl_or_b32 v58, v9, 16, v0
	ds_load_u8 v0, v211 offset:10880
	ds_load_u8 v9, v211 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:11136
	ds_load_u8 v10, v211 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:10368
	ds_load_u8 v9, v211 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:10624
	ds_load_u8 v14, v211 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v9, 16, v0
	v_perm_b32 v0, v252, v253, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[58:59], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v9, v128, v212, 0xc0c0004
	v_mov_b32_e32 v128, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v54, v9, 16, v0
	v_perm_b32 v0, v249, v250, 0xc0c0004
	v_perm_b32 v9, v66, v251, 0xc0c0004
	v_mov_b32_e32 v66, v221
	v_lshl_or_b32 v53, v9, 16, v0
	ds_load_u8 v0, v211 offset:11904
	ds_load_u8 v9, v211 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:12160
	ds_load_u8 v10, v211 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:11392
	ds_load_u8 v9, v211 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:11648
	ds_load_u8 v14, v211 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v9, 16, v0
	v_perm_b32 v0, v241, v242, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[53:54], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v9, v243, v245, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v52, v9, 16, v0
	v_perm_b32 v0, v170, v171, 0xc0c0004
	v_perm_b32 v9, v234, v236, 0xc0c0004
	v_mov_b32_e32 v171, v228
	v_lshl_or_b32 v51, v9, 16, v0
	ds_load_u8 v0, v211 offset:12928
	ds_load_u8 v9, v211 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:13184
	ds_load_u8 v10, v211 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:12416
	ds_load_u8 v9, v211 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:12672
	ds_load_u8 v14, v211 offset:12544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 16, v0
	v_perm_b32 v0, v84, v87, 0xc0c0004
	v_dual_mov_b32 v84, v223 :: v_dual_mov_b32 v87, v224
	v_mov_b32_e32 v170, v227
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[51:52], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v9, v179, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v50, v9, 16, v0
	v_perm_b32 v0, v16, v178, 0xc0c0004
	v_perm_b32 v9, v88, v89, 0xc0c0004
	v_dual_mov_b32 v178, v220 :: v_dual_mov_b32 v89, v226
	v_mov_b32_e32 v88, v225
	v_lshl_or_b32 v49, v9, 16, v0
	ds_load_u8 v0, v211 offset:13952
	ds_load_u8 v9, v211 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:14208
	ds_load_u8 v10, v211 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:13440
	ds_load_u8 v9, v211 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:13696
	ds_load_u8 v14, v211 offset:13568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v9, 16, v0
	v_perm_b32 v0, v244, v246, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[49:50], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v9, v247, v248, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v9, 16, v0
	v_perm_b32 v0, v235, v237, 0xc0c0004
	v_perm_b32 v9, v238, v240, 0xc0c0004
	v_lshl_or_b32 v62, v9, 16, v0
	ds_load_u8 v0, v211 offset:14976
	ds_load_u8 v9, v211 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:15232
	ds_load_u8 v10, v211 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:14464
	ds_load_u8 v9, v211 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:14720
	ds_load_u8 v14, v211 offset:14592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v9, 16, v0
	v_perm_b32 v0, v20, v23, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[62:63], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v9, v22, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v9, 16, v0
	v_perm_b32 v0, v229, v230, 0xc0c0004
	v_perm_b32 v9, v231, v21, 0xc0c0004
	v_lshl_or_b32 v81, v9, 16, v0
	ds_load_u8 v0, v211 offset:16000
	ds_load_u8 v9, v211 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:16256
	ds_load_u8 v10, v211 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:15488
	ds_load_u8 v9, v211 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:15744
	ds_load_u8 v14, v211 offset:15616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v14, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[81:82], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:8848
	ds_load_u8 v9, v211 offset:8720
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v215, v42
	v_cvt_f32_i32_e32 v213, v43
	v_cvt_f32_i32_e32 v214, v44
	v_cvt_f32_i32_e32 v73, v47
	v_cvt_f32_i32_e32 v78, v48
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9104
	ds_load_u8 v10, v211 offset:8976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:8336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v11, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:8592
	ds_load_u8 v11, v211 offset:8464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:9872
	ds_load_u8 v9, v211 offset:9744
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:10128
	ds_load_u8 v10, v211 offset:10000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:9360
	ds_load_u8 v9, v211 offset:9232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9616
	ds_load_u8 v11, v211 offset:9488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[60:61], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:10896
	ds_load_u8 v9, v211 offset:10768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:11152
	ds_load_u8 v10, v211 offset:11024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:10384
	ds_load_u8 v9, v211 offset:10256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:10640
	ds_load_u8 v11, v211 offset:10512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[58:59], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:11920
	ds_load_u8 v9, v211 offset:11792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:12176
	ds_load_u8 v10, v211 offset:12048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:11408
	ds_load_u8 v9, v211 offset:11280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:11664
	ds_load_u8 v11, v211 offset:11536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[53:54], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:12944
	ds_load_u8 v9, v211 offset:12816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:13200
	ds_load_u8 v10, v211 offset:13072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:12432
	ds_load_u8 v9, v211 offset:12304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:12688
	ds_load_u8 v11, v211 offset:12560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[51:52], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:13968
	ds_load_u8 v9, v211 offset:13840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:14224
	ds_load_u8 v10, v211 offset:14096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:13456
	ds_load_u8 v9, v211 offset:13328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:13712
	ds_load_u8 v11, v211 offset:13584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[49:50], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:14992
	ds_load_u8 v9, v211 offset:14864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:15248
	ds_load_u8 v10, v211 offset:15120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:14480
	ds_load_u8 v9, v211 offset:14352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:14736
	ds_load_u8 v11, v211 offset:14608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[62:63], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:16016
	ds_load_u8 v9, v211 offset:15888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:16272
	ds_load_u8 v10, v211 offset:16144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:15504
	ds_load_u8 v9, v211 offset:15376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:15760
	ds_load_u8 v11, v211 offset:15632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[81:82], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:8864
	ds_load_u8 v9, v211 offset:8736
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v74, v17
	v_cvt_f32_i32_e32 v76, v18
	v_cvt_f32_i32_e32 v72, v19
	v_cvt_f32_i32_e32 v77, v20
	v_cvt_f32_i32_e32 v70, v21
	v_cvt_f32_i32_e32 v69, v22
	v_cvt_f32_i32_e32 v68, v23
	v_cvt_f32_i32_e32 v67, v24
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9120
	ds_load_u8 v10, v211 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:8352
	ds_load_u8 v9, v211 offset:8608
	ds_load_u8 v11, v211 offset:8480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v12, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[216:223], v[9:10], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:9888
	ds_load_u8 v9, v211 offset:9760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:10144
	ds_load_u8 v10, v211 offset:10016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:9376
	ds_load_u8 v9, v211 offset:9248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9632
	ds_load_u8 v11, v211 offset:9504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[216:223], v[9:10], v[60:61], v[216:223] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:10912
	ds_load_u8 v9, v211 offset:10784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:11168
	ds_load_u8 v10, v211 offset:11040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:10400
	ds_load_u8 v9, v211 offset:10272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:10656
	ds_load_u8 v11, v211 offset:10528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[216:223], v[9:10], v[58:59], v[216:223] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:11936
	ds_load_u8 v9, v211 offset:11808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:12192
	ds_load_u8 v10, v211 offset:12064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:11424
	ds_load_u8 v9, v211 offset:11296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:11680
	ds_load_u8 v11, v211 offset:11552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[216:223], v[9:10], v[53:54], v[216:223] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:12960
	ds_load_u8 v9, v211 offset:12832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:13216
	ds_load_u8 v10, v211 offset:13088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:12448
	ds_load_u8 v9, v211 offset:12320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:12704
	ds_load_u8 v11, v211 offset:12576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[216:223], v[9:10], v[51:52], v[216:223] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:13984
	ds_load_u8 v9, v211 offset:13856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:14240
	ds_load_u8 v10, v211 offset:14112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:13472
	ds_load_u8 v9, v211 offset:13344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:13728
	ds_load_u8 v11, v211 offset:13600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[216:223], v[9:10], v[49:50], v[216:223] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:15008
	ds_load_u8 v9, v211 offset:14880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:15264
	ds_load_u8 v10, v211 offset:15136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:14496
	ds_load_u8 v9, v211 offset:14368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:14752
	ds_load_u8 v11, v211 offset:14624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[216:223], v[9:10], v[62:63], v[216:223] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:16032
	ds_load_u8 v9, v211 offset:15904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:16288
	ds_load_u8 v10, v211 offset:16160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:15520
	ds_load_u8 v9, v211 offset:15392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:15776
	ds_load_u8 v11, v211 offset:15648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[216:223], v[9:10], v[81:82], v[216:223] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:8880
	ds_load_u8 v9, v211 offset:8752
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v75, v216
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9136
	ds_load_u8 v10, v211 offset:9008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:8368
	ds_load_u8 v9, v211 offset:8624
	ds_load_u8 v11, v211 offset:8496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v13, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:9904
	ds_load_u8 v9, v211 offset:9776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:10160
	ds_load_u8 v10, v211 offset:10032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:9392
	ds_load_u8 v9, v211 offset:9264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9648
	ds_load_u8 v11, v211 offset:9520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[60:61], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:10928
	ds_load_u8 v9, v211 offset:10800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:11184
	ds_load_u8 v10, v211 offset:11056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:10416
	ds_load_u8 v9, v211 offset:10288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:10672
	ds_load_u8 v11, v211 offset:10544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[58:59], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:11952
	ds_load_u8 v9, v211 offset:11824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:12208
	ds_load_u8 v10, v211 offset:12080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:11440
	ds_load_u8 v9, v211 offset:11312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:11696
	ds_load_u8 v11, v211 offset:11568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[53:54], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:12976
	ds_load_u8 v9, v211 offset:12848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:13232
	ds_load_u8 v10, v211 offset:13104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:12464
	ds_load_u8 v9, v211 offset:12336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:12720
	ds_load_u8 v11, v211 offset:12592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[51:52], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:14000
	ds_load_u8 v9, v211 offset:13872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:14256
	ds_load_u8 v10, v211 offset:14128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:13488
	ds_load_u8 v9, v211 offset:13360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:13744
	ds_load_u8 v11, v211 offset:13616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[49:50], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:15024
	ds_load_u8 v9, v211 offset:14896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:15280
	ds_load_u8 v10, v211 offset:15152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:14512
	ds_load_u8 v9, v211 offset:14384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:14768
	ds_load_u8 v11, v211 offset:14640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[62:63], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:16048
	ds_load_u8 v9, v211 offset:15920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:16304
	ds_load_u8 v10, v211 offset:16176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:15536
	ds_load_u8 v9, v211 offset:15408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:15792
	ds_load_u8 v11, v211 offset:15664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[81:82], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:8896
	ds_load_u8 v9, v211 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9152
	ds_load_u8 v10, v211 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:8384
	ds_load_u8 v9, v211 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:8640
	ds_load_u8 v11, v211 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:9920
	ds_load_u8 v9, v211 offset:9792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:10176
	ds_load_u8 v10, v211 offset:10048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:9408
	ds_load_u8 v9, v211 offset:9280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9664
	ds_load_u8 v11, v211 offset:9536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[60:61], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:10944
	ds_load_u8 v9, v211 offset:10816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:11200
	ds_load_u8 v10, v211 offset:11072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:10432
	ds_load_u8 v9, v211 offset:10304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:10688
	ds_load_u8 v11, v211 offset:10560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[58:59], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:11968
	ds_load_u8 v9, v211 offset:11840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:12224
	ds_load_u8 v10, v211 offset:12096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:11456
	ds_load_u8 v9, v211 offset:11328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:11712
	ds_load_u8 v11, v211 offset:11584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[53:54], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:12992
	ds_load_u8 v9, v211 offset:12864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:13248
	ds_load_u8 v10, v211 offset:13120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:12480
	ds_load_u8 v9, v211 offset:12352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:12736
	ds_load_u8 v11, v211 offset:12608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[51:52], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:14016
	ds_load_u8 v9, v211 offset:13888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:14272
	ds_load_u8 v10, v211 offset:14144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:13504
	ds_load_u8 v9, v211 offset:13376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:13760
	ds_load_u8 v11, v211 offset:13632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[49:50], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:15040
	ds_load_u8 v9, v211 offset:14912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:15296
	ds_load_u8 v10, v211 offset:15168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:14528
	ds_load_u8 v9, v211 offset:14400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:14784
	ds_load_u8 v11, v211 offset:14656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[62:63], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:16064
	ds_load_u8 v9, v211 offset:15936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:16320
	ds_load_u8 v10, v211 offset:16192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:15552
	ds_load_u8 v9, v211 offset:15424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:15808
	ds_load_u8 v11, v211 offset:15680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[81:82], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:8912
	ds_load_u8 v9, v211 offset:8784
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v48, v27
	v_cvt_f32_i32_e32 v47, v30
	v_cvt_f32_i32_e32 v42, v31
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9168
	ds_load_u8 v10, v211 offset:9040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:8400
	ds_load_u8 v9, v211 offset:8272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:8656
	ds_load_u8 v11, v211 offset:8528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[224:231], v[9:10], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:9936
	ds_load_u8 v9, v211 offset:9808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:10192
	ds_load_u8 v10, v211 offset:10064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:9424
	ds_load_u8 v9, v211 offset:9296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9680
	ds_load_u8 v11, v211 offset:9552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[224:231], v[9:10], v[60:61], v[224:231] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:10960
	ds_load_u8 v9, v211 offset:10832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:11216
	ds_load_u8 v10, v211 offset:11088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:10448
	ds_load_u8 v9, v211 offset:10320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:10704
	ds_load_u8 v11, v211 offset:10576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[224:231], v[9:10], v[58:59], v[224:231] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:11984
	ds_load_u8 v9, v211 offset:11856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:12240
	ds_load_u8 v10, v211 offset:12112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:11472
	ds_load_u8 v9, v211 offset:11344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:11728
	ds_load_u8 v11, v211 offset:11600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[224:231], v[9:10], v[53:54], v[224:231] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:13008
	ds_load_u8 v9, v211 offset:12880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:13264
	ds_load_u8 v10, v211 offset:13136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:12496
	ds_load_u8 v9, v211 offset:12368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:12752
	ds_load_u8 v11, v211 offset:12624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[224:231], v[9:10], v[51:52], v[224:231] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:14032
	ds_load_u8 v9, v211 offset:13904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:14288
	ds_load_u8 v10, v211 offset:14160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:13520
	ds_load_u8 v9, v211 offset:13392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:13776
	ds_load_u8 v11, v211 offset:13648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[224:231], v[9:10], v[49:50], v[224:231] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:15056
	ds_load_u8 v9, v211 offset:14928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:15312
	ds_load_u8 v10, v211 offset:15184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:14544
	ds_load_u8 v9, v211 offset:14416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:14800
	ds_load_u8 v11, v211 offset:14672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[224:231], v[9:10], v[62:63], v[224:231] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:16080
	ds_load_u8 v9, v211 offset:15952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:16336
	ds_load_u8 v10, v211 offset:16208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	ds_load_u8 v0, v211 offset:15568
	ds_load_u8 v9, v211 offset:15440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:15824
	ds_load_u8 v11, v211 offset:15696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[224:231], v[9:10], v[81:82], v[224:231] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:8928
	ds_load_u8 v9, v211 offset:8800
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v44, v225
	v_cvt_f32_i32_e32 v43, v227
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:9184
	ds_load_u8 v10, v211 offset:9056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v9, 16, v0
	ds_load_u8 v0, v211 offset:8416
	ds_load_u8 v9, v211 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	ds_load_u8 v9, v211 offset:8672
	ds_load_u8 v10, v211 offset:8544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v9, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:9952
	ds_load_u8 v55, v211 offset:9824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:10208
	ds_load_u8 v56, v211 offset:10080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v55, 16, v0
	ds_load_u8 v0, v211 offset:9440
	ds_load_u8 v55, v211 offset:9312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:9696
	ds_load_u8 v57, v211 offset:9568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v57, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[60:61], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:10976
	ds_load_u8 v55, v211 offset:10848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:11232
	ds_load_u8 v56, v211 offset:11104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v55, 16, v0
	ds_load_u8 v0, v211 offset:10464
	ds_load_u8 v55, v211 offset:10336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:10720
	ds_load_u8 v57, v211 offset:10592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v57, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[58:59], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:12000
	ds_load_u8 v55, v211 offset:11872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:12256
	ds_load_u8 v56, v211 offset:12128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v55, 16, v0
	ds_load_u8 v0, v211 offset:11488
	ds_load_u8 v55, v211 offset:11360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:11744
	ds_load_u8 v57, v211 offset:11616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v57, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[53:54], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:13024
	ds_load_u8 v55, v211 offset:12896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:13280
	ds_load_u8 v56, v211 offset:13152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v55, 16, v0
	ds_load_u8 v0, v211 offset:12512
	ds_load_u8 v55, v211 offset:12384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:12768
	ds_load_u8 v57, v211 offset:12640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v57, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[51:52], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:14048
	ds_load_u8 v55, v211 offset:13920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:14304
	ds_load_u8 v56, v211 offset:14176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v55, 16, v0
	ds_load_u8 v0, v211 offset:13536
	ds_load_u8 v55, v211 offset:13408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:13792
	ds_load_u8 v57, v211 offset:13664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v57, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[49:50], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:15072
	ds_load_u8 v55, v211 offset:14944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:15328
	ds_load_u8 v56, v211 offset:15200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v55, 16, v0
	ds_load_u8 v0, v211 offset:14560
	ds_load_u8 v55, v211 offset:14432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:14816
	ds_load_u8 v57, v211 offset:14688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v57, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[62:63], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:16096
	ds_load_u8 v55, v211 offset:15968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:16352
	ds_load_u8 v56, v211 offset:16224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v55, 16, v0
	ds_load_u8 v0, v211 offset:15584
	ds_load_u8 v55, v211 offset:15456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:15840
	ds_load_u8 v57, v211 offset:15712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v57, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v0
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[81:82], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:8432
	ds_load_u8 v55, v211 offset:8304
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v26, v9
	v_cvt_f32_i32_e32 v18, v11
	v_cvt_f32_i32_e32 v24, v12
	v_cvt_f32_i32_e32 v216, v14
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:8688
	ds_load_u8 v56, v211 offset:8560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v0
	ds_load_u8 v0, v211 offset:8944
	ds_load_u8 v56, v211 offset:8816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v56, v0, 0xc0c0004
	scratch_load_b32 v56, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v56, v56 offset:8192
	ds_load_u8 v57, v211 offset:9072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v56, v56, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:9456
	ds_load_u8 v55, v211 offset:9328
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v79, v45
	v_cvt_f32_i32_e32 v80, v46
	v_cvt_f32_i32_e32 v46, v29
	v_cvt_f32_i32_e32 v45, v32
	v_cvt_f32_i32_e32 v29, v10
	v_cvt_f32_i32_e32 v10, v15
	v_cvt_f32_i32_e32 v15, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:9712
	ds_load_u8 v56, v211 offset:9584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v0
	ds_load_u8 v0, v211 offset:9968
	ds_load_u8 v56, v211 offset:9840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v56, v0, 0xc0c0004
	ds_load_u8 v56, v175 offset:8192
	ds_load_u8 v57, v211 offset:10096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v56, v56, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[60:61], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:10480
	ds_load_u8 v55, v211 offset:10352
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v60, v217
	v_cvt_f32_i32_e32 v61, v38
	v_cvt_f32_i32_e32 v217, v224
	v_mov_b32_e32 v224, v87
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:10736
	ds_load_u8 v56, v211 offset:10608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v0
	ds_load_u8 v0, v211 offset:10992
	ds_load_u8 v56, v211 offset:10864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v56, v0, 0xc0c0004
	ds_load_u8 v56, v174 offset:8192
	ds_load_u8 v57, v211 offset:11120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v56, v56, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[58:59], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:11504
	ds_load_u8 v55, v211 offset:11376
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v59, v37
	v_cvt_f32_i32_e32 v58, v40
	v_cvt_f32_i32_e32 v37, v226
	v_mov_b32_e32 v226, v89
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v55, v0, 0xc0c0004
	ds_load_u8 v55, v211 offset:11760
	ds_load_u8 v56, v211 offset:11632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v0
	ds_load_u8 v0, v211 offset:12016
	ds_load_u8 v56, v211 offset:11888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v56, v0, 0xc0c0004
	ds_load_u8 v56, v177 offset:8192
	ds_load_u8 v57, v211 offset:12144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v57, v25
	v_cvt_f32_i32_e32 v25, v230
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v56, v56, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[53:54], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:12528
	ds_load_u8 v53, v211 offset:12400
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v56, v28
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v53, v0, 0xc0c0004
	ds_load_u8 v53, v211 offset:12784
	ds_load_u8 v54, v211 offset:12656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v53, 16, v0
	ds_load_u8 v0, v211 offset:13040
	ds_load_u8 v54, v211 offset:12912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v54, v0, 0xc0c0004
	ds_load_u8 v54, v176 offset:8192
	ds_load_u8 v55, v211 offset:13168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v55, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v54, v54, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[53:54], v[51:52], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:13552
	ds_load_u8 v51, v211 offset:13424
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v54, v218
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v51, v0, 0xc0c0004
	ds_load_u8 v51, v211 offset:13808
	ds_load_u8 v52, v211 offset:13680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v51, 16, v0
	ds_load_u8 v0, v211 offset:14064
	ds_load_u8 v52, v211 offset:13936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v52, v0, 0xc0c0004
	scratch_load_b32 v52, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v52, v52 offset:8192
	ds_load_u8 v53, v211 offset:14192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v53, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v52, v52, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[51:52], v[49:50], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:14576
	ds_load_u8 v49, v211 offset:14448
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v52, v220
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v211 offset:14832
	ds_load_u8 v50, v211 offset:14704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	ds_load_u8 v0, v211 offset:15088
	ds_load_u8 v50, v211 offset:14960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	scratch_load_b32 v50, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v50, v50 offset:8192
	ds_load_u8 v51, v211 offset:15216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[62:63], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v0, v211 offset:15600
	ds_load_u8 v49, v211 offset:15472
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v62, v35
	v_cvt_f32_i32_e32 v63, v36
	v_cvt_f32_i32_e32 v35, v229
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v49, v0, 0xc0c0004
	ds_load_u8 v49, v211 offset:15856
	ds_load_u8 v50, v211 offset:15728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v49, 16, v0
	ds_load_u8 v0, v211 offset:16112
	ds_load_u8 v50, v211 offset:15984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	scratch_load_b32 v50, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v50, v50 offset:8192
	ds_load_u8 v51, v211 offset:16240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v51, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v50, v50, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[81:82], v[1:8] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v81, v41
	v_cvt_f32_i32_e32 v41, v219
	v_mov_b32_e32 v219, v65
	v_cvt_f32_i32_e32 v49, v221
	v_mov_b32_e32 v221, v66
	v_dual_mov_b32 v220, v178 :: v_dual_mov_b32 v225, v88
	v_cvt_f32_i32_e32 v50, v222
	v_mov_b32_e32 v222, v128
	v_mov_b32_e32 v223, v84
	v_dual_mov_b32 v218, v64 :: v_dual_mov_b32 v227, v170
	v_cvt_f32_i32_e32 v64, v33
	v_cvt_f32_i32_e32 v65, v34
	v_cvt_f32_i32_e32 v34, v228
	v_mov_b32_e32 v228, v171
	v_cvt_f32_i32_e32 v33, v231
	v_cvt_f32_i32_e32 v12, v1
	v_cvt_f32_i32_e32 v13, v2
	v_cvt_f32_i32_e32 v9, v3
	v_cvt_f32_i32_e32 v11, v4
	v_cvt_f32_i32_e32 v4, v5
	v_cvt_f32_i32_e32 v5, v6
	v_cvt_f32_i32_e32 v14, v7
	v_cvt_f32_i32_e32 v3, v8
.LBB0_10:
	.loc	1 0 29 is_stmt 0                ; generate_amdgcn.py:0:29
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v82, off, off offset:672
	scratch_load_b32 v179, off, off offset:244
	scratch_load_b32 v177, off, off offset:236
	scratch_load_b32 v84, off, off offset:676
	scratch_load_b32 v180, off, off offset:248
	scratch_load_b32 v176, off, off offset:20
	scratch_load_b32 v178, off, off offset:240
	scratch_load_b32 v175, off, off offset:12
	scratch_load_b32 v174, off, off offset:4
	.loc	1 178 26 is_stmt 1              ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s34, s44
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s5, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s4, s12
	.loc	1 190 18 is_stmt 1              ; generate_amdgcn.py:190:18
	s_mul_i32 s34, s34, s27
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s6
	.loc	1 178 26 is_stmt 1              ; generate_amdgcn.py:178:26
	s_waitcnt vmcnt(8)
	v_mul_lo_u32 v0, s44, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v0, s0, v0, 1
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s0, s1, s35
	.loc	1 179 26 is_stmt 0              ; generate_amdgcn.py:179:26
	s_add_i32 s1, s33, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 182 35 is_stmt 1              ; generate_amdgcn.py:182:35
	s_add_i32 s3, s1, s27
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v2, s3, v84, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v6, v1, s[4:7], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v6, v81, v1
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v6, v0, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v176, v0, s2
	scratch_load_b32 v176, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v6, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v0
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v6, v6, v7
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v60, v60, v1
	v_mul_f32_e32 v54, v54, v1
	v_mul_f32_e32 v52, v52, v1
	v_mul_f32_e32 v50, v50, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v7, null, v6, v6, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v64, v64, v1
	v_mul_f32_e32 v62, v62, v1
	v_mul_f32_e32 v58, v58, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v8, v7
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v56, v56, v1
	v_mul_f32_e32 v48, v48, v1
	v_mul_f32_e32 v46, v46, v1
	v_mul_f32_e32 v42, v42, v1
	v_mul_f32_e32 v44, v44, v1
	v_mul_f32_e32 v34, v34, v1
	v_mul_f32_e32 v24, v24, v1
	v_mul_f32_e32 v18, v18, v1
	v_mul_f32_e32 v10, v10, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v16, -v7, v8, 1.0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v12, v1
	v_mul_f32_e32 v4, v4, v1
	v_mul_f32_e32 v41, v41, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v49, v1 :: v_dual_fmac_f32 v8, v16, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v16, vcc_lo, v0, v6, v0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v51, v51, v1
	v_mul_f32_e32 v63, v63, v1
	v_mul_f32_e32 v61, v61, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v19, v16, v8
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v59, v59, v1
	v_mul_f32_e32 v55, v55, v1
	v_mul_f32_e32 v17, v17, v1
	v_mul_f32_e32 v57, v57, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v20, -v7, v19, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v47, v47, v1
	v_mul_f32_e32 v45, v45, v1
	v_mul_f32_e32 v43, v43, v1
	v_mul_f32_e32 v37, v37, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v19, v20, v8
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v35, v35, v1
	v_mul_f32_e32 v33, v33, v1
	v_mul_f32_e32 v25, v25, v1
	v_mul_f32_e32 v29, v29, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v7, -v7, v19, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v16, v215, v1
	v_mul_f32_e32 v15, v15, v1
	v_mul_f32_e32 v53, v53, v1
	v_mul_f32_e32 v13, v13, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v7, v7, v8, v19
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v11, v11, v1 :: v_dual_add_nc_u32 v8, 4, v2
	v_mul_f32_e32 v9, v9, v1
	v_mul_f32_e32 v5, v5, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v6, v7, v6, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v7, v213, v1 :: v_dual_add_nc_u32 v0, 8, v2
	v_mul_f32_e32 v3, v3, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	buffer_load_u16 v0, v0, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v8, v16, v8, v175
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v175, v8, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v0, v7, v0, v210
	scratch_load_b32 v175, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v0, v210, v0, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v7, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v16, v16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v19
	v_fma_f32 v21, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v8, v16, v8
	v_mul_f32_e32 v22, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v19, v22, v21
	v_fmac_f32_e32 v22, v23, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v22, v21
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v214, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v19, v19, v20, v22
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v20, 12, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v21, v20, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v174, v20, s2
	scratch_load_b32 v174, off, off         ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v22
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v20
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v27, v23
	v_div_scale_f32 v27, vcc_lo, v20, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v27, v23
	v_fma_f32 v30, -v22, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v30, v23
	v_fma_f32 v22, -v22, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v23, v28
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v7, v7
	v_ldexp_f32 v7, v7, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v23, 1.0, v7
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v7, null, v23, v23, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v7
	v_fma_f32 v28, -v7, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v0, v23, v0
	v_mul_f32_e32 v30, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v7, v30, v28
	v_fmac_f32_e32 v30, v31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v7, v30, v28
	v_div_fmas_f32 v27, v7, v27, v30
	v_div_fixup_f32 v7, v19, v16, v8
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v8, 20, v2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v16, v80, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v0, v27, v23, v0
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 28, v2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v78, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	s_clause 0x1
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v27, v23, v207
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v207, v23, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v27, 0xbfb8aa3b, v23 :: v_dual_lshlrev_b32 v8, 16, v8
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v8, v16, v8, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v209, v8, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v8, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v8, v8, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v8, null, v19, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v8
	v_fma_f32 v30, -v8, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v30, v28
	v_div_scale_f32 v30, vcc_lo, v16, v19, v16
	v_mul_f32_e32 v31, v30, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v8, v31, v30
	v_fmac_f32_e32 v31, v32, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v8, v31, v30
	v_div_fmas_f32 v28, v8, v28, v31
	v_div_fixup_f32 v8, v22, v21, v20
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v21, v79, v1 :: v_dual_add_nc_u32 v20, 16, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v16, v28, v19, v16
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 24, v2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v28, v73, v1
	v_mul_f32_e32 v26, v26, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	s_clause 0x1
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v21, v20, v208
	v_fma_f32 v19, v28, v19, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v208, v20, s2
	v_cndmask_b32_e64 v28, v206, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v20
	v_mul_f32_e32 v19, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v21, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v30, v22
	v_fma_f32 v31, -v22, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, vcc_lo, v20, v21, v20
	v_mul_f32_e32 v32, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v22, v32, v31
	v_fmac_f32_e32 v32, v36, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v32, v31
	v_div_fmas_f32 v22, v22, v30, v32
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v21, v22, v21, v20
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v20, v76, v1 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v27, v27, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v30
	v_fma_f32 v32, -v30, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v23, v27, v23
	v_mul_f32_e32 v36, v32, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v30, v36, v32
	v_fmac_f32_e32 v36, v38, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v30, v36, v32
	v_div_fmas_f32 v30, v30, v31, v36
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v28
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v31
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v31, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v31, v31, v28
	v_rcp_f32_e32 v32, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v19, v32, 1.0
	v_fmac_f32_e32 v32, v36, v32
	v_div_scale_f32 v36, vcc_lo, v28, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v36, v32
	v_fma_f32 v39, -v19, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v39, v32
	v_fma_f32 v19, -v19, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v32, v19, v32, v38
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v19, 36, v2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v20, v19, v205
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v205, v19, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v20
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v22
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v36, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, null, v36, v36, v20
	v_rcp_f32_e32 v22, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v19, v22, 1.0
	v_fmac_f32_e32 v22, v38, v22
	v_div_scale_f32 v38, vcc_lo, v20, v36, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v39, v38, v22
	v_fma_f32 v40, -v19, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v22
	v_fma_f32 v19, -v19, v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v19, v22, v39
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v22, 32, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v19, v30, v27, v23
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v23, v74, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v22, v23, v22, v204
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v204, v22, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v27
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v30, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, null, v30, v30, v27
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v22, v23, 1.0
	v_fmac_f32_e32 v23, v39, v23
	v_div_scale_f32 v39, vcc_lo, v27, v30, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v23
	v_fma_f32 v66, -v22, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v66, v23
	v_fma_f32 v22, -v22, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v39, v22, v23, v40
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v23, 44, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v22, v32, v31, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v28, v77, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v27, v39, v30, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v39, v69, v1 :: v_dual_add_nc_u32 v30, 52, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v28, v23, v203
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v203, v23, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v30, v39, v30, v201
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v201, v30, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v30, 0xbfb8aa3b, v39
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v31, 1.0, v23
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v23, null, v31, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v32, v23
	v_fma_f32 v40, -v23, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v40, v32
	v_div_scale_f32 v40, vcc_lo, v28, v31, v28
	v_mul_f32_e32 v66, v40, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v23, v66, v40
	v_fmac_f32_e32 v66, v73, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v23, v66, v40
	v_div_fmas_f32 v32, v23, v32, v66
	v_div_fixup_f32 v23, v38, v36, v20
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v20, 40, v2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v36, v72, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v28, v32, v31, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v31, v70, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v36, v20, v202
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v202, v20, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v36, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v20
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v36, v36, v38
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v38, null, v36, v36, v20
	v_rcp_f32_e32 v40, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v38, v40, 1.0
	v_fmac_f32_e32 v40, v66, v40
	v_div_scale_f32 v66, vcc_lo, v20, v36, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v66, v40
	v_fma_f32 v73, -v38, v72, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v40
	v_fma_f32 v38, -v38, v72, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v40, v72
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v30, v30
	v_ldexp_f32 v30, v30, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v40, 1.0, v30
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v40, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v30
	v_fma_f32 v69, -v30, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, vcc_lo, v39, v40, v39
	v_mul_f32_e32 v72, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v30, v72, v69
	v_fmac_f32_e32 v72, v73, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v30, v72, v69
	v_div_fmas_f32 v66, v30, v66, v72
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v30, 48, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v30, v31, v30, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v71, v30, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v30, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v30, v30
	v_ldexp_f32 v30, v30, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v69, 1.0, v30
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v69, v69, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v31, v30
	v_fma_f32 v71, -v30, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v71, v31
	v_div_scale_f32 v71, vcc_lo, v32, v69, v32
	v_mul_f32_e32 v72, v71, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v30, v72, v71
	v_fmac_f32_e32 v72, v73, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v30, v72, v71
	v_div_fmas_f32 v71, v30, v31, v72
	v_div_fixup_f32 v30, v38, v36, v20
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v31, v67, v1 :: v_dual_add_nc_u32 v20, 60, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v32, v71, v69, v32
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v31, v20, v200
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v200, v20, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v20
	v_exp_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v31, v31, v36
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v36, 1.0, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, null, v36, v36, v20
	v_rcp_f32_e32 v38, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v31, v38, 1.0
	v_fmac_f32_e32 v38, v70, v38
	v_div_scale_f32 v70, vcc_lo, v20, v36, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v70, v38
	v_fma_f32 v73, -v31, v72, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v38
	v_fma_f32 v31, -v31, v72, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v31, v38, v72
	v_div_fixup_f32 v31, v66, v40, v39
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v40, v68, v1 :: v_dual_add_nc_u32 v39, 56, v2
	v_mul_f32_e32 v68, v75, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v39, v40, v39, v233
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v233, v39, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v40, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v39
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v40, v40, v66
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v40, 1.0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v66, null, v40, v40, v39
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v69, v67
	v_div_scale_f32 v69, vcc_lo, v39, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v67
	v_fma_f32 v71, -v66, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v67
	v_fma_f32 v66, -v66, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v67, v70
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v67, 0x44, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v40, v66, v40, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	buffer_load_u16 v67, v67, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v60, v60, v67, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v60, v232, v60, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v67, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v69, null, v67, v67, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v69
	v_fma_f32 v71, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v60, v67, v60
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v69, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v72, v71
	v_div_fmas_f32 v69, v69, v70, v72
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v70, 64, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v68, v68, v70, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v199, v68, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v70, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v71, null, v70, v70, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v73, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v68, v70, v68
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v71, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v74, v73
	v_div_fmas_f32 v71, v71, v72, v74
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v72, 0x4c, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v39, v71, v70, v68
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v72, 16, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v41, v41, v72, v198
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v72, v198, v41, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v41, 0xbfb8aa3b, v72
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v72
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v41, v41, v73
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v73, 1.0, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v41, null, v73, v73, v72
	v_rcp_f32_e32 v74, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v41, v74, 1.0
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v72, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v74
	v_fma_f32 v77, -v41, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v74
	v_fma_f32 v41, -v41, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v74, v41, v74, v76
	v_div_fixup_f32 v41, v38, v36, v20
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v20, 0x48, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v38, v69, v67, v60
	v_div_fixup_f32 v36, v74, v73, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v54, v20, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v197, v20, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v54, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v54, v54
	v_ldexp_f32 v54, v54, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v60, null, v54, v54, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v60
	v_fma_f32 v67, -v60, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v20, v54, v20
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v60, v68, v67
	v_fmac_f32_e32 v68, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v60, v68, v67
	v_div_fmas_f32 v60, v60, v66, v68
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v66, 0x54, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v54, v60, v54, v20
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	v_add_nc_u32_e32 v20, 0x64, v2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v60, v65, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v66, 16, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v49, v49, v66, v195
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v49, v195, v49, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v60, v20, v191
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v66, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v191, v20, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v60, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v67, null, v66, v66, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v49, v66, v49
	v_mul_f32_e32 v70, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v67, v70, v69
	v_fmac_f32_e32 v70, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v70, v69
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v68, 0x50, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v52, v52, v68, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v193, v52, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v52, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v52, v52
	v_ldexp_f32 v52, v52, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v69, 1.0, v52
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v52, null, v69, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v52
	v_fma_f32 v71, -v52, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v68, v69, v68
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v52, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v52, v72, v71
	v_div_fmas_f32 v70, v52, v70, v72
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v52, 0x5c, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v52, 0x80000000, v52, s2
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v51, v51, v52, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v194, v51, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v52, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v52, v52
	v_ldexp_f32 v52, v52, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v71, 1.0, v52
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v52, null, v71, v71, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v52
	v_fma_f32 v73, -v52, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v51, v71, v51
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v52, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v52, v74, v73
	v_div_fmas_f32 v72, v52, v72, v74
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v52, 0x58, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v52, 0x80000000, v52, s2
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v50, v50, v52, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v73, v192, v50, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v50, v50
	v_ldexp_f32 v50, v50, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v74, 1.0, v50
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v50, null, v74, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v52, v50
	v_fma_f32 v75, -v50, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v75, v52
	v_div_scale_f32 v75, vcc_lo, v73, v74, v73
	v_mul_f32_e32 v76, v75, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v50, v76, v75
	v_fmac_f32_e32 v76, v77, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v50, v76, v75
	v_div_fmas_f32 v75, v50, v52, v76
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v52, v67, v66, v49
	v_div_fixup_f32 v49, v70, v69, v68
	v_div_fixup_f32 v50, v72, v71, v51
	v_div_fixup_f32 v51, v75, v74, v73
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v20
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v60, v60, v65
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v65, 1.0, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v60, null, v65, v65, v20
	v_rcp_f32_e32 v66, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v60, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v20, v65, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v60, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v60, -v60, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v67, v60, v66, v68
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v60, 0x60, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v65, v67, v65, v20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v60, 0x80000000, v60, s2
	v_add_nc_u32_e32 v20, 0x7c, v2
	buffer_load_u16 v60, v60, s[4:7], 0 offen
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v60, 16, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v60, v64, v60, v189
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v64, v189, v60, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v20, v58, v20, v184
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v60, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v184, v20, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v58, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v60, v60
	v_ldexp_f32 v60, v60, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v68, 1.0, v60
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v60, null, v68, v68, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v60
	v_fma_f32 v69, -v60, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, vcc_lo, v64, v68, v64
	v_mul_f32_e32 v70, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v60, v70, v69
	v_fmac_f32_e32 v70, v71, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v60, v70, v69
	v_div_fmas_f32 v60, v60, v66, v70
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v66, 0x6c, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v64, v60, v68, v64
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v66, 16, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v63, v63, v66, v188
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v70, v188, v63, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v63, 0xbfb8aa3b, v70
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v70
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v63, v63, v66
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v71, 1.0, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v63, null, v71, v71, v70
	v_rcp_f32_e32 v66, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v63, v66, 1.0
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, vcc_lo, v70, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v69, v66
	v_fma_f32 v73, -v63, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v66
	v_fma_f32 v63, -v63, v72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v63, v66, v72
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v63, 0x68, v2
	v_cndmask_b32_e64 v63, 0x80000000, v63, s2
	buffer_load_u16 v63, v63, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v63, 16, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v62, v62, v63, v187
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v62, v187, v62, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v63, 0xbfb8aa3b, v62
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v62
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v63, v63, v69
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v69, null, v63, v63, v62
	v_rcp_f32_e32 v72, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v69, v72, 1.0
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v62, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v73, v72
	v_fma_f32 v75, -v69, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v72
	v_fma_f32 v69, -v69, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v72, v74
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v72, 0x74, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v63, v69, v63, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v62, v66, v71, v70
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v72, 16, v72
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v61, v61, v72, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v72, v186, v61, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v61, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v61, v61, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v73, 1.0, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v61, null, v73, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v74, v61
	v_fma_f32 v75, -v61, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v72, v73, v72
	v_mul_f32_e32 v76, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v61, v76, v75
	v_fmac_f32_e32 v76, v77, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v61, v76, v75
	v_div_fmas_f32 v74, v61, v74, v76
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v61, 0x70, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	buffer_load_u16 v61, v61, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v61, 16, v61
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v59, v59, v61, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v59, v185, v59, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v61, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v61, v61, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v75, null, v61, v61, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v77, -v75, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, vcc_lo, v59, v61, v59
	v_mul_f32_e32 v78, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v75, v78, v77
	v_fmac_f32_e32 v78, v79, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v75, v78, v77
	v_div_fmas_f32 v75, v75, v76, v78
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v61, v75, v61, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v59, v74, v73, v72
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v58, v58
	v_ldexp_f32 v58, v58, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v60, null, v58, v58, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v60
	v_fma_f32 v67, -v60, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v20, v58, v20
	v_mul_f32_e32 v68, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v60, v68, v67
	v_fmac_f32_e32 v68, v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v60, v68, v67
	v_div_fmas_f32 v60, v60, v66, v68
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v66, 0x78, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v55, v55, v66, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v183, v55, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v66, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v67, null, v66, v66, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v55, v66, v55
	v_mul_f32_e32 v70, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v67, v70, v69
	v_fmac_f32_e32 v70, v71, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v70, v69
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v68, 0x84, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v17, v17, v68, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v182, v17, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v69, 1.0, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v17, null, v69, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v17
	v_fma_f32 v71, -v17, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v68, v69, v68
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v17, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v72, v71
	v_div_fmas_f32 v70, v17, v70, v72
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v17, 0x80, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v17, v57, v17, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v71, v181, v17, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v72, 1.0, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v17, null, v72, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v57, v17
	v_fma_f32 v73, -v17, v57, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v73, v57
	v_div_scale_f32 v73, vcc_lo, v71, v72, v71
	v_mul_f32_e32 v74, v73, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v17, v74, v73
	v_fmac_f32_e32 v74, v75, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v74, v73
	v_div_fmas_f32 v73, v17, v57, v74
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v17, 0x8c, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v17, v56, v17, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v74, v180, v17, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v75, 1.0, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v17, null, v75, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v56, v17
	v_fma_f32 v57, -v17, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v74, v75, v74
	v_mul_f32_e32 v76, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v17, v76, v57
	v_fmac_f32_e32 v76, v77, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v76, v57
	v_div_fmas_f32 v76, v17, v56, v76
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v17, 0x88, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v17, v48, v17, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v48, v179, v17, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v17, v17, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v77, 1.0, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v17, null, v77, v77, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v56, v17
	v_fma_f32 v57, -v17, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, vcc_lo, v48, v77, v48
	v_mul_f32_e32 v78, v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v17, v78, v57
	v_fmac_f32_e32 v78, v79, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v17, v78, v57
	v_div_fixup_f32 v57, v60, v58, v20
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v58, 0x94, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v20, v76, v75, v74
	v_div_fmas_f32 v78, v17, v56, v78
	v_div_fixup_f32 v17, v67, v66, v55
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v58, 0x80000000, v58, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v55, v70, v69, v68
	v_div_fixup_f32 v56, v73, v72, v71
	v_div_fixup_f32 v48, v78, v77, v48
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v58, 16, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v47, v47, v58, v178
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v58, v178, v47, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v58
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v58
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v60
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v60, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v47, null, v60, v60, v58
	v_rcp_f32_e32 v66, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v47, v66, 1.0
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v58, v60, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v66
	v_fma_f32 v69, -v47, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v66
	v_fma_f32 v47, -v47, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v47, v66, v68
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v47, 0x90, v2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v46, v46, v47, v177
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v46, v177, v46, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v46
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v47, v47, v67
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v47, 1.0, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v67, null, v47, v47, v46
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v67, v68, 1.0
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v46, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v69, v68
	v_fma_f32 v71, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v68
	v_fma_f32 v67, -v67, v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v67, v67, v68, v70
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v68, 0x9c, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v47, v67, v47, v46
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v46, v66, v60, v58
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v58, 0xac, v2
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	v_cndmask_b32_e64 v58, 0x80000000, v58, s2
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v68, 16, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v45, v45, v68, v176
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v58, 16, v58
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v68, v176, v45, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v43, v43, v58, v172
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v45, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v172, v43, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v58, 0xbfb8aa3b, v43
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v69, 1.0, v45
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v45, null, v69, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v45
	v_fma_f32 v71, -v45, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v68, v69, v68
	v_mul_f32_e32 v72, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v45, v72, v71
	v_fmac_f32_e32 v72, v73, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v45, v72, v71
	v_div_fmas_f32 v70, v45, v70, v72
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v45, 0x98, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v42, v42, v45, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v175, v42, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v45, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v71, null, v45, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v73, -v71, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v42, v45, v42
	v_mul_f32_e32 v74, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v71, v74, v73
	v_fmac_f32_e32 v74, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v71, v74, v73
	v_div_fmas_f32 v71, v71, v72, v74
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v72, 0xa4, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v45, v71, v45, v42
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v72, 16, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v44, v44, v72, v174
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v72, v174, v44, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v44, 0xbfb8aa3b, v72
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v72
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v73
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v73, 1.0, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v44, null, v73, v73, v72
	v_rcp_f32_e32 v74, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v44, v74, 1.0
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v72, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v74
	v_fma_f32 v77, -v44, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v77, v74
	v_fma_f32 v44, -v44, v76, v75
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v75, v217, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v74, v44, v74, v76
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v44, 0xa0, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v42, v74, v73, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v44, v75, v44, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v75, v173, v44, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v44, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v44, v44
	v_ldexp_f32 v44, v44, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v76, 1.0, v44
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v44, null, v76, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v44
	v_fma_f32 v78, -v44, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v75, v76, v75
	v_mul_f32_e32 v79, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v44, v79, v78
	v_fmac_f32_e32 v79, v80, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v44, v79, v78
	v_div_fmas_f32 v77, v44, v77, v79
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v44, v70, v69, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v66, v77, v76, v75
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v58, v58
	v_ldexp_f32 v58, v58, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v67, 1.0, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v58, null, v67, v67, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v60, v58
	v_fma_f32 v68, -v58, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v68, v60
	v_div_scale_f32 v68, vcc_lo, v43, v67, v43
	v_mul_f32_e32 v69, v68, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v58, v69, v68
	v_fmac_f32_e32 v69, v70, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v58, v69, v68
	v_div_fmas_f32 v68, v58, v60, v69
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v58, 0xa8, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v43, v68, v67, v43
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v58, 0x80000000, v58, s2
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v58, 16, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v37, v37, v58, v196
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v196, v37, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v58, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v37
	v_exp_f32_e32 v58, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v58, v58, v60
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v58, 1.0, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v60, null, v58, v58, v37
	v_rcp_f32_e32 v69, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v60, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v37, v58, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v60, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v60, -v60, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v60, v60, v69, v71
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v69, 0xb4, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v58, v60, v58, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	buffer_load_u16 v69, v69, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v69, 16, v69
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v35, v35, v69, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v190, v35, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v69, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v70, null, v69, v69, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v72, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v35, v69, v35
	v_mul_f32_e32 v73, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v70, v73, v72
	v_fmac_f32_e32 v73, v74, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v73, v72
	v_div_fmas_f32 v70, v70, v71, v73
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v71, 0xb0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	buffer_load_u16 v71, v71, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v71, 16, v71
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v34, v34, v71, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v169, v34, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v71, v71
	v_ldexp_f32 v71, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v72, null, v71, v71, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v72
	v_fma_f32 v74, -v72, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v34, v71, v34
	v_mul_f32_e32 v75, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v72, v75, v74
	v_fmac_f32_e32 v75, v76, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v72, v75, v74
	v_div_fmas_f32 v72, v72, v73, v75
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v73, 0xbc, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v37, v72, v71, v34
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v34, v70, v69, v35
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v73, v73, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v33, v33, v73, v168
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v168, v33, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v73, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v33
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v73, v73, v74
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v73, 1.0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v74, null, v73, v73, v33
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v74, v75, 1.0
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v33, v73, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v76, v75
	v_fma_f32 v78, -v74, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v75
	v_fma_f32 v74, -v74, v77, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v74, v74, v75, v77
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v75, 0xb8, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v33, v74, v73, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	buffer_load_u16 v75, v75, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v75, 16, v75
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v25, v25, v75, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v167, v25, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v75, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v75
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v75, v75
	v_ldexp_f32 v75, v75, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v75, 1.0, v75
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v76, null, v75, v75, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v76
	v_fma_f32 v78, -v76, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v25, v75, v25
	v_mul_f32_e32 v79, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v76, v79, v78
	v_fmac_f32_e32 v79, v80, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v76, v79, v78
	v_div_fmas_f32 v76, v76, v77, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v35, v76, v75, v25
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v25, 0xc4, v2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v25, v29, v25, v166
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v166, v25, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v25
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v25
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v29, v29, v60
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v60, null, v29, v29, v25
	v_rcp_f32_e32 v67, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v60, v67, 1.0
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v25, v29, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v68, v67
	v_fma_f32 v70, -v60, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v67
	v_fma_f32 v60, -v60, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v60, v60, v67, v69
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v67, 0xc0, v2
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	buffer_load_u16 v67, v67, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v67, 16, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v26, v67, v165
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v165, v26, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v67, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v26
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v68
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v68, null, v67, v67, v26
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v68, v69, 1.0
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, vcc_lo, v26, v67, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v69
	v_fma_f32 v72, -v68, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v72, v69
	v_fma_f32 v68, -v68, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v68, v68, v69, v71
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v69, 0xcc, v2
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	buffer_load_u16 v69, v69, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v69, 16, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v24, v24, v69, v103
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v103, v24, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v69, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v24
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v69, v69, v70
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v70, null, v69, v69, v24
	v_rcp_f32_e32 v71, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v70, v71, 1.0
	v_fmac_f32_e32 v71, v72, v71
	v_div_scale_f32 v72, vcc_lo, v24, v69, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v72, v71
	v_fma_f32 v74, -v70, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v71
	v_fma_f32 v70, -v70, v73, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v72, v70, v71, v73
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v70, 0xc8, v2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v18, v18, v70, v101
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v101, v18, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v70, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v18
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v71
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v73, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v70, null, v73, v73, v18
	v_rcp_f32_e32 v71, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v70, v71, 1.0
	v_fmac_f32_e32 v71, v74, v71
	v_div_scale_f32 v74, vcc_lo, v18, v73, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v74, v71
	v_fma_f32 v76, -v70, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v71
	v_fma_f32 v70, -v70, v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v74, v70, v71, v75
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v71, v216, v1 :: v_dual_add_nc_u32 v70, 0xd4, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v70, v71, v70, v99
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v75, v99, v70, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v70, 0xbfb8aa3b, v75
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v75
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v71
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v76, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v70, null, v76, v76, v75
	v_rcp_f32_e32 v71, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v70, v71, 1.0
	v_fmac_f32_e32 v71, v77, v71
	v_div_scale_f32 v77, vcc_lo, v75, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v71
	v_fma_f32 v79, -v70, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v71
	v_fma_f32 v70, -v70, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v77, v70, v71, v78
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v70, 0xd0, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v76, v77, v76, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v53, v53, v70, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v53, v98, v53, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v70, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v78, 1.0, v70
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v70, null, v78, v78, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v79, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v79, v71
	v_div_scale_f32 v79, vcc_lo, v53, v78, v53
	v_mul_f32_e32 v80, v79, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v70, v80, v79
	v_fmac_f32_e32 v80, v81, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v70, v80, v79
	v_div_fmas_f32 v79, v70, v71, v80
	v_div_fixup_f32 v70, v60, v29, v25
	v_div_fixup_f32 v60, v74, v73, v18
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v18, 0xdc, v2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v71, v68, v67, v26
	v_div_fixup_f32 v68, v72, v69, v24
	v_div_fixup_f32 v67, v79, v78, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v15, v15, v18, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v97, v15, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v24, null, v18, v18, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v24
	v_fma_f32 v26, -v24, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v15, v18, v15
	v_mul_f32_e32 v29, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v24, v29, v26
	v_fmac_f32_e32 v29, v53, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v29, v26
	v_div_fmas_f32 v24, v24, v25, v29
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v25, 0xd8, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v10, v10, v25, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v96, v10, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v26, null, v25, v25, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v29, v26
	v_fma_f32 v53, -v26, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v53, v29
	v_div_scale_f32 v53, vcc_lo, v10, v25, v10
	v_mul_f32_e32 v69, v53, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v26, v69, v53
	v_fmac_f32_e32 v69, v72, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v69, v53
	v_div_fmas_f32 v26, v26, v29, v69
	v_div_fixup_f32 v69, v24, v18, v15
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v15, 0xe4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v13, v13, v15, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v95, v13, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v15, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v18, null, v15, v15, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v18
	v_fma_f32 v29, -v18, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v29, v24
	v_div_scale_f32 v29, vcc_lo, v13, v15, v13
	v_mul_f32_e32 v53, v29, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v18, v53, v29
	v_fmac_f32_e32 v53, v72, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v53, v29
	v_div_fmas_f32 v18, v18, v24, v53
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v24, 0xe0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v12, v12, v24, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v94, v12, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v29, null, v24, v24, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v53, v29
	v_fma_f32 v72, -v29, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v72, v53
	v_div_scale_f32 v72, vcc_lo, v12, v24, v12
	v_mul_f32_e32 v73, v72, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v29, v73, v72
	v_fmac_f32_e32 v73, v74, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v29, v73, v72
	v_div_fmas_f32 v29, v29, v53, v73
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v53, 0xec, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v53, 0x80000000, v53, s2
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v11, v11, v53, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v93, v11, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v53, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v53, v53
	v_ldexp_f32 v53, v53, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v72, null, v53, v53, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v72
	v_fma_f32 v74, -v72, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, vcc_lo, v11, v53, v11
	v_mul_f32_e32 v75, v74, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v72, v75, v74
	v_fmac_f32_e32 v75, v77, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v72, v75, v74
	v_div_fmas_f32 v72, v72, v73, v75
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v73, 0xe8, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v11, v72, v53, v11
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	buffer_load_u16 v73, v73, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v73, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v9, v9, v73, v92
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v92, v9, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v73, 0xbfb8aa3b, v9
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v9
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v73, v73, v74
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v77, 1.0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v73, null, v77, v77, v9
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v73, v74, 1.0
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v9, v77, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v75, v74
	v_fma_f32 v79, -v73, v78, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v74
	v_fma_f32 v73, -v73, v78, v75
	v_div_fixup_f32 v75, v26, v25, v10
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v10, 0xf4, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v78, v73, v74, v78
	v_div_fixup_f32 v73, v29, v24, v12
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v74, v18, v15, v13
	scratch_load_b32 v29, off, off offset:268 ; 4-byte Folded Reload
	v_div_fixup_f32 v9, v78, v77, v9
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v5, v5, v10, v91
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v91, v5, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v10, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v5
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v10, v10, v12
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v12, null, v10, v10, v5
	v_rcp_f32_e32 v13, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v12, v13, 1.0
	v_fmac_f32_e32 v13, v15, v13
	v_div_scale_f32 v15, vcc_lo, v5, v10, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v18, v15, v13
	v_fma_f32 v24, -v12, v18, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v24, v13
	v_fma_f32 v12, -v12, v18, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v12, v12, v13, v18
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v13, 0xf0, v2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	buffer_load_u16 v13, v13, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v4, v4, v13, v90
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v90, v4, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v4, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v13
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v4, v4, v15
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v15, 1.0, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v4, null, v15, v15, v13
	v_rcp_f32_e32 v18, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v4, v18, 1.0
	v_fmac_f32_e32 v18, v24, v18
	v_div_scale_f32 v24, vcc_lo, v13, v15, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v24, v18
	v_fma_f32 v26, -v4, v25, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v26, v18
	scratch_load_b32 v26, off, off offset:252 ; 4-byte Folded Reload
	v_fma_f32 v4, -v4, v25, v24
	.loc	1 179 26 is_stmt 1              ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v24, s1, v84, 1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v14, v14, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v53, v4, v18, v25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v4, 4, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:52
	scratch_load_b32 v25, off, off offset:48
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v53, v15, v13
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v18, v18, v1
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v25, v25, v1 :: v_dual_lshlrev_b32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v18, v4, v29
	.loc	1 179 26 is_stmt 1              ; generate_amdgcn.py:179:26
	v_or_b32_e32 v18, s0, v84
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v29, v4, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v18, v18, s33, 1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v4, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_add_nc_u32_e32 v4, 12, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v25, v18, v26
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v25, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v26, v18, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v26.l, v7.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v18, v6
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v18, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v1
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v18, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v18, v4, v164
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v4, 8, v24
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v25, v4, v163
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	v_mov_b16_e32 v4.l, v6.h
	v_mov_b16_e32 v26.h, v4.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v26, 1, v26
	v_add3_u32 v26, v7, v26, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v164, v18, s2
	v_cndmask_b32_e64 v18, v163, v25, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v0, v18, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v25, v6, v25, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v7, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v7, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:36
	scratch_load_b32 v18, off, off offset:32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v0, v0
	v_mov_b16_e32 v4.l, v6.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v6, v6
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v7, v7, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v8, v8, v1
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v18, v18, v1 :: v_dual_lshlrev_b32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v8, v7, v162
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v8, 20, v24
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v18, v8, v161
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v18, 1, v4
	v_add3_u32 v18, v6, v18, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v162, v7, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v7, v161, v8, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.l, v0.h
	v_mov_b16_e32 v8.h, v4.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v7, v7, v16 :: v_dual_mul_f32 v16, v6, v21
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v8, 1, v8
	v_cndmask_b16 v6.h, 0x7fff, v18.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v18, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v7.h
	v_add3_u32 v8, v0, v8, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v26.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_cndmask_b16 v0.l, 0x7fff, v25.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v25, off, off offset:84
	scratch_load_b32 v26, off, off offset:56
	scratch_load_b32 v21, off, off offset:24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v6.l, 0x7fff, v8.h, s3
	v_and_b32_e32 v8, 1, v4
	v_cmp_o_f32_e64 s0, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v8, v7, v8, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v7, 24, v24
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	buffer_load_u16 v7, v7, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v18, v18, v1
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v25, v25, v1
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v26, v26, v1
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v21, v21, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v18, v7, v159
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v18, 28, v24
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v21, v18, v160
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.l, v16.h
	v_mov_b16_e32 v21.h, v4.h
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v16, v21, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v160, v18, s2
	v_cndmask_b32_e64 v18, v159, v7, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v7, 36, v24
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	buffer_load_u16 v7, v7, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v25, v7, v158
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v7.h, 0x7fff, v8.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v8, v16, v19 :: v_dual_add_nc_u32 v19, 32, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v7.l, 0x7fff, v21.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v21, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v18, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v8.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v22, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v158, v25, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_cmp_o_f32_e64 s0, v16, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v21, v21, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v21, v19, v157
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v21, 1, v4
	v_add3_u32 v21, v8, v21, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v18, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v157, v19, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v19.l, v16.h
	v_mov_b16_e32 v19.h, v4.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v23, off, off offset:72 ; 4-byte Folded Reload
	v_mul_f32_e32 v22, v22, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v8.h
	v_cmp_o_f32_e64 s1, v8, v8
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v19, v16, v19, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v18, v27
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v18, 44, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v23, v23, v1 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v22, v18, v156
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v156, v18, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v22, v8, v22, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v8, 40, v24
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v18, v18, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v28, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v18.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v28, v28, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v23, v8, v155
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v4.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v155, v8, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.h, 0x7fff, v21.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 52, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v23
	v_cndmask_b16 v8.l, 0x7fff, v19.h, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v25, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v25, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v16, v23, 0x7fff
	v_cndmask_b16 v16.h, 0x7fff, v22.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v22, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v16.l, 0x7fff, v23.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v23, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v30, v222, v1
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v25, v25, v1
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v22, v22, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v23, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v22, v21, v154
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 48, v24
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v153
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v4
	v_add3_u32 v23, v18, v23, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v154, v21, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v21, v153, v22, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.l, v19.h
	v_mov_b16_e32 v22.h, v4.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v18, v18, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v22
	v_mov_b16_e32 v4.l, v18.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v18, v18
	v_add3_u32 v22, v19, v22, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v21, v32
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 60, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v32, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v19, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v21, v25, v21, v151
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v25, 56, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v151, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v21, v41
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v41, off, off offset:180 ; 4-byte Folded Reload
	v_mul_f32_e32 v32, v32, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v41, v41, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v26, v25, v152
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v26, 1, v4
	v_mov_b16_e32 v4.l, v21.h
	v_add3_u32 v26, v18, v26, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v152, v25, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.l, v19.h
	v_mov_b16_e32 v25.h, v4.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v27, v18, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.l, 0x7fff, v22.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 0x44, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.h, 0x7fff, v23.h, vcc_lo
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:100
	scratch_load_b32 v40, off, off offset:132
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_cmp_o_f32_e64 s0, v27, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v25, v19, v25, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.h, 0x7fff, v26.h, s1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0x4c, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.l, 0x7fff, v25.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v25, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v23, v23, v1
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v40, v40, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v23, v22, v149
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v23, 64, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v25, v25, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v25, v23, v150
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v4
	v_add3_u32 v25, v21, v25, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v149, v22, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v22, v150, v23, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.l, v27.h
	v_mov_b16_e32 v23.h, v4.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v21, v21, v38 :: v_dual_mul_f32 v22, v22, v39
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v38, v226, v1 :: v_dual_and_b32 v23, 1, v23
	scratch_load_b32 v39, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v21.h
	v_cmp_o_f32_e64 s1, v21, v21
	v_cmp_o_f32_e64 s3, v22, v22
	v_add3_u32 v23, v27, v23, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v27, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v39, v1
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v27, v26, v147
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v27, 0x48, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v147, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v27, v28, v27, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v148, v27, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v21, v28, 0x7fff
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e32 v21.h, v4.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v21, 1, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v5, v12, v10, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v29, v22, v21, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v23.h, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v23, v26, v36
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0x50, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.h, 0x7fff, v25.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v27, v54
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v225, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.h, 0x7fff, v28.h, s1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v28, v224, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v23.h
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_cmp_o_f32_e64 s0, v25, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v29.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v223, v1
	v_mul_f32_e32 v36, v228, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v27, v26, v146
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v27, 0x54, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v146, v26, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v27, v28, v27, v145
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v28, v23, v28, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v145, v27, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.l, v25.h
	v_mov_b16_e32 v27.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v23, v23, v52 :: v_dual_mul_f32 v52, v220, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v4.l, v23.h
	v_cmp_o_f32_e64 s1, v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v27, v25, v27, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v25, v26, v49 :: v_dual_add_nc_u32 v26, 0x5c, v24
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v49, s27, v82
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_mov_b32 s27, s7
	v_cmp_o_f32_e64 s3, v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v49, s34, s33, v49
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v29, v26, v143
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v29, 0x58, v24
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v30, v29, v144
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v30, 1, v4
	v_add3_u32 v30, v23, v30, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v143, v26, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v26, v144, v29, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v29.l, v25.h
	v_mov_b16_e32 v29.h, v4.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v31, v23, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.h, 0x7fff, v28.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v28, 0x64, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v29
	v_cndmask_b16 v23.l, 0x7fff, v27.h, s0
	v_mov_b16_e32 v4.l, v31.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v26, v26, v51
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v29, v25, v29, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v30.h, s1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v30, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v27, 1, v4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v25.l, 0x7fff, v29.h, s3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v29, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_add3_u32 v27, v31, v27, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v31, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v26, v26
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v51, v221, v1
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v30, v30, v1
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v29, v29, v1 :: v_dual_lshlrev_b32 v28, 16, v28
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v31, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v29, v28, v141
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v29, 0x60, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v141, v28, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v28, v28, v65
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v28.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v30, v29, v142
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v30.l, v26.h
	v_mov_b16_e32 v30.h, v4.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v142, v29, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v30, v26, v30, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v26, 0x68, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v31, v26, v140
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v31, 0x6c, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v32, v31, v139
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v140, v26, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v27.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v27, v29, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v139, v31, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v4
	v_cndmask_b16 v26.l, 0x7fff, v30.h, s0
	v_cmp_o_f32_e64 s0, v27, v27
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v30, v32, v63
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v32, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v31, v28, v31, 0x7fff
	v_mov_b16_e32 v28.l, v27.h
	v_mov_b16_e32 v28.h, v4.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v29, v29, v62 :: v_dual_and_b32 v28, 1, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v29.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v27, v28, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v27, 0x70, v24
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v32, v32, v1 :: v_dual_lshlrev_b32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v27, v32, v27, v138
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v32, 0x74, v24
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v36, v32, v137
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v138, v27, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s0
	v_cndmask_b16 v27.h, 0x7fff, v31.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v137, v32, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v32, 1, v4
	v_cmp_o_f32_e64 s0, v30, v30
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v31, v36, v61
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v36, v227, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v32, v29, v32, 0x7fff
	v_mov_b16_e32 v29.l, v30.h
	v_mov_b16_e32 v29.h, v4.h
	v_mov_b16_e32 v32.l, v31.h
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v29, v30, v29, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v30, 0x78, v24
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v36, v30, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v36, 0x7c, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v136, v30, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v30, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v38, v36, v135
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v38, v28, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v28.h, 0x7fff, v32.h, vcc_lo
	v_mov_b16_e32 v32.h, v4.h
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s0
	v_cmp_o_f32_e64 s0, v31, v31
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v135, v36, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v36, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v32, 1, v32
	v_mov_b16_e32 v4.l, v38.h
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v32, v31, v32, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v31, 0x80, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v30, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v38, v30, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v38, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v36, v36, v1
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v38, v38, v1 :: v_dual_lshlrev_b32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v36, v31, v134
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v36, 0x84, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v134, v31, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v31, v31, v56
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v38, v36, v133
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v38, v29, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.h, 0x7fff, v30.h, vcc_lo
	v_cndmask_b16 v29.l, 0x7fff, v32.h, s0
	v_cmp_o_f32_e64 s0, v17, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v133, v36, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v36.l, v17.h
	v_mov_b16_e32 v36.h, v4.h
	v_mov_b16_e32 v4.l, v38.h
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v36, 1, v36
	v_and_b32_e32 v32, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v17, v36, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0x88, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v32, v38, v32, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v38, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v38, v38, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v38, v17, v132
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v38, 0x8c, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v132, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v17, v48
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v48.h, v4.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v39, v38, v131
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v39, v30, v55
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.h, 0x7fff, v32.h, vcc_lo
	v_cndmask_b16 v30.l, 0x7fff, v36.h, s0
	v_cmp_o_f32_e64 s0, v31, v31
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v131, v38, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v31.h
	v_mov_b16_e32 v38.h, v4.h
	v_mov_b16_e32 v4.l, v39.h
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v32, v32, v20 :: v_dual_and_b32 v55, 16, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v38, 1, v38
	v_and_b32_e32 v36, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v4.l, v32.h
	v_add3_u32 v38, v31, v38, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v31, 0x90, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v36, v39, v36, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v39, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.l, 0x7fff, v38.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_cmp_o_f32_e64 s0, v17, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v39, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v39, v31, v130
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v39, 0x94, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v130, v31, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v38, v31, v47
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v31, v32, v31, 0x7fff
	v_mov_b16_e32 v32.l, v17.h
	v_mov_b16_e32 v32.h, v4.h
	v_cndmask_b16 v31.h, 0x7fff, v31.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v32, v17, v32, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0x98, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v38, v38
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v39, v40, v39, v129
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v40, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v129, v39, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v39, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v36, v36, v46
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v46, 0xf4, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v36.h
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v40, v40, v1
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v39, v39, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v39, v17, v127
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v39, 0x9c, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v127, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v17, v45
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v45, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v45, v45, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v39, v40, v39, v126
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v40, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v126, v39, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v4
	v_add3_u32 v39, v36, v39, 0x7fff
	v_mov_b16_e32 v36.l, v38.h
	v_mov_b16_e32 v36.h, v4.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v38, v36, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v38, 0xa0, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v40, v40, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v40, v38, v125
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v40, 0xa4, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v125, v38, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v38, v38, v66
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v40, v40, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v40, 16, v40
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v40, v41, v40, v124
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v41, v32, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v36.h, s0
	v_cmp_o_f32_e64 s0, v17, v17
	v_cndmask_b16 v32.h, 0x7fff, v39.h, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v124, v40, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v40.l, v17.h
	v_mov_b16_e32 v40.h, v4.h
	v_mov_b16_e32 v4.l, v41.h
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v42, v36, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v40, 1, v40
	v_and_b32_e32 v39, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v4.l, v42.h
	v_add3_u32 v40, v17, v40, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0xa8, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v39, v41, v39, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v41, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.l, 0x7fff, v40.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v40, 1, v4
	v_cndmask_b16 v36.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_cmp_o_f32_e64 s0, v38, v38
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v42, v40, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v42, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v44, v44, v1
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v41, v41, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v41, v17, v123
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v41, 0xac, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v123, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v17, v58
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v41, v44, v41, v122
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:164 ; 4-byte Folded Reload
	v_mul_f32_e32 v42, v42, v1
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v122, v41, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.l, v38.h
	v_mov_b16_e32 v41.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v39, v39, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v4.l, v39.h
	v_add3_u32 v41, v38, v41, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v38, 0xb0, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	buffer_load_u16 v38, v38, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v44, v44, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v38, v42, v38, v121
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v42, 0xb4, v24
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v42, v44, v42, v120
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v121, v38, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v38.l, 0x7fff, v41.h, s0
	v_and_b32_e32 v41, 1, v4
	v_cndmask_b16 v38.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_cmp_o_f32_e64 s0, v17, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v120, v42, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v41, v39, v41, 0x7fff
	v_mov_b16_e32 v39.l, v17.h
	v_mov_b16_e32 v39.h, v4.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v42, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v37, v44, v37
	v_mul_f32_e32 v40, v40, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v34.h, 0x7fff, v41.h, vcc_lo
	v_and_b32_e32 v39, 1, v39
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v41, off, off offset:216
	scratch_load_b32 v44, off, off offset:188
	scratch_load_b32 v43, off, off offset:156
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v40.h
	v_add3_u32 v39, v17, v39, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0xb8, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v34.l, 0x7fff, v39.h, s0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v37, v37
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v42, v42, v1
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v41, v41, v1
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v44, v44, v1
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v43, v43, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v42, v17, v119
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v42, 0xbc, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v119, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v17, v35
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v35, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v40, v35, 0x7fff
	v_mov_b16_e32 v40.l, v37.h
	v_mov_b16_e32 v40.h, v4.h
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v37, v40, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v37, 0xc0, v24
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v42, v43, v42, v118
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v43, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v118, v42, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v42, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v39, v39, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.l, 0x7fff, v40.h, s0
	v_cndmask_b16 v33.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e64 s0, v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v4.l, v39.h
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_and_b32_e32 v40, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v39, v40, 0x7fff
	v_mov_b16_e32 v39.l, v17.h
	v_mov_b16_e32 v39.h, v4.h
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v17, v39, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0xc8, v24
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v37, v41, v37, v117
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v41, 0xc4, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v117, v37, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v37, v37, v71
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v43, v43, v1
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v42, v42, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v41, v42, v41, v116
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	scratch_load_b32 v42, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v116, v41, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v41, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v42, v42, v1
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v41, v41, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v41, v17, v115
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v41, 0xcc, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v115, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v17, v60
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v41, v42, v41, v114
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v42, v35, v70
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v35.l, 0x7fff, v39.h, s0
	v_cmp_o_f32_e64 s0, v37, v37
	v_cndmask_b16 v35.h, 0x7fff, v40.h, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v114, v41, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.l, v37.h
	v_mov_b16_e32 v41.h, v4.h
	v_mov_b16_e32 v4.l, v42.h
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v39, v39, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v41, 1, v41
	v_and_b32_e32 v40, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v4.l, v39.h
	v_add3_u32 v41, v37, v41, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v37, 0xd0, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v42, v40, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v42, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v42, v42, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v37, v42, v37, v113
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v42, 0xd4, v24
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v42, v43, v42, v112
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v113, v37, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v37.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v112, v42, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v41, v43, v67 :: v_dual_and_b32 v42, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v40, v40, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v42, v39, v42, 0x7fff
	v_mov_b16_e32 v39.l, v17.h
	v_mov_b16_e32 v39.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v4.l, v40.h
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v43, v17, v39, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0xdc, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v39, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v39, v39, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v39, v17, v110
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v39, 0xd8, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v110, v17, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v17, v69
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v17, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v44, v39, v111
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v39.h, 0x7fff, v42.h, vcc_lo
	v_cndmask_b16 v39.l, 0x7fff, v43.h, s0
	v_and_b32_e32 v43, 1, v4
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v111, v44, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v17.h
	v_add3_u32 v43, v40, v43, 0x7fff
	v_cmp_o_f32_e64 s0, v41, v41
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v40, v42, v75
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v42, 0xe4, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v40, v40
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v44, v44, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v42, v44, v42, v108
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v44, 0xe0, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v108, v42, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v45, v44, v109
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v45.l, v41.h
	v_mov_b16_e32 v45.h, v4.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v45, v41, v45, 0x7fff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v109, v44, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v44, v42, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v42, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v4.l, v44.h
	v_add3_u32 v42, v17, v42, 0x7fff
	v_mov_b16_e32 v17.l, v40.h
	v_mov_b16_e32 v17.h, v4.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v40, v17, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v43.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v43, v41, v73
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.h, 0x7fff, v42.h, s1
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_cndmask_b16 v41.l, 0x7fff, v17.h, s3
	v_and_b32_e32 v17, 1, v4
	v_cndmask_b16 v40.l, 0x7fff, v45.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v45, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v48.l, v43.h
	v_cmp_o_f32_e64 s3, v43, v43
	v_add3_u32 v42, v44, v17, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0xec, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	scratch_load_b32 v44, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v48, 1, v48
	v_cndmask_b16 v42.h, 0x7fff, v42.h, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v48, v43, v48, 0x7fff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v42.l, 0x7fff, v48.h, s3
	v_mov_b16_e32 v48.h, v4.h
	v_cmp_eq_u32_e64 s3, 0, v55
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v45, v45, v1
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v44, v44, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v17, v44, v17, v106
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v44, 0xe8, v24
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v44, v45, v44, v107
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v45, 0xfc, v2
	v_add_nc_u32_e32 v2, 0xf8, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v107, v44, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v44, v9
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v48.l, v9.h
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v48, v9, v48, 0x7fff
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v47, v3, v45, v86
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v45, v2, s[4:7], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v106, v17, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v17, 0xf0, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v86, v47, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v3, v3, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x1
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v3.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v15, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v3, v15, 0x7fff
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v14, v14, v45, v85
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v45, 0xf8, v24
	v_add_nc_u32_e32 v24, 0xfc, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v85, v14, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	s_clause 0x1
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v3, v3
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v46, v51, v46, v104
	v_fma_f32 v17, v52, v17, v105
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v46, v104, v46, s2
	v_cndmask_b32_e64 v17, v105, v17, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v14
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v46, v5
	v_mul_f32_e32 v13, v17, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v43, v43
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v17, v30, v28, s3
	v_mov_b16_e32 v4.l, v5.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v11, v47, v11
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s1
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v43, v43, v47
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v47, 1, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v10, null, v11, v11, v2
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v43, 1.0, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v44, v10
	v_div_scale_f32 v12, null, v43, v43, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v50, v12
	v_fma_f32 v3, -v10, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v44, v3, v44
	v_div_scale_f32 v3, vcc_lo, v2, v11, v2
	v_fma_f32 v51, -v12, v50, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v52, v3, v44
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, s1, v14, v43, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v10, v52, v3
	v_dual_mul_f32 v53, v51, v50 :: v_dual_fmac_f32 v52, v54, v44
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v54, v219, v1
	v_mul_f32_e32 v1, v218, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v46, -v12, v53, v51
	v_fma_f32 v3, -v10, v52, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v53, v46, v50
	v_div_fmas_f32 v3, v3, v44, v52
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v12, -v12, v53, v51
	v_div_fixup_f32 v2, v3, v11, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v13.h
	v_mov_b16_e32 v3.h, v4.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v12, v12, v50, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b16_e32 v9.h, v4.h
	v_cndmask_b16 v11.h, 0x7fff, v15.h, s0
	v_and_b32_e32 v3, 1, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v12, v12, v43, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v11.l, 0x7fff, v48.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cmp_o_f32_e64 s0, v13, v13
	v_add3_u32 v3, v13, v3, 0x7fff
	v_cndmask_b32_e64 v13, v26, v23, s3
	v_cndmask_b32_e64 v14, v23, v26, s3
	v_cndmask_b32_e64 v23, v33, v38, s3
	v_cndmask_b32_e64 v26, v34, v35, s3
	v_cndmask_b32_e64 v15, v29, v27, s3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v54, v45, v102
	v_fma_f32 v1, v1, v24, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v24, v38, v33, s3
	v_mov_b32_e32 v33, 0x5410
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v38, v49, v47, 1
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v102, v10, s2
	v_cndmask_b32_e64 v1, v100, v1, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v10, v10, v12 :: v_dual_mul_f32 v1, v1, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v2, 1, v4
	v_cndmask_b32_e64 v12, v22, v25, s3
	v_mov_b16_e32 v9.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v4.l, v1.h
	v_add3_u32 v2, v5, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v1, v1
	v_cmp_o_f32_e64 s2, v10, v10
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v5, v10, v9, 0x7fff
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s0
	v_cndmask_b32_e64 v3, v7, v0, s3
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s1
	v_cndmask_b32_e64 v0, v0, v7, s3
	v_cndmask_b32_e64 v10, v25, v22, s3
	v_cndmask_b32_e64 v25, v35, v34, s3
	v_mov_b32_e32 v34, 0x7632
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e64 v4, v8, v6, s3
	v_cndmask_b32_e64 v5, v6, v8, s3
	v_cndmask_b32_e64 v6, v19, v16, s3
	v_cndmask_b32_e64 v7, v16, v19, s3
	v_cndmask_b32_e64 v19, v32, v20, s3
	v_cndmask_b32_e64 v20, v20, v32, s3
	v_cndmask_b32_e64 v32, v2, v11, s3
	v_cndmask_b32_e64 v2, v11, v2, s3
	v_permlanex16_b32 v11, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v0, 0x1054, v33, s3
	v_cndmask_b32_e64 v33, 0x3276, v34, s3
	v_cndmask_b32_e64 v8, v21, v18, s3
	v_cndmask_b32_e64 v9, v18, v21, s3
	v_cndmask_b32_e64 v16, v27, v29, s3
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v33, v33, 8, v33
	v_cndmask_b32_e64 v18, v28, v30, s3
	v_cndmask_b32_e64 v21, v36, v31, s3
	v_cndmask_b32_e64 v22, v31, v36, s3
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v33, 0x760076, v33
	v_cndmask_b32_e64 v28, v37, v40, s3
	v_cndmask_b32_e64 v30, v39, v41, s3
	v_cndmask_b32_e64 v31, v1, v42, s3
	v_cndmask_b32_e64 v1, v42, v1, s3
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v33, v33, 4, v33
	v_cndmask_b32_e64 v27, v40, v37, s3
	v_and_b32_e32 v37, 0x1e0, v83
	v_cndmask_b32_e64 v29, v41, v39, s3
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v34, 0x5040504, v0
	v_and_b32_e32 v33, 0x7060706, v33
	v_permlanex16_b32 v30, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v37
	v_perm_b32 v0, v11, v3, v34
	v_perm_b32 v1, v11, v3, v33
	v_perm_b32 v2, v5, v4, v34
	v_perm_b32 v3, v5, v4, v33
	v_perm_b32 v4, v7, v6, v34
	v_perm_b32 v5, v7, v6, v33
	v_perm_b32 v6, v9, v8, v34
	v_perm_b32 v7, v9, v8, v33
	v_perm_b32 v8, v12, v10, v34
	v_perm_b32 v9, v12, v10, v33
	v_perm_b32 v10, v14, v13, v34
	v_perm_b32 v11, v14, v13, v33
	v_perm_b32 v12, v16, v15, v34
	v_perm_b32 v13, v16, v15, v33
	v_perm_b32 v14, v18, v17, v34
	v_perm_b32 v15, v18, v17, v33
	v_perm_b32 v16, v20, v19, v34
	v_perm_b32 v17, v20, v19, v33
	v_perm_b32 v18, v22, v21, v34
	v_perm_b32 v19, v22, v21, v33
	v_perm_b32 v20, v24, v23, v34
	v_perm_b32 v21, v24, v23, v33
	v_perm_b32 v22, v26, v25, v34
	v_perm_b32 v23, v26, v25, v33
	v_perm_b32 v24, v28, v27, v34
	v_perm_b32 v25, v28, v27, v33
	v_perm_b32 v26, v30, v29, v34
	v_perm_b32 v27, v30, v29, v33
	v_perm_b32 v28, v35, v31, v34
	v_perm_b32 v29, v35, v31, v33
	v_add_nc_u32_e32 v31, 32, v38
	v_perm_b32 v30, v36, v32, v34
	v_add_nc_u32_e32 v34, 64, v38
	v_cndmask_b32_e32 v35, 0x80000000, v38, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v37, 0x80000000, v31, vcc_lo
	v_perm_b32 v31, v36, v32, v33
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[0:3], v35, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v37, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v34, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v38
	v_add_nc_u32_e32 v1, 0x80, v38
	v_add_nc_u32_e32 v2, 0xa0, v38
	v_add_nc_u32_e32 v3, 0xc0, v38
	v_add_nc_u32_e32 v4, 0xe0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[12:15], v0, s[24:27], 0 offen
	buffer_store_b128 v[16:19], v1, s[24:27], 0 offen
	buffer_store_b128 v[20:23], v2, s[24:27], 0 offen
	buffer_store_b128 v[24:27], v3, s[24:27], 0 offen
	buffer_store_b128 v[28:31], v4, s[24:27], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 716
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
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 716
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 78468
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 716
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 716
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 266
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
