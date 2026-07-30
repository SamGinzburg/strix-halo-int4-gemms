	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 856 0                         ; ragged.py:856:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 883 20 prologue_end           ; ragged.py:883:20
	s_abs_i32 s9, s2
	.loc	1 888 36                        ; ragged.py:888:36
	v_and_b32_e32 v19, 15, v0
	.loc	1 889 36                        ; ragged.py:889:36
	v_lshrrev_b32_e32 v5, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:880:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:881:21 ]
	s_add_i32 s5, s35, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:880:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:880:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:880:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:880:21 ]
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_ashr_i32 s8, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 882 27 is_stmt 1              ; ragged.py:882:27
	s_mul_i32 s4, s8, s4
	.loc	1 883 20                        ; ragged.py:883:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s6
	.loc	1 885 17                        ; ragged.py:885:17
	s_abs_i32 s9, s8
	.loc	1 883 20                        ; ragged.py:883:20
	s_xor_b32 s5, s5, s7
	.loc	1 885 17                        ; ragged.py:885:17
	s_cvt_f32_u32 s6, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s10, s6
	.loc	1 883 20                        ; ragged.py:883:20
	s_sub_i32 s6, s5, s7
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s5, 0, s9
	.loc	1 884 22                        ; ragged.py:884:22
	s_mul_i32 s4, s6, s4
	.loc	1 885 17                        ; ragged.py:885:17
	s_mul_i32 s5, s5, s10
	.loc	1 884 16                        ; ragged.py:884:16
	s_sub_i32 s2, s2, s4
	.loc	1 885 17                        ; ragged.py:885:17
	s_mul_hi_u32 s4, s10, s5
	s_abs_i32 s7, s2
	s_add_i32 s10, s10, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s10, s7, s10
	s_xor_b32 s11, s2, s8
	s_mul_i32 s12, s10, s9
	s_ashr_i32 s11, s11, 31
	s_sub_i32 s7, s7, s12
	s_add_i32 s12, s10, 1
	s_sub_i32 s13, s7, s9
	s_cmp_ge_u32 s7, s9
	.loc	1 991 37                        ; ragged.py:991:37
	s_mul_i32 s28, s6, s34
	.loc	1 885 17                        ; ragged.py:885:17
	s_cselect_b32 s10, s12, s10
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s10, 1
	s_cmp_ge_u32 s7, s9
	s_cselect_b32 s7, s12, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s11
	s_sub_i32 s9, s7, s11
	.loc	1 892 19                        ; ragged.py:892:19
	s_ashr_i32 s7, s6, 31
	.loc	1 886 24                        ; ragged.py:886:24
	s_mul_i32 s8, s9, s8
	.loc	1 892 19                        ; ragged.py:892:19
	s_lshl_b64 s[10:11], s[6:7], 2
	.loc	1 886 17                        ; ragged.py:886:17
	s_sub_i32 s8, s2, s8
	.loc	1 888 18                        ; ragged.py:888:18
	s_lshl_b32 s7, s9, 6
	.loc	1 892 19                        ; ragged.py:892:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v1, s7, v19
	.loc	1 892 19                        ; ragged.py:892:19
	s_load_b32 s23, s[4:5], 0x0
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s5, s34, v1
	v_cmp_gt_i32_e64 s4, s34, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s19, s34, v3
	v_cmp_gt_i32_e64 s2, s34, v4
	.loc	1 893 27                        ; ragged.py:893:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s23, s23, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_cmp_gt_i32 s23, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge16_crit_edge
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_add_i32 s16, s7, s28
	s_lshl_b32 s22, s35, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr16
                                        ; implicit-def: $sgpr22
.LBB0_3:                                ; %Flow383
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v12, 0x70, v5
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v197, 0
	v_mov_b32_e32 v190, 0
	v_mov_b32_e32 v192, 0
	v_mov_b32_e32 v194, 0
	v_mov_b32_e32 v196, 0
	v_mov_b32_e32 v198, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s18, s8, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	v_or_b32_e32 v7, 0x1300, v0
	.loc	1 956 23 is_stmt 1              ; ragged.py:956:23
	s_lshl_b32 s3, s3, 5
	.loc	1 893 26                        ; ragged.py:893:26
	s_lshr_b32 s29, s23, 1
	s_cmp_lt_i32 s3, 32
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v173, s18, v0
	s_cselect_b32 s30, -1, 0
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v65, 0, v7
	.loc	1 951 28                        ; ragged.py:951:28
	v_lshrrev_b32_e32 v1, 6, v0
	v_dual_mov_b32 v197, 0 :: v_dual_and_b32 v4, 63, v0
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v165, 0, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[77:78], null, s35, 3, v[173:174]
	v_mad_u64_u32 v[78:79], null, s35, 5, v[173:174]
	v_mad_u64_u32 v[79:80], null, s35, 6, v[173:174]
	.loc	1 960 39                        ; ragged.py:960:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s23, s6, s16
	s_add_i32 s16, s7, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v6, s16, v19
	v_mad_u64_u32 v[80:81], null, s35, 7, v[173:174]
	v_mad_u64_u32 v[81:82], null, s35, 9, v[173:174]
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v11, 16, v6
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v3, 12, v1
	v_mad_u64_u32 v[82:83], null, s35, 10, v[173:174]
	v_mad_u64_u32 v[215:216], null, s34, v1, v[4:5]
	v_or_b32_e32 v1, 28, v1
	v_mad_u64_u32 v[83:84], null, s35, 11, v[173:174]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v12, off offset:324
	scratch_store_b32 off, v0, off offset:320
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v166, v165, v12
	v_mul_lo_u32 v180, v6, s17
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v12, 32, v6
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v6, 48, v6
	v_mul_lo_u32 v181, v11, s17
	v_dual_mov_b32 v194, 0 :: v_dual_and_b32 v11, 0xf0, v0
	v_dual_mov_b32 v192, 0 :: v_dual_lshlrev_b32 v13, 5, v0
	v_mad_u64_u32 v[84:85], null, s35, 12, v[173:174]
	v_mad_u64_u32 v[85:86], null, s35, 13, v[173:174]
	v_mad_u64_u32 v[86:87], null, s35, 14, v[173:174]
	v_mad_u64_u32 v[199:200], null, s34, v3, v[4:5]
	v_mad_u64_u32 v[87:88], null, s35, 15, v[173:174]
	v_mad_u64_u32 v[200:201], null, s34, v1, v[4:5]
	v_mad_u64_u32 v[88:89], null, s35, 17, v[173:174]
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v2, s7, v4
	v_mul_lo_u32 v201, v12, s17
	v_mul_lo_u32 v202, v6, s17
	v_dual_mov_b32 v187, 0 :: v_dual_lshlrev_b32 v6, 1, v0
	v_dual_mov_b32 v183, 0 :: v_dual_lshlrev_b32 v12, 2, v11
	v_dual_mov_b32 v190, 0 :: v_dual_and_b32 v13, 32, v13
	v_mad_u64_u32 v[89:90], null, s35, 18, v[173:174]
	v_mad_u64_u32 v[90:91], null, s35, 19, v[173:174]
	v_mad_u64_u32 v[91:92], null, s35, 20, v[173:174]
	v_mad_u64_u32 v[92:93], null, s35, 21, v[173:174]
	v_mad_u64_u32 v[209:210], null, s35, 26, v[173:174]
	v_mad_u64_u32 v[93:94], null, s35, 22, v[173:174]
	v_mad_u64_u32 v[210:211], null, s35, 27, v[173:174]
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s1, s34, v2
	v_or_b32_e32 v15, 0x300, v0
	v_or_b32_e32 v1, 0x700, v0
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v3, 0x7f0, v0
	v_or_b32_e32 v4, 0xb00, v0
	v_or_b32_e32 v5, 0xf00, v0
	v_or_b32_e32 v8, 0x1700, v0
	v_or_b32_e32 v9, 0x1b00, v0
	v_or_b32_e32 v10, 0x1f00, v0
	v_dual_mov_b32 v179, 0 :: v_dual_and_b32 v6, 28, v6
	v_cndmask_b32_e64 v14, 0, 1, s30
	v_add3_u32 v12, 0, v12, v13
	v_dual_mov_b32 v188, 0 :: v_dual_lshlrev_b32 v11, 1, v11
	v_mad_u64_u32 v[94:95], null, s35, 23, v[173:174]
	v_mad_u64_u32 v[211:212], null, s35, 28, v[173:174]
	v_mad_u64_u32 v[205:206], null, s34, 20, v[215:216]
	v_mad_u64_u32 v[95:96], null, s35, 24, v[173:174]
	v_mad_u64_u32 v[212:213], null, s35, 29, v[173:174]
	v_mad_u64_u32 v[206:207], null, s34, 24, v[215:216]
	v_mad_u64_u32 v[96:97], null, s35, 25, v[173:174]
	v_mad_u64_u32 v[213:214], null, s35, 30, v[173:174]
	v_mad_u64_u32 v[216:217], null, s35, 31, v[173:174]
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s0, s35, v173
	.loc	1 998 37                        ; ragged.py:998:37
	s_mul_i32 s33, s6, s17
	v_cmp_ne_u32_e64 s6, 1, v14
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v171, 0, v0
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v73, 0, v15
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v76, 0, v1
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v203, 0, v2
	v_dual_mov_b32 v182, 0 :: v_dual_add_nc_u32 v69, 0, v3
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v75, 0, v4
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v71, 0, v5
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v74, 0, v8
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v172, 0, v9
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v208, 0, v10
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v70, v12, v6
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v204, 0, v11
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v127, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v130, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 953 19                        ; ragged.py:953:19
	s_add_i32 s29, s29, -1
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	s_lshl_b32 s22, s35, 4
	s_and_b32 s9, s11, 0xffff
	s_mov_b32 s8, s10
	s_mov_b32 s36, 0
	s_lshr_b32 s17, s29, 5
	s_mov_b32 s28, s12
	s_mov_b32 s29, s13
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s10, 0
	s_clause 0xc                            ; 56-byte Folded Spill
	scratch_store_b32 off, v180, off offset:296
	scratch_store_b32 off, v181, off offset:300
	scratch_store_b32 off, v201, off offset:304
	scratch_store_b32 off, v202, off offset:308
	scratch_store_b32 off, v70, off offset:312
	scratch_store_b32 off, v204, off offset:316
	scratch_store_b64 off, v[173:174], off offset:32
	scratch_store_b32 off, v75, off offset:8
	scratch_store_b32 off, v71, off offset:12
	scratch_store_b32 off, v65, off offset:16
	scratch_store_b32 off, v74, off offset:20
	scratch_store_b32 off, v172, off offset:24
	scratch_store_b32 off, v208, off offset:28
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v33, v180, s36, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_add_i32 s10, s36, s33
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v34, v181, s36, 1
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v35, v201, s36, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_mul_i32 s10, s10, s35
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v36, v202, s36, 1
	.loc	1 997 40                        ; ragged.py:997:40
	v_add_lshl_u32 v37, v173, s10, 1
	.loc	1 990 40                        ; ragged.py:990:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s19
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 997 40                        ; ragged.py:997:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	.loc	1 990 40                        ; ragged.py:990:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	buffer_load_u16 v36, v36, s[28:31], 0 offen
	.loc	1 997 40                        ; ragged.py:997:40
	buffer_load_u16 v37, v37, s[12:15], 0 offen
	.loc	1 1002 21                       ; ragged.py:1002:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1004 17                       ; ragged.py:1004:17
	s_add_i32 s11, s36, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshl_b32 s10, s11, 5
	s_cmp_lg_u32 s36, s17
	s_mov_b32 s36, s11
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 995 21                        ; ragged.py:995:21
	v_dual_mul_f32 v54, v110, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v168, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v124, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v167, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v108, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v149, v33 :: v_dual_mul_f32 v53, v111, v34
	v_dual_mul_f32 v42, v123, v33 :: v_dual_mul_f32 v55, v109, v34
	v_dual_mul_f32 v43, v122, v33 :: v_dual_mul_f32 v60, v104, v34
	v_dual_mul_f32 v44, v121, v33 :: v_dual_mul_f32 v57, v107, v34
	v_dual_mul_f32 v45, v120, v33 :: v_dual_mul_f32 v58, v106, v34
	v_dual_mul_f32 v46, v119, v33 :: v_dual_mul_f32 v59, v105, v34
	v_dual_mul_f32 v47, v118, v33 :: v_dual_mul_f32 v64, v100, v34
	v_dual_mul_f32 v48, v117, v33 :: v_dual_mul_f32 v61, v103, v34
	v_dual_mul_f32 v49, v116, v33 :: v_dual_mul_f32 v62, v102, v34
	v_dual_mul_f32 v50, v115, v33 :: v_dual_mul_f32 v63, v101, v34
	v_dual_mul_f32 v51, v114, v33 :: v_dual_mul_f32 v32, v32, v34
	v_dual_mul_f32 v52, v113, v33 :: v_dual_mul_f32 v67, v99, v34
	v_dual_mul_f32 v33, v112, v33 :: v_dual_mul_f32 v68, v98, v34
	v_dual_mul_f32 v97, v97, v34 :: v_dual_mul_f32 v30, v30, v35
	v_dual_mul_f32 v31, v31, v35 :: v_dual_mul_f32 v14, v14, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v108, v12, v36
	v_dual_mul_f32 v28, v28, v35 :: v_dual_mul_f32 v15, v15, v36
	v_mul_f32_e32 v34, v27, v35
	v_dual_mul_f32 v98, v26, v35 :: v_dual_mul_f32 v109, v11, v36
	v_dual_mul_f32 v99, v25, v35 :: v_dual_mul_f32 v110, v10, v36
	v_dual_mul_f32 v100, v24, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v101, v23, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v102, v22, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v103, v21, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v104, v20, v35 :: v_dual_mul_f32 v5, v5, v36
	v_dual_mul_f32 v105, v19, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v106, v18, v35 :: v_dual_mul_f32 v3, v3, v36
	v_dual_mul_f32 v107, v17, v35 :: v_dual_mul_f32 v2, v2, v36
	v_mul_f32_e32 v35, v16, v35
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_store_b32 v70, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v204
	ds_load_b128 v[20:23], v204 offset:16
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v37, v13, v36
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_load_b128 v[10:13], v204 offset:512
	ds_load_b128 v[24:27], v204 offset:528
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v1, v1, v36
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v0, v0, v36 :: v_dual_fmac_f32 v197, v39, v17
	.loc	1 1003 17                       ; ragged.py:1003:17
	v_fmac_f32_e32 v198, v38, v16
	v_dual_fmac_f32 v196, v40, v18 :: v_dual_fmac_f32 v195, v41, v19
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v194, v42, v20 :: v_dual_fmac_f32 v193, v43, v21
	v_dual_fmac_f32 v192, v44, v22 :: v_dual_fmac_f32 v191, v45, v23
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v190, v46, v10 :: v_dual_fmac_f32 v189, v47, v11
	v_dual_fmac_f32 v188, v48, v12 :: v_dual_fmac_f32 v187, v49, v13
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v186, v50, v24
	v_dual_fmac_f32 v72, v51, v25 :: v_dual_fmac_f32 v183, v33, v27
	v_dual_fmac_f32 v66, v52, v26 :: v_dual_fmac_f32 v179, v54, v17
	v_dual_fmac_f32 v182, v53, v16 :: v_dual_fmac_f32 v177, v56, v19
	v_dual_fmac_f32 v178, v55, v18 :: v_dual_fmac_f32 v175, v58, v21
	v_dual_fmac_f32 v176, v57, v20 :: v_dual_fmac_f32 v151, v99, v22
	v_dual_fmac_f32 v174, v59, v22 :: v_dual_fmac_f32 v153, v34, v20
	v_dual_fmac_f32 v170, v60, v23 :: v_dual_fmac_f32 v169, v61, v10
	v_dual_fmac_f32 v164, v62, v11 :: v_dual_fmac_f32 v163, v63, v12
	v_dual_fmac_f32 v162, v64, v13 :: v_dual_fmac_f32 v161, v67, v24
	v_dual_fmac_f32 v160, v68, v25 :: v_dual_fmac_f32 v159, v97, v26
	v_dual_fmac_f32 v158, v32, v27 :: v_dual_fmac_f32 v157, v31, v16
	v_dual_fmac_f32 v156, v30, v17 :: v_dual_fmac_f32 v155, v29, v18
	v_dual_fmac_f32 v154, v28, v19 :: v_dual_fmac_f32 v143, v106, v25
	v_dual_fmac_f32 v152, v98, v21 :: v_dual_fmac_f32 v141, v35, v27
	v_dual_fmac_f32 v150, v100, v23 :: v_dual_fmac_f32 v139, v14, v17
	v_dual_fmac_f32 v148, v101, v10 :: v_dual_fmac_f32 v147, v102, v11
	v_dual_fmac_f32 v146, v103, v12 :: v_dual_fmac_f32 v145, v104, v13
	v_dual_fmac_f32 v144, v105, v24 :: v_dual_fmac_f32 v137, v108, v19
	v_dual_fmac_f32 v142, v107, v26 :: v_dual_fmac_f32 v135, v110, v21
	v_dual_fmac_f32 v140, v15, v16 :: v_dual_fmac_f32 v129, v6, v11
	v_dual_fmac_f32 v138, v37, v18 :: v_dual_fmac_f32 v125, v3, v24
	v_dual_fmac_f32 v136, v109, v20 :: v_dual_fmac_f32 v131, v7, v10
	v_dual_fmac_f32 v134, v9, v22 :: v_dual_fmac_f32 v133, v2, v25
	v_fmac_f32_e32 v132, v8, v23
	v_dual_fmac_f32 v128, v5, v12 :: v_dual_fmac_f32 v127, v0, v27
	v_fmac_f32_e32 v126, v4, v13
	v_fmac_f32_e32 v130, v1, v26
	.loc	1 953 19                        ; ragged.py:953:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	.loc	1 957 23 is_stmt 1              ; ragged.py:957:23
	s_and_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v1, 0
	s_add_i32 s37, s10, s23
	s_mov_b32 s38, s3
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v198, off offset:292
	scratch_store_b32 off, v197, off offset:288
	scratch_store_b32 off, v196, off offset:284
	scratch_store_b32 off, v195, off offset:280
	scratch_store_b32 off, v194, off offset:276
	scratch_store_b32 off, v193, off offset:272
	scratch_store_b32 off, v192, off offset:268
	scratch_store_b32 off, v191, off offset:264
	scratch_store_b32 off, v190, off offset:260
	scratch_store_b32 off, v189, off offset:256
	scratch_store_b32 off, v188, off offset:252
	scratch_store_b32 off, v187, off offset:248
	scratch_store_b32 off, v186, off offset:244
	scratch_store_b32 off, v72, off offset:240
	scratch_store_b32 off, v66, off offset:236
	scratch_store_b32 off, v183, off offset:232
	scratch_store_b32 off, v182, off offset:228
	scratch_store_b32 off, v179, off offset:224
	scratch_store_b32 off, v178, off offset:220
	scratch_store_b32 off, v177, off offset:216
	scratch_store_b32 off, v176, off offset:212
	scratch_store_b32 off, v175, off offset:208
	scratch_store_b32 off, v174, off offset:204
	scratch_store_b32 off, v170, off offset:200
	scratch_store_b32 off, v169, off offset:196
	scratch_store_b32 off, v164, off offset:192
	scratch_store_b32 off, v163, off offset:188
	scratch_store_b32 off, v162, off offset:184
	scratch_store_b32 off, v161, off offset:180
	scratch_store_b32 off, v160, off offset:176
	scratch_store_b32 off, v159, off offset:172
	scratch_store_b32 off, v158, off offset:168
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v157, off offset:164
	scratch_store_b32 off, v156, off offset:160
	scratch_store_b32 off, v155, off offset:156
	scratch_store_b32 off, v154, off offset:152
	scratch_store_b32 off, v153, off offset:148
	scratch_store_b32 off, v152, off offset:144
	scratch_store_b32 off, v151, off offset:140
	scratch_store_b32 off, v150, off offset:136
	scratch_store_b32 off, v148, off offset:132
	scratch_store_b32 off, v147, off offset:128
	scratch_store_b32 off, v146, off offset:124
	scratch_store_b32 off, v145, off offset:120
	scratch_store_b32 off, v144, off offset:116
	scratch_store_b32 off, v143, off offset:112
	scratch_store_b32 off, v142, off offset:108
	scratch_store_b32 off, v141, off offset:104
	scratch_store_b32 off, v140, off offset:100
	scratch_store_b32 off, v139, off offset:96
	scratch_store_b32 off, v138, off offset:92
	scratch_store_b32 off, v137, off offset:88
	scratch_store_b32 off, v136, off offset:84
	scratch_store_b32 off, v135, off offset:80
	scratch_store_b32 off, v134, off offset:76
	scratch_store_b32 off, v133, off offset:72
	scratch_store_b32 off, v132, off offset:68
	scratch_store_b32 off, v131, off offset:64
	scratch_store_b32 off, v130, off offset:60
	scratch_store_b32 off, v129, off offset:56
	scratch_store_b32 off, v128, off offset:52
	scratch_store_b32 off, v127, off offset:48
	scratch_store_b32 off, v126, off offset:44
	scratch_store_b32 off, v125, off offset:40
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
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
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 968 46 is_stmt 1              ; ragged.py:968:46
	scratch_store_b64 off, v[96:97], off    ; 8-byte Folded Spill
	s_add_i32 s39, s37, s38
	v_dual_mov_b32 v74, v216 :: v_dual_add_nc_u32 v97, s35, v173
	v_lshl_add_u32 v98, s35, 1, v173
	.loc	1 969 46                        ; ragged.py:969:46
	s_mul_i32 s41, s39, s35
	v_lshl_add_u32 v100, s35, 2, v173
	v_dual_mov_b32 v65, v212 :: v_dual_add_nc_u32 v0, s41, v173
	v_lshl_add_u32 v104, s35, 3, v173
	v_add_nc_u32_e32 v112, s22, v173
	v_lshl_add_u32 v129, s34, 2, v215
	v_lshl_add_u32 v130, s34, 3, v215
	v_lshl_add_u32 v167, s34, 4, v215
	.loc	1 968 46                        ; ragged.py:968:46
	s_mul_i32 s40, s39, s34
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v97, s41, v97
	v_add_nc_u32_e32 v98, s41, v98
	.loc	1 968 46                        ; ragged.py:968:46
	s_add_i32 s39, s40, s7
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v99, s41, v77
	v_add_nc_u32_e32 v100, s41, v100
	v_add_nc_u32_e32 v101, s41, v78
	v_add_nc_u32_e32 v102, s41, v79
	v_add_nc_u32_e32 v103, s41, v80
	v_add_nc_u32_e32 v125, s41, v212
	v_add_nc_u32_e32 v126, s41, v213
	v_add_nc_u32_e32 v127, s41, v216
	.loc	1 969 38 is_stmt 0              ; ragged.py:969:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v104, s41, v104
	v_add_nc_u32_e32 v105, s41, v81
	v_add_nc_u32_e32 v106, s41, v82
	v_add_nc_u32_e32 v107, s41, v83
	v_add_nc_u32_e32 v108, s41, v84
	v_add_nc_u32_e32 v109, s41, v85
	v_add_nc_u32_e32 v110, s41, v86
	v_add_nc_u32_e32 v111, s41, v87
	v_add_nc_u32_e32 v112, s41, v112
	v_add_nc_u32_e32 v113, s41, v88
	v_add_nc_u32_e32 v114, s41, v89
	v_add_nc_u32_e32 v115, s41, v90
	v_add_nc_u32_e32 v116, s41, v91
	v_add_nc_u32_e32 v117, s41, v92
	v_add_nc_u32_e32 v118, s41, v93
	v_add_nc_u32_e32 v119, s41, v94
	v_add_nc_u32_e32 v120, s41, v95
	v_add_nc_u32_e32 v121, s41, v96
	v_add_nc_u32_e32 v122, s41, v209
	v_add_nc_u32_e32 v123, s41, v210
	v_add_nc_u32_e32 v124, s41, v211
	v_add_nc_u32_e32 v128, s39, v215
	v_add_nc_u32_e32 v129, s39, v129
	v_add_nc_u32_e32 v130, s39, v130
	v_add_nc_u32_e32 v149, s39, v199
	v_add_nc_u32_e32 v167, s39, v167
	v_add_nc_u32_e32 v168, s39, v205
	v_add_nc_u32_e32 v169, s39, v206
	v_add_nc_u32_e32 v170, s39, v200
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v97, 0x80000000, v97, s0
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	v_cndmask_b32_e64 v126, 0x80000000, v126, s0
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	v_cndmask_b32_e64 v107, 0x80000000, v107, s0
	v_cndmask_b32_e64 v108, 0x80000000, v108, s0
	v_cndmask_b32_e64 v109, 0x80000000, v109, s0
	v_cndmask_b32_e64 v110, 0x80000000, v110, s0
	v_cndmask_b32_e64 v111, 0x80000000, v111, s0
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	v_cndmask_b32_e64 v114, 0x80000000, v114, s0
	v_cndmask_b32_e64 v115, 0x80000000, v115, s0
	v_cndmask_b32_e64 v116, 0x80000000, v116, s0
	v_cndmask_b32_e64 v117, 0x80000000, v117, s0
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	v_cndmask_b32_e64 v121, 0x80000000, v121, s0
	v_cndmask_b32_e64 v122, 0x80000000, v122, s0
	v_cndmask_b32_e64 v123, 0x80000000, v123, s0
	v_cndmask_b32_e64 v124, 0x80000000, v124, s0
	.loc	1 968 38 is_stmt 1              ; ragged.py:968:38
	v_cndmask_b32_e64 v128, 0x80000000, v128, s1
	v_cndmask_b32_e64 v129, 0x80000000, v129, s1
	v_cndmask_b32_e64 v130, 0x80000000, v130, s1
	v_cndmask_b32_e64 v149, 0x80000000, v149, s1
	v_cndmask_b32_e64 v167, 0x80000000, v167, s1
	v_cndmask_b32_e64 v168, 0x80000000, v168, s1
	v_cndmask_b32_e64 v169, 0x80000000, v169, s1
	v_cndmask_b32_e64 v170, 0x80000000, v170, s1
	.loc	1 969 38                        ; ragged.py:969:38
	s_clause 0x1f
	buffer_load_u8 v131, v0, s[8:11], 0 offen
	buffer_load_u8 v132, v97, s[8:11], 0 offen
	buffer_load_u8 v133, v98, s[8:11], 0 offen
	buffer_load_u8 v134, v99, s[8:11], 0 offen
	buffer_load_u8 v135, v100, s[8:11], 0 offen
	buffer_load_u8 v136, v101, s[8:11], 0 offen
	buffer_load_u8 v137, v102, s[8:11], 0 offen
	buffer_load_u8 v138, v103, s[8:11], 0 offen
	buffer_load_u8 v139, v104, s[8:11], 0 offen
	buffer_load_u8 v140, v105, s[8:11], 0 offen
	buffer_load_u8 v141, v106, s[8:11], 0 offen
	buffer_load_u8 v142, v107, s[8:11], 0 offen
	buffer_load_u8 v143, v108, s[8:11], 0 offen
	buffer_load_u8 v144, v109, s[8:11], 0 offen
	buffer_load_u8 v145, v110, s[8:11], 0 offen
	buffer_load_u8 v146, v111, s[8:11], 0 offen
	buffer_load_u8 v147, v112, s[8:11], 0 offen
	buffer_load_u8 v148, v113, s[8:11], 0 offen
	buffer_load_u8 v150, v114, s[8:11], 0 offen
	buffer_load_u8 v151, v115, s[8:11], 0 offen
	buffer_load_u8 v152, v116, s[8:11], 0 offen
	buffer_load_u8 v153, v117, s[8:11], 0 offen
	buffer_load_u8 v154, v118, s[8:11], 0 offen
	buffer_load_u8 v155, v119, s[8:11], 0 offen
	buffer_load_u8 v156, v120, s[8:11], 0 offen
	buffer_load_u8 v157, v121, s[8:11], 0 offen
	buffer_load_u8 v158, v122, s[8:11], 0 offen
	buffer_load_u8 v159, v123, s[8:11], 0 offen
	buffer_load_u8 v160, v124, s[8:11], 0 offen
	buffer_load_u8 v125, v125, s[8:11], 0 offen
	buffer_load_u8 v126, v126, s[8:11], 0 offen
	buffer_load_u8 v127, v127, s[8:11], 0 offen
	.loc	1 968 38                        ; ragged.py:968:38
	s_clause 0x7
	buffer_load_u8 v0, v128, s[24:27], 0 offen
	buffer_load_u8 v97, v129, s[24:27], 0 offen
	buffer_load_u8 v98, v130, s[24:27], 0 offen
	buffer_load_u8 v99, v167, s[24:27], 0 offen
	buffer_load_u8 v100, v168, s[24:27], 0 offen
	buffer_load_u8 v101, v169, s[24:27], 0 offen
	buffer_load_u8 v102, v170, s[24:27], 0 offen
	buffer_load_u8 v103, v149, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 987 21                        ; ragged.py:987:21
	s_add_i32 s10, s38, 32
	.loc	1 957 23                        ; ragged.py:957:23
	s_cmp_lt_i32 s38, 0
	s_mov_b32 s38, s10
	.loc	1 968 38                        ; ragged.py:968:38
	s_waitcnt vmcnt(7)
	ds_store_b8 v171, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v171, v97 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v171, v98 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v171, v99 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v171, v100 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v73, v103
	ds_store_b8 v171, v101 offset:1536
	ds_store_b8 v76, v102
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 31                        ; ragged.py:977:31
	ds_load_u8 v0, v165 offset:320
	ds_load_u8 v97, v165 offset:256
	ds_load_u8 v129, v165 offset:336
	ds_load_u8 v130, v165 offset:272
	ds_load_u8 v123, v165 offset:352
	ds_load_u8 v124, v165 offset:288
	ds_load_u8 v114, v165 offset:368
	ds_load_u8 v115, v165 offset:304
	ds_load_u8 v214, v165 offset:1232
	ds_load_u8 v173, v165 offset:1168
	ds_load_u8 v72, v165 offset:1248
	ds_load_u8 v71, v165 offset:1184
	ds_load_u8 v212, v165 offset:1264
	ds_load_u8 v184, v165 offset:1200
	ds_load_u8 v244, v165 offset:1152
	ds_load_u8 v245, v165 offset:1088
	ds_load_u8 v220, v165 offset:1104
	ds_load_u8 v221, v165 offset:1040
	ds_load_u8 v218, v165 offset:1120
	ds_load_u8 v219, v165 offset:1056
	ds_load_u8 v216, v165 offset:1136
	ds_load_u8 v66, v165 offset:1072
	ds_load_u8 v248, v165 offset:1472
	ds_load_u8 v208, v165 offset:1536
	ds_load_u8 v228, v165 offset:1488
	ds_load_u8 v230, v165 offset:1424
	ds_load_u8 v225, v165 offset:1504
	ds_load_u8 v227, v165 offset:1440
	ds_load_u8 v222, v165 offset:1520
	ds_load_u8 v223, v165 offset:1456
	ds_load_u8 v253, v165 offset:1408
	ds_load_u8 v254, v165 offset:1344
	ds_load_u8 v237, v165 offset:1360
	ds_load_u8 v238, v165 offset:1296
	ds_load_u8 v234, v165 offset:1376
	ds_load_u8 v235, v165 offset:1312
	ds_load_u8 v231, v165 offset:1392
	ds_load_u8 v232, v165 offset:1328
	ds_load_u8 v217, v165 offset:1984
	ds_load_u8 v188, v165 offset:2000
	ds_load_u8 v190, v165 offset:1936
	ds_load_u8 v186, v165 offset:2016
	ds_load_u8 v187, v165 offset:1952
	ds_load_u8 v105, v203
	ds_load_u8 v185, v69
	ds_load_u8 v75, v165 offset:1968
	ds_load_u8 v224, v165 offset:1920
	ds_load_u8 v226, v165 offset:1856
	ds_load_u8 v195, v165 offset:1872
	ds_load_u8 v197, v165 offset:1808
	ds_load_u8 v192, v165 offset:1888
	ds_load_u8 v193, v165 offset:1824
	ds_load_u8 v189, v165 offset:1904
	ds_load_u8 v191, v165 offset:1840
	ds_load_u8 v229, v165 offset:1728
	ds_load_u8 v233, v165 offset:1792
	ds_load_u8 v180, v165 offset:1744
	ds_load_u8 v181, v165 offset:1680
	ds_load_u8 v198, v165 offset:1760
	ds_load_u8 v201, v165 offset:1696
	ds_load_u8 v194, v165 offset:1776
	ds_load_u8 v196, v165 offset:1712
	ds_load_u8 v236, v165 offset:1664
	ds_load_u8 v239, v165 offset:1600
	ds_load_u8 v96, v165 offset:1616
	ds_load_u8 v172, v165 offset:1552
	ds_load_u8 v204, v165 offset:1632
	ds_load_u8 v207, v165 offset:1568
	ds_load_u8 v202, v165 offset:1648
	ds_load_u8 v70, v165 offset:1584
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v0, v97, v0, 0xc0c0004
	ds_load_u8 v97, v165 offset:448
	ds_load_u8 v98, v165 offset:384
	ds_load_u8 v161, v165 offset:464
	ds_load_u8 v162, v165 offset:400
	ds_load_u8 v163, v165 offset:480
	ds_load_u8 v164, v165 offset:416
	ds_load_u8 v116, v165 offset:496
	ds_load_u8 v117, v165 offset:432
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v165 offset:64
	ds_load_u8 v99, v165
	ds_load_u8 v67, v165 offset:80
	ds_load_u8 v68, v165 offset:96
	ds_load_u8 v118, v165 offset:112
	ds_load_u8 v174, v165 offset:16
	ds_load_u8 v175, v165 offset:32
	ds_load_u8 v119, v165 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v130, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v130, 16, v129
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v99, v99, v98, 0xc0c0004
	ds_load_u8 v98, v165 offset:192
	ds_load_u8 v100, v165 offset:128
	ds_load_u8 v176, v165 offset:208
	ds_load_u8 v177, v165 offset:144
	ds_load_u8 v178, v165 offset:224
	ds_load_u8 v179, v165 offset:160
	ds_load_u8 v121, v165 offset:240
	ds_load_u8 v122, v165 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v67, v174, v67, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v68, v175, v68, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v100, v100, v98, 0xc0c0004
	v_lshl_or_b32 v98, v97, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v97, v100, 16, v99
	ds_load_u8 v106, v165 offset:960
	ds_load_u8 v107, v165 offset:896
	ds_load_u8 v240, v165 offset:1024
	ds_load_u8 v169, v165 offset:976
	ds_load_u8 v170, v165 offset:912
	ds_load_u8 v250, v165 offset:992
	ds_load_u8 v252, v165 offset:928
	ds_load_u8 v242, v165 offset:944
	ds_load_u8 v108, v165 offset:832
	ds_load_u8 v109, v165 offset:768
	ds_load_u8 v99, v165 offset:848
	ds_load_u8 v100, v165 offset:784
	ds_load_u8 v255, v165 offset:864
	ds_load_u8 v120, v165 offset:800
	ds_load_u8 v246, v165 offset:880
	ds_load_u8 v247, v165 offset:816
	ds_load_u8 v110, v165 offset:704
	ds_load_u8 v111, v165 offset:640
	ds_load_u8 v101, v165 offset:720
	ds_load_u8 v102, v165 offset:656
	ds_load_u8 v0, v165 offset:736
	ds_load_u8 v168, v165 offset:672
	ds_load_u8 v249, v165 offset:752
	ds_load_u8 v251, v165 offset:688
	ds_load_u8 v112, v165 offset:576
	ds_load_u8 v113, v165 offset:512
	ds_load_u8 v103, v165 offset:592
	ds_load_u8 v104, v165 offset:528
	ds_load_u8 v182, v165 offset:608
	ds_load_u8 v183, v165 offset:544
	ds_load_u8 v149, v165 offset:624
	ds_load_u8 v167, v165 offset:560
	ds_load_u8 v241, v165 offset:1216
	ds_load_u8 v243, v165 offset:1280
	.loc	1 969 38                        ; ragged.py:969:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v171, v131
	ds_store_b8 v171, v132 offset:256
	ds_store_b8 v171, v133 offset:512
	ds_store_b8 v171, v135 offset:1024
	ds_store_b8 v171, v136 offset:1280
	ds_store_b8 v171, v137 offset:1536
	ds_store_b8 v171, v139 offset:2048
	ds_store_b8 v171, v140 offset:2304
	ds_store_b8 v171, v141 offset:2560
	ds_store_b8 v171, v143 offset:3072
	ds_store_b8 v171, v144 offset:3328
	ds_store_b8 v171, v145 offset:3584
	ds_store_b8 v171, v147 offset:4096
	ds_store_b8 v171, v148 offset:4352
	ds_store_b8 v171, v150 offset:4608
	ds_store_b8 v171, v152 offset:5120
	ds_store_b8 v171, v153 offset:5376
	ds_store_b8 v171, v154 offset:5632
	ds_store_b8 v171, v156 offset:6144
	ds_store_b8 v171, v157 offset:6400
	ds_store_b8 v171, v158 offset:6656
	ds_store_b8 v171, v160 offset:7168
	ds_store_b8 v171, v125 offset:7424
	ds_store_b8 v171, v126 offset:7680
	ds_store_b8 v73, v134
	ds_store_b8 v76, v138
	scratch_load_b32 v125, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 977 31                        ; ragged.py:977:31
	v_perm_b32 v101, v102, v101, 0xc0c0004
	v_perm_b32 v0, v168, v0, 0xc0c0004
	.loc	1 969 38                        ; ragged.py:969:38
	s_waitcnt vmcnt(0)
	ds_store_b8 v125, v142
	scratch_load_b32 v125, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v125, v146
	scratch_load_b32 v125, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v125, v151
	scratch_load_b32 v125, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v125, v155
	scratch_load_b32 v125, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v125, v159
	scratch_load_b32 v125, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v125, v127
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 31                        ; ragged.py:977:31
	ds_load_u8 v125, v166 offset:1280
	ds_load_u8 v126, v166 offset:1024
	ds_load_u8 v127, v166 offset:1920
	ds_load_u8 v128, v166 offset:1664
	ds_load_u8 v131, v166 offset:1408
	ds_load_u8 v132, v166 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v166 offset:1792
	ds_load_u8 v133, v166 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v128, v127, 16, v131
	v_perm_b32 v131, v177, v176, 0xc0c0004
	v_lshl_or_b32 v129, v131, 16, v67
	v_perm_b32 v67, v124, v123, 0xc0c0004
	v_perm_b32 v123, v164, v163, 0xc0c0004
	v_perm_b32 v131, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v133, v126, 0xc0c0004
	ds_load_u8 v133, v166 offset:256
	ds_load_u8 v134, v166
	ds_load_u8 v135, v166 offset:896
	ds_load_u8 v136, v166 offset:640
	ds_load_u8 v137, v166 offset:384
	ds_load_u8 v138, v166 offset:128
	v_lshl_or_b32 v124, v123, 16, v67
	v_lshl_or_b32 v123, v131, 16, v68
	v_perm_b32 v67, v115, v114, 0xc0c0004
	v_lshl_or_b32 v126, v126, 16, v125
	v_perm_b32 v68, v117, v116, 0xc0c0004
	v_perm_b32 v114, v119, v118, 0xc0c0004
	v_perm_b32 v116, v122, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v115, v68, 16, v67
	v_perm_b32 v67, v109, v108, 0xc0c0004
	v_perm_b32 v68, v107, v106, 0xc0c0004
	v_perm_b32 v106, v111, v110, 0xc0c0004
	v_lshl_or_b32 v114, v116, 16, v114
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	ds_load_u8 v134, v166 offset:768
	ds_load_u8 v139, v166 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v132, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v139, v134, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v125, v134, 16, v133
	v_perm_b32 v133, v136, v135, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[125:126], v[97:98], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v127, v133, 16, v132
	v_wmma_i32_16x16x16_iu4 v[49:56], v[125:126], v[114:115], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[129:130], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[97:98], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v68, 16, v67
	ds_load_u8 v67, v166 offset:3328
	ds_load_u8 v68, v166 offset:3072
	ds_load_u8 v108, v166 offset:3968
	ds_load_u8 v109, v166 offset:3712
	ds_load_u8 v110, v166 offset:3456
	ds_load_u8 v111, v166 offset:3200
	v_perm_b32 v97, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[127:128], v[114:115], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[127:128], v[123:124], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[129:130], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v97, v106, 16, v97
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v166 offset:3840
	ds_load_u8 v106, v166 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v106, v68, 0xc0c0004
	ds_load_u8 v106, v166 offset:2304
	ds_load_u8 v107, v166 offset:2048
	ds_load_u8 v112, v166 offset:2944
	ds_load_u8 v113, v166 offset:2688
	ds_load_u8 v114, v166 offset:2432
	ds_load_u8 v115, v166 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v166 offset:2816
	ds_load_u8 v116, v166 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v107, 0xc0c0004
	v_lshl_or_b32 v107, v68, 16, v67
	v_perm_b32 v67, v111, v110, 0xc0c0004
	v_perm_b32 v68, v109, v108, 0xc0c0004
	v_perm_b32 v108, v115, v114, 0xc0c0004
	v_perm_b32 v110, v113, v112, 0xc0c0004
	v_lshl_or_b32 v106, v116, 16, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v109, v68, 16, v67
	v_perm_b32 v67, v100, v99, 0xc0c0004
	v_perm_b32 v68, v170, v169, 0xc0c0004
	v_perm_b32 v99, v104, v103, 0xc0c0004
	v_lshl_or_b32 v108, v110, 16, v108
	v_perm_b32 v104, v242, v105, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[106:107], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v68, 16, v67
	v_lshl_or_b32 v99, v101, 16, v99
	v_perm_b32 v67, v120, v255, 0xc0c0004
	v_perm_b32 v68, v252, v250, 0xc0c0004
	v_perm_b32 v101, v183, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[108:109], v[97:98], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v97, v244, v241, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[106:107], v[99:100], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v68, 16, v67
	v_lshl_or_b32 v101, v0, 16, v101
	v_perm_b32 v0, v167, v149, 0xc0c0004
	v_perm_b32 v67, v251, v249, 0xc0c0004
	v_perm_b32 v68, v247, v246, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[108:109], v[99:100], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[106:107], v[101:102], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[108:109], v[101:102], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v67, 16, v0
	v_lshl_or_b32 v104, v104, 16, v68
	v_perm_b32 v0, v243, v254, 0xc0c0004
	v_perm_b32 v67, v253, v248, 0xc0c0004
	v_perm_b32 v68, v240, v245, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[106:107], v[103:104], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[108:109], v[103:104], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v67, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v97, v97, 16, v68
	ds_load_u8 v0, v166 offset:5376
	ds_load_u8 v67, v166 offset:5120
	ds_load_u8 v68, v166 offset:6016
	ds_load_u8 v101, v166 offset:5760
	ds_load_u8 v102, v166 offset:5504
	ds_load_u8 v103, v166 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v67, v0, 0xc0c0004
	ds_load_u8 v67, v166 offset:5888
	ds_load_u8 v99, v166 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v99, v67, 0xc0c0004
	ds_load_u8 v99, v166 offset:4352
	ds_load_u8 v100, v166 offset:4096
	ds_load_u8 v104, v166 offset:4992
	ds_load_u8 v105, v166 offset:4736
	ds_load_u8 v106, v166 offset:4480
	ds_load_u8 v107, v166 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v166 offset:4864
	ds_load_u8 v108, v166 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v108, v100, 0xc0c0004
	v_lshl_or_b32 v100, v67, 16, v0
	v_perm_b32 v67, v101, v68, 0xc0c0004
	v_perm_b32 v68, v107, v106, 0xc0c0004
	v_perm_b32 v101, v105, v104, 0xc0c0004
	v_perm_b32 v0, v103, v102, 0xc0c0004
	v_perm_b32 v103, v173, v214, 0xc0c0004
	v_perm_b32 v105, v71, v72, 0xc0c0004
	v_perm_b32 v107, v184, v212, 0xc0c0004
	v_lshl_or_b32 v101, v101, 16, v68
	v_perm_b32 v68, v221, v220, 0xc0c0004
	v_mov_b32_e32 v212, v65
	scratch_load_b64 v[173:174], off, off offset:32 ; 8-byte Folded Reload
	v_lshl_or_b32 v102, v67, 16, v0
	v_perm_b32 v0, v238, v237, 0xc0c0004
	v_lshl_or_b32 v103, v103, 16, v68
	v_perm_b32 v68, v219, v218, 0xc0c0004
	v_perm_b32 v67, v230, v228, 0xc0c0004
	v_lshl_or_b32 v99, v108, 16, v99
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[97:98], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v105, v105, 16, v68
	v_perm_b32 v68, v66, v216, 0xc0c0004
	scratch_load_b64 v[65:66], off, off     ; 8-byte Folded Reload
	v_lshl_or_b32 v104, v67, 16, v0
	v_perm_b32 v0, v235, v234, 0xc0c0004
	v_perm_b32 v67, v227, v225, 0xc0c0004
	v_lshl_or_b32 v107, v107, 16, v68
	v_wmma_i32_16x16x16_iu4 v[1:8], v[99:100], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v68, v208, v239, 0xc0c0004
	v_perm_b32 v97, v236, v229, 0xc0c0004
	v_lshl_or_b32 v106, v67, 16, v0
	v_perm_b32 v0, v232, v231, 0xc0c0004
	v_perm_b32 v67, v223, v222, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[103:104], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[103:104], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[101:102], v[105:106], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v97, 16, v68
	v_lshl_or_b32 v108, v67, 16, v0
	v_perm_b32 v0, v233, v226, 0xc0c0004
	v_perm_b32 v67, v224, v217, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[99:100], v[105:106], v[33:40] neg_lo:[1,1,0]
	v_mov_b32_e32 v216, v74
	v_wmma_i32_16x16x16_iu4 v[57:64], v[101:102], v[107:108], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[99:100], v[107:108], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v67, 16, v0
	ds_load_u8 v0, v166 offset:7424
	ds_load_u8 v67, v166 offset:7168
	ds_load_u8 v68, v166 offset:8064
	ds_load_u8 v101, v166 offset:7808
	ds_load_u8 v102, v166 offset:7552
	ds_load_u8 v103, v166 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v67, v0, 0xc0c0004
	ds_load_u8 v67, v166 offset:7936
	ds_load_u8 v99, v166 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v99, v67, 0xc0c0004
	ds_load_u8 v99, v166 offset:6400
	ds_load_u8 v100, v166 offset:6144
	ds_load_u8 v104, v166 offset:7040
	ds_load_u8 v105, v166 offset:6784
	ds_load_u8 v106, v166 offset:6528
	ds_load_u8 v107, v166 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v166 offset:6912
	ds_load_u8 v108, v166 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v108, v100, 0xc0c0004
	v_lshl_or_b32 v100, v67, 16, v0
	v_perm_b32 v0, v103, v102, 0xc0c0004
	v_perm_b32 v67, v101, v68, 0xc0c0004
	v_perm_b32 v68, v107, v106, 0xc0c0004
	v_perm_b32 v101, v105, v104, 0xc0c0004
	v_perm_b32 v103, v181, v180, 0xc0c0004
	v_perm_b32 v105, v201, v198, 0xc0c0004
	v_lshl_or_b32 v102, v67, 16, v0
	v_perm_b32 v0, v197, v195, 0xc0c0004
	v_lshl_or_b32 v101, v101, 16, v68
	v_perm_b32 v67, v190, v188, 0xc0c0004
	v_perm_b32 v68, v172, v96, 0xc0c0004
	v_lshl_or_b32 v99, v108, 16, v99
	v_perm_b32 v108, v75, v185, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[97:98], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v67, 16, v0
	v_lshl_or_b32 v103, v103, 16, v68
	v_perm_b32 v0, v193, v192, 0xc0c0004
	v_perm_b32 v67, v187, v186, 0xc0c0004
	v_perm_b32 v68, v207, v204, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[99:100], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[103:104], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[103:104], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v67, 16, v0
	v_lshl_or_b32 v105, v105, 16, v68
	v_perm_b32 v0, v70, v202, 0xc0c0004
	v_perm_b32 v67, v196, v194, 0xc0c0004
	v_perm_b32 v68, v191, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[99:100], v[105:106], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[101:102], v[105:106], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v67, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v108, v108, 16, v68
	v_wmma_i32_16x16x16_iu4 v[49:56], v[99:100], v[107:108], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[101:102], v[107:108], v[57:64] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v96, v65
	.loc	1 957 23                        ; ragged.py:957:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v125, off, off offset:40
	scratch_load_b32 v126, off, off offset:44
	scratch_load_b32 v127, off, off offset:48
	scratch_load_b32 v128, off, off offset:52
	scratch_load_b32 v129, off, off offset:56
	scratch_load_b32 v130, off, off offset:60
	scratch_load_b32 v131, off, off offset:64
	scratch_load_b32 v132, off, off offset:68
	scratch_load_b32 v133, off, off offset:72
	scratch_load_b32 v134, off, off offset:76
	scratch_load_b32 v135, off, off offset:80
	scratch_load_b32 v136, off, off offset:84
	scratch_load_b32 v137, off, off offset:88
	scratch_load_b32 v138, off, off offset:92
	scratch_load_b32 v139, off, off offset:96
	scratch_load_b32 v140, off, off offset:100
	scratch_load_b32 v141, off, off offset:104
	scratch_load_b32 v142, off, off offset:108
	scratch_load_b32 v143, off, off offset:112
	scratch_load_b32 v144, off, off offset:116
	scratch_load_b32 v145, off, off offset:120
	scratch_load_b32 v146, off, off offset:124
	scratch_load_b32 v147, off, off offset:128
	scratch_load_b32 v148, off, off offset:132
	scratch_load_b32 v150, off, off offset:136
	scratch_load_b32 v151, off, off offset:140
	scratch_load_b32 v152, off, off offset:144
	scratch_load_b32 v153, off, off offset:148
	scratch_load_b32 v154, off, off offset:152
	scratch_load_b32 v155, off, off offset:156
	scratch_load_b32 v156, off, off offset:160
	scratch_load_b32 v157, off, off offset:164
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v158, off, off offset:168
	scratch_load_b32 v159, off, off offset:172
	scratch_load_b32 v160, off, off offset:176
	scratch_load_b32 v161, off, off offset:180
	scratch_load_b32 v162, off, off offset:184
	scratch_load_b32 v163, off, off offset:188
	scratch_load_b32 v164, off, off offset:192
	scratch_load_b32 v169, off, off offset:196
	scratch_load_b32 v170, off, off offset:200
	scratch_load_b32 v174, off, off offset:204
	scratch_load_b32 v175, off, off offset:208
	scratch_load_b32 v176, off, off offset:212
	scratch_load_b32 v177, off, off offset:216
	scratch_load_b32 v178, off, off offset:220
	scratch_load_b32 v179, off, off offset:224
	scratch_load_b32 v182, off, off offset:228
	scratch_load_b32 v183, off, off offset:232
	scratch_load_b32 v66, off, off offset:236
	scratch_load_b32 v72, off, off offset:240
	scratch_load_b32 v186, off, off offset:244
	scratch_load_b32 v187, off, off offset:248
	scratch_load_b32 v188, off, off offset:252
	scratch_load_b32 v189, off, off offset:256
	scratch_load_b32 v190, off, off offset:260
	scratch_load_b32 v191, off, off offset:264
	scratch_load_b32 v192, off, off offset:268
	scratch_load_b32 v193, off, off offset:272
	scratch_load_b32 v194, off, off offset:276
	scratch_load_b32 v195, off, off offset:280
	scratch_load_b32 v196, off, off offset:284
	scratch_load_b32 v197, off, off offset:288
	scratch_load_b32 v198, off, off offset:292
	s_clause 0xb                            ; 48-byte Folded Reload
	scratch_load_b32 v180, off, off offset:296
	scratch_load_b32 v181, off, off offset:300
	scratch_load_b32 v201, off, off offset:304
	scratch_load_b32 v202, off, off offset:308
	scratch_load_b32 v75, off, off offset:8
	scratch_load_b32 v71, off, off offset:12
	scratch_load_b32 v65, off, off offset:16
	scratch_load_b32 v74, off, off offset:20
	scratch_load_b32 v172, off, off offset:24
	scratch_load_b32 v208, off, off offset:28
	scratch_load_b32 v70, off, off offset:312
	scratch_load_b32 v204, off, off offset:316
	.loc	1 988 27 is_stmt 1              ; ragged.py:988:27
	v_cvt_f32_i32_e32 v168, v1
	v_cvt_f32_i32_e32 v167, v2
	v_cvt_f32_i32_e32 v149, v3
	v_cvt_f32_i32_e32 v124, v4
	v_cvt_f32_i32_e32 v123, v5
	v_cvt_f32_i32_e32 v122, v6
	v_cvt_f32_i32_e32 v121, v7
	v_cvt_f32_i32_e32 v120, v8
	v_cvt_f32_i32_e32 v119, v9
	v_cvt_f32_i32_e32 v118, v10
	v_cvt_f32_i32_e32 v117, v11
	v_cvt_f32_i32_e32 v116, v12
	v_cvt_f32_i32_e32 v115, v13
	v_cvt_f32_i32_e32 v114, v14
	v_cvt_f32_i32_e32 v113, v15
	v_cvt_f32_i32_e32 v112, v16
	v_cvt_f32_i32_e32 v111, v17
	v_cvt_f32_i32_e32 v110, v18
	v_cvt_f32_i32_e32 v109, v19
	v_cvt_f32_i32_e32 v108, v20
	v_cvt_f32_i32_e32 v107, v21
	v_cvt_f32_i32_e32 v106, v22
	v_cvt_f32_i32_e32 v105, v23
	v_cvt_f32_i32_e32 v104, v24
	v_cvt_f32_i32_e32 v103, v25
	v_cvt_f32_i32_e32 v102, v26
	v_cvt_f32_i32_e32 v101, v27
	v_cvt_f32_i32_e32 v100, v28
	v_cvt_f32_i32_e32 v99, v29
	v_cvt_f32_i32_e32 v98, v30
	v_cvt_f32_i32_e32 v97, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v31, v33
	v_cvt_f32_i32_e32 v30, v34
	v_cvt_f32_i32_e32 v29, v35
	v_cvt_f32_i32_e32 v28, v36
	v_cvt_f32_i32_e32 v27, v37
	v_cvt_f32_i32_e32 v26, v38
	v_cvt_f32_i32_e32 v25, v39
	v_cvt_f32_i32_e32 v24, v40
	v_cvt_f32_i32_e32 v23, v41
	v_cvt_f32_i32_e32 v22, v42
	v_cvt_f32_i32_e32 v21, v43
	v_cvt_f32_i32_e32 v20, v44
	v_cvt_f32_i32_e32 v19, v45
	v_cvt_f32_i32_e32 v18, v46
	v_cvt_f32_i32_e32 v17, v47
	v_cvt_f32_i32_e32 v16, v48
	v_cvt_f32_i32_e32 v15, v49
	v_cvt_f32_i32_e32 v14, v50
	v_cvt_f32_i32_e32 v13, v51
	v_cvt_f32_i32_e32 v12, v52
	v_cvt_f32_i32_e32 v11, v53
	v_cvt_f32_i32_e32 v10, v54
	v_cvt_f32_i32_e32 v9, v55
	v_cvt_f32_i32_e32 v8, v56
	v_cvt_f32_i32_e32 v7, v57
	v_cvt_f32_i32_e32 v6, v58
	v_cvt_f32_i32_e32 v5, v59
	v_cvt_f32_i32_e32 v4, v60
	v_cvt_f32_i32_e32 v3, v61
	v_cvt_f32_i32_e32 v2, v62
	v_cvt_f32_i32_e32 v1, v63
	v_cvt_f32_i32_e32 v0, v64
	s_branch .LBB0_5
.LBB0_10:                               ; %Flow382
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:320
	scratch_load_b32 v12, off, off offset:324
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v19, 15, v0
.LBB0_11:                               ; %._crit_edge16
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_mul_i32 s3, s16, s35
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	s_waitcnt vmcnt(0)
	v_and_or_b32 v3, v0, 1, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v11, s18, v7
	v_or_b32_e32 v12, s18, v8
	v_or_b32_e32 v2, s18, v6
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v15, 12, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s18, v4
	v_or_b32_e32 v1, s18, v5
	v_or_b32_e32 v13, s18, v9
	v_or_b32_e32 v14, s18, v10
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s6, s35, v11
	v_cmp_gt_i32_e64 s7, s35, v12
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s1, s35, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v2, s18, v15
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	v_cmp_gt_i32_e64 s0, s35, v1
	v_cmp_gt_i32_e64 s8, s35, v13
	v_cmp_gt_i32_e64 s9, s35, v14
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s18, v11
	v_or_b32_e32 v1, s18, v12
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v14, 8, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s35, v2
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mul_lo_u32 v2, s35, v19
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s35, v0
	v_cmp_gt_i32_e64 s11, s35, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s18, v13
	v_or_b32_e32 v1, s18, v14
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v21, s18, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s35, v0
	v_cmp_gt_i32_e64 s14, s35, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s18, v16
	v_or_b32_e32 v20, s18, v18
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add3_u32 v0, s3, s18, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v19, s18, v17
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s18, s35, v21
	v_cmp_gt_i32_e64 s15, s35, v1
	v_cmp_gt_i32_e64 s17, s35, v20
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s16, s35, v19
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s17
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add_nc_u32_e32 v19, s22, v0
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v23, 0x80000000, v2, s3
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s5, s16
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mad_u64_u32 v[1:2], null, s35, 48, v[0:1]
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	s_mov_b32 s22, 0x7ffffffe
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v198, v22, s[20:23], 0 offen
	buffer_store_b32 v197, v23, s[20:23], 0 offen
	buffer_store_b32 v196, v21, s[20:23], 0 offen
	v_add_lshl_u32 v21, v0, v14, 2
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s5, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v22, v0, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v0, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v195, v2, s[20:23], 0 offen
	buffer_store_b32 v194, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v11, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v193, v22, s[20:23], 0 offen
	buffer_store_b32 v192, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v10, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v0, v9, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v191, v2, s[20:23], 0 offen
	buffer_store_b32 v190, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v0, v8, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v7, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v189, v22, s[20:23], 0 offen
	buffer_store_b32 v188, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v6, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v0, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s1
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_lshl_add_u32 v20, s35, 5, v0
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_add_lshl_u32 v0, v0, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s5, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v187, v2, s[20:23], 0 offen
	buffer_store_b32 v186, v21, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v3, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v72, v22, s[20:23], 0 offen
	buffer_store_b32 v66, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v183, v0, s[20:23], 0 offen
	buffer_store_b32 v182, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v19, v14, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v179, v21, s[20:23], 0 offen
	buffer_store_b32 v178, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v15, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v177, v0, s[20:23], 0 offen
	buffer_store_b32 v176, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v175, v21, s[20:23], 0 offen
	buffer_store_b32 v174, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v170, v0, s[20:23], 0 offen
	buffer_store_b32 v169, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v164, v21, s[20:23], 0 offen
	buffer_store_b32 v163, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v5, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v162, v0, s[20:23], 0 offen
	buffer_store_b32 v161, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v3, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v160, v21, s[20:23], 0 offen
	buffer_store_b32 v159, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v158, v0, s[20:23], 0 offen
	buffer_store_b32 v157, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v156, v19, s[20:23], 0 offen
	buffer_store_b32 v155, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v15, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v154, v0, s[20:23], 0 offen
	buffer_store_b32 v153, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v152, v19, s[20:23], 0 offen
	buffer_store_b32 v151, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v150, v0, s[20:23], 0 offen
	buffer_store_b32 v148, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v147, v19, s[20:23], 0 offen
	buffer_store_b32 v146, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v145, v0, s[20:23], 0 offen
	buffer_store_b32 v144, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v143, v19, s[20:23], 0 offen
	buffer_store_b32 v142, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v141, v0, s[20:23], 0 offen
	buffer_store_b32 v140, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v14, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v139, v3, s[20:23], 0 offen
	buffer_store_b32 v138, v17, s[20:23], 0 offen
	v_add_lshl_u32 v3, v1, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v13, v1, v15, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v137, v0, s[20:23], 0 offen
	buffer_store_b32 v136, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v0, v1, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_add_lshl_u32 v2, v1, v11, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v135, v3, s[20:23], 0 offen
	buffer_store_b32 v134, v13, s[20:23], 0 offen
	v_add_lshl_u32 v3, v1, v10, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v9, v1, v9, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v132, v0, s[20:23], 0 offen
	buffer_store_b32 v131, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v129, v3, s[20:23], 0 offen
	buffer_store_b32 v128, v9, s[20:23], 0 offen
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v1, v6, 2
	v_add_lshl_u32 v5, v1, v5, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v1, v4, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s2, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, s2, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b32 v126, v0, s[20:23], 0 offen
	buffer_store_b32 v125, v2, s[20:23], 0 offen
	buffer_store_b32 v133, v3, s[20:23], 0 offen
	buffer_store_b32 v130, v4, s[20:23], 0 offen
	buffer_store_b32 v127, v1, s[20:23], 0 offen
	.loc	1 856 5                         ; ragged.py:856:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 332
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
		.amdhsa_next_free_sgpr 42
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 332
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12196
; TotalNumSgprs: 44
; NumVgprs: 256
; ScratchSize: 332
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 44
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	880                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	881                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
      - .offset:         60
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 332
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 82
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
