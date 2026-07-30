	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 856 0                         ; ragged.py:856:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[42:43], s[0:1], 0x30
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
	s_add_i32 s4, s42, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:881:21 ]
	s_add_i32 s5, s43, 0xff
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
	s_cselect_b32 s10, s12, s10
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s10, 1
	s_cmp_ge_u32 s7, s9
	s_cselect_b32 s7, s12, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s11
	s_sub_i32 s10, s7, s11
	.loc	1 892 19                        ; ragged.py:892:19
	s_ashr_i32 s7, s6, 31
	.loc	1 886 24                        ; ragged.py:886:24
	s_mul_i32 s11, s10, s8
	.loc	1 892 19                        ; ragged.py:892:19
	s_lshl_b64 s[8:9], s[6:7], 2
	.loc	1 886 17                        ; ragged.py:886:17
	s_sub_i32 s7, s2, s11
	.loc	1 888 18                        ; ragged.py:888:18
	s_lshl_b32 s41, s10, 6
	.loc	1 892 19                        ; ragged.py:892:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v1, s41, v19
	.loc	1 892 19                        ; ragged.py:892:19
	s_load_b32 s4, s[4:5], 0x0
	s_mov_b32 s8, 0
	.loc	1 991 37                        ; ragged.py:991:37
	s_mul_i32 s2, s6, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s26, s42, v1
	v_cmp_gt_i32_e64 s19, s42, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s25, s42, v3
	v_cmp_gt_i32_e64 s24, s42, v4
	.loc	1 893 27                        ; ragged.py:893:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_cmp_gt_i32 s5, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge16_crit_edge
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_add_i32 s16, s41, s2
	s_lshl_b32 s39, s43, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s8, -1
                                        ; implicit-def: $sgpr16
                                        ; implicit-def: $sgpr39
.LBB0_3:                                ; %Flow383
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v12, 0x70, v5
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v66, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_lshl_b32 s15, s7, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.preheader.lr.ph
	.loc	1 893 26 is_stmt 1              ; ragged.py:893:26
	s_lshr_b32 s7, s5, 31
	s_load_b64 s[8:9], s[0:1], 0x38
	s_add_i32 s5, s5, s7
	s_load_b256 s[44:51], s[0:1], 0x0
	.loc	1 972 37                        ; ragged.py:972:37
	s_and_b32 s1, s4, 0x80000001
	.loc	1 956 23                        ; ragged.py:956:23
	s_lshl_b32 s0, s3, 5
	.loc	1 893 26                        ; ragged.py:893:26
	s_ashr_i32 s64, s5, 1
	.loc	1 972 37                        ; ragged.py:972:37
	s_cmp_eq_u32 s1, 1
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v168, 0, v19
	s_cselect_b32 s65, -1, 0
	.loc	1 972 67 is_stmt 0              ; ragged.py:972:67
	s_add_i32 s66, s64, -1
	s_cmp_lt_i32 s0, 64
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s20, 0
	s_cselect_b32 s3, -1, 0
	s_add_i32 s1, s41, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v6, s1, v19
	v_writelane_b32 v255, s21, 1
	scratch_store_b32 off, v12, off offset:264 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v169, v168, v12
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v12, 32, v6
	v_add_nc_u32_e32 v11, 16, v6
	v_mul_lo_u32 v13, v6, s9
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v6, 48, v6
	v_writelane_b32 v255, s22, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v11, v11, s9
	v_mul_lo_u32 v12, v12, s9
	v_mul_lo_u32 v6, v6, s9
	.loc	1 951 28 is_stmt 1              ; ragged.py:951:28
	v_lshrrev_b32_e32 v165, 6, v0
	v_writelane_b32 v255, s23, 3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v13, off offset:236
	scratch_store_b32 off, v0, off offset:260
	v_and_b32_e32 v13, 0xf0, v0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v11, off offset:240
	scratch_store_b32 off, v12, off offset:244
	scratch_store_b32 off, v6, off offset:248
	v_lshlrev_b32_e32 v11, 5, v0
	v_dual_mov_b32 v163, 0 :: v_dual_and_b32 v2, 63, v0
	v_writelane_b32 v255, s15, 4
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v6, 2, v13
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v12, 1, v0
	v_and_b32_e32 v11, 32, v11
	v_or_b32_e32 v166, 12, v165
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v1, s41, v2
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v167, 28, v165
	v_writelane_b32 v255, s0, 5
	v_dual_mov_b32 v117, 0 :: v_dual_and_b32 v12, 28, v12
	v_add3_u32 v6, 0, v6, v11
	v_mad_u64_u32 v[66:67], null, s42, v165, v[2:3]
	v_mad_u64_u32 v[67:68], null, s42, v166, v[2:3]
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v65, s15, v0
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s56, s42, v1
	v_mad_u64_u32 v[68:69], null, s42, v167, v[2:3]
	v_or_b32_e32 v15, 0x300, v0
	v_or_b32_e32 v1, 0x700, v0
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v3, 0x7f0, v0
	v_or_b32_e32 v4, 0xb00, v0
	v_or_b32_e32 v5, 0xf00, v0
	v_writelane_b32 v255, s1, 6
	v_or_b32_e32 v7, 0x1300, v0
	v_or_b32_e32 v8, 0x1700, v0
	v_or_b32_e32 v9, 0x1b00, v0
	v_or_b32_e32 v10, 0x1f00, v0
	v_lshlrev_b32_e32 v11, 1, v13
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v174, 0, v0
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v0, v6, v12
	v_mad_u64_u32 v[69:70], null, s42, 20, v[66:67]
	.loc	1 953 19                        ; ragged.py:953:19
	v_writelane_b32 v255, s19, 7
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v0, 0, v11
	v_mad_u64_u32 v[70:71], null, s42, 24, v[66:67]
	v_mad_u64_u32 v[71:72], null, s43, 3, v[65:66]
	v_mad_u64_u32 v[72:73], null, s43, 5, v[65:66]
	v_mad_u64_u32 v[73:74], null, s43, 6, v[65:66]
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mad_u64_u32 v[74:75], null, s43, 7, v[65:66]
	v_writelane_b32 v255, s24, 8
	v_mad_u64_u32 v[75:76], null, s43, 9, v[65:66]
	v_mad_u64_u32 v[76:77], null, s43, 10, v[65:66]
	v_mad_u64_u32 v[77:78], null, s43, 11, v[65:66]
	v_mad_u64_u32 v[78:79], null, s43, 12, v[65:66]
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mad_u64_u32 v[79:80], null, s43, 13, v[65:66]
	v_writelane_b32 v255, s25, 9
	v_mad_u64_u32 v[80:81], null, s43, 14, v[65:66]
	v_mad_u64_u32 v[81:82], null, s43, 15, v[65:66]
	v_mad_u64_u32 v[82:83], null, s43, 17, v[65:66]
	v_mad_u64_u32 v[83:84], null, s43, 18, v[65:66]
	v_cndmask_b32_e64 v14, 0, 1, s3
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mad_u64_u32 v[84:85], null, s43, 19, v[65:66]
	v_writelane_b32 v255, s26, 10
	v_mad_u64_u32 v[85:86], null, s43, 20, v[65:66]
	v_mad_u64_u32 v[86:87], null, s43, 21, v[65:66]
	.loc	1 998 37                        ; ragged.py:998:37
	s_mul_i32 s0, s6, s9
	v_mad_u64_u32 v[87:88], null, s43, 22, v[65:66]
	v_mad_u64_u32 v[88:89], null, s43, 23, v[65:66]
	v_cmp_ne_u32_e64 s2, 1, v14
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mad_u64_u32 v[89:90], null, s43, 24, v[65:66]
	.loc	1 953 19                        ; ragged.py:953:19
	v_writelane_b32 v255, s0, 11
	v_mad_u64_u32 v[90:91], null, s43, 25, v[65:66]
	v_mad_u64_u32 v[91:92], null, s43, 26, v[65:66]
	v_mad_u64_u32 v[92:93], null, s43, 27, v[65:66]
	v_mad_u64_u32 v[93:94], null, s43, 28, v[65:66]
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mad_u64_u32 v[94:95], null, s43, 29, v[65:66]
	v_writelane_b32 v255, s2, 12
	v_mad_u64_u32 v[95:96], null, s43, 30, v[65:66]
	v_mad_u64_u32 v[96:97], null, s43, 31, v[65:66]
	s_lshr_b32 s3, s66, 6
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s86, s43, v65
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v175, 0, v15
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v176, 0, v1
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v177, 0, v2
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v178, 0, v3
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v179, 0, v4
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v180, 0, v5
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v181, 0, v7
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v182, 0, v8
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v183, 0, v9
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v184, 0, v10
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v26, 0
	.loc	1 953 19                        ; ragged.py:953:19
	v_writelane_b32 v255, s3, 13
	.loc	1 960 39                        ; ragged.py:960:39
	s_mul_i32 s57, s6, s8
	s_and_b32 s93, s45, 0xffff
	s_mov_b32 s92, s44
	s_mov_b32 s95, 0x31027000
	s_mov_b32 s94, 0x7ffffffe
	s_lshl_b32 s39, s43, 4
	s_and_b32 s53, s47, 0xffff
	s_mov_b32 s52, s46
	s_mov_b32 s4, 0
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s9, s51, 0xffff
	s_mov_b32 s8, s50
	s_mov_b32 s5, 0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 990 40                        ; ragged.py:990:40
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v33, off, off offset:236
	scratch_load_b32 v34, off, off offset:240
	scratch_load_b32 v35, off, off offset:244
	scratch_load_b32 v36, off, off offset:248
	.loc	1 998 25                        ; ragged.py:998:25
	s_add_i32 s1, s4, s0
	.loc	1 990 40                        ; ragged.py:990:40
	s_mov_b32 s50, s94
	.loc	1 998 25                        ; ragged.py:998:25
	s_mul_i32 s1, s1, s43
	.loc	1 990 40                        ; ragged.py:990:40
	s_mov_b32 s51, s95
	.loc	1 997 40                        ; ragged.py:997:40
	v_add_lshl_u32 v37, v65, s1, 1
	s_mov_b32 s10, s94
	s_mov_b32 s11, s95
	.loc	1 1004 17                       ; ragged.py:1004:17
	s_add_i32 s1, s4, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 997 40                        ; ragged.py:997:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s86
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshl_b32 s5, s1, 6
	s_cmp_lg_u32 s4, s3
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v33, v33, s4, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v34, v34, s4, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v35, v35, s4, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v36, v36, s4, 1
	s_mov_b32 s4, s1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s26
	v_cndmask_b32_e64 v34, 0x80000000, v34, s19
	v_cndmask_b32_e64 v35, 0x80000000, v35, s25
	v_cndmask_b32_e64 v36, 0x80000000, v36, s24
	s_clause 0x3
	buffer_load_u16 v33, v33, s[48:51], 0 offen
	buffer_load_u16 v34, v34, s[48:51], 0 offen
	buffer_load_u16 v35, v35, s[48:51], 0 offen
	buffer_load_u16 v36, v36, s[48:51], 0 offen
	.loc	1 997 40                        ; ragged.py:997:40
	buffer_load_u16 v37, v37, s[8:11], 0 offen
	.loc	1 1002 21                       ; ragged.py:1002:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 995 21                        ; ragged.py:995:21
	v_dual_mul_f32 v54, v110, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v38, v127, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v124, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v126, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v108, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v125, v33 :: v_dual_mul_f32 v53, v111, v34
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
	v_dual_mul_f32 v52, v113, v33 :: v_dual_mul_f32 v99, v99, v34
	v_dual_mul_f32 v33, v112, v33 :: v_dual_mul_f32 v98, v98, v34
	v_dual_mul_f32 v97, v97, v34 :: v_dual_mul_f32 v30, v30, v35
	v_dual_mul_f32 v31, v31, v35 :: v_dual_mul_f32 v14, v14, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v110, v12, v36
	v_dual_mul_f32 v28, v28, v35 :: v_dual_mul_f32 v15, v15, v36
	v_mul_f32_e32 v34, v27, v35
	v_dual_mul_f32 v100, v26, v35 :: v_dual_mul_f32 v111, v11, v36
	v_dual_mul_f32 v101, v25, v35 :: v_dual_mul_f32 v112, v10, v36
	v_dual_mul_f32 v102, v24, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v103, v23, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v104, v22, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v105, v21, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v106, v20, v35 :: v_dual_mul_f32 v5, v5, v36
	v_dual_mul_f32 v107, v19, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v108, v18, v35 :: v_dual_mul_f32 v3, v3, v36
	v_dual_mul_f32 v109, v17, v35 :: v_dual_mul_f32 v2, v2, v36
	v_mul_f32_e32 v35, v16, v35
	.loc	1 1002 21                       ; ragged.py:1002:21
	scratch_load_b32 v16, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v16, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xd                            ; 56-byte Folded Reload
	scratch_load_b32 v24, off, off offset:256
	scratch_load_b32 v127, off, off offset:232
	scratch_load_b32 v126, off, off offset:228
	scratch_load_b32 v125, off, off offset:224
	scratch_load_b32 v124, off, off offset:220
	scratch_load_b32 v119, off, off offset:200
	scratch_load_b32 v123, off, off offset:216
	scratch_load_b32 v118, off, off offset:196
	scratch_load_b32 v122, off, off offset:212
	scratch_load_b32 v117, off, off offset:192
	scratch_load_b32 v121, off, off offset:208
	scratch_load_b32 v116, off, off offset:188
	scratch_load_b32 v115, off, off offset:184
	scratch_load_b32 v114, off, off offset:180
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v37, v13, v36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:176
	scratch_load_b32 v120, off, off offset:204
	.loc	1 1002 21                       ; ragged.py:1002:21
	s_waitcnt vmcnt(15)
	ds_load_b128 v[16:19], v24
	ds_load_b128 v[20:23], v24 offset:16
	ds_load_b128 v[10:13], v24 offset:512
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v1, v1, v36
	v_mul_f32_e32 v0, v0, v36
	.loc	1 1003 17                       ; ragged.py:1003:17
	scratch_load_b32 v36, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_load_b128 v[24:27], v24 offset:528
	.loc	1 1003 17                       ; ragged.py:1003:17
	s_waitcnt vmcnt(5) lgkmcnt(2)
	v_dual_fmac_f32 v121, v54, v17 :: v_dual_fmac_f32 v116, v59, v22
	scratch_load_b32 v59, off, off offset:160 ; 4-byte Folded Reload
	v_fmac_f32_e32 v117, v58, v21
	scratch_load_b32 v58, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v115, v60, v23
	scratch_load_b32 v60, off, off offset:164 ; 4-byte Folded Reload
	v_fmac_f32_e32 v118, v57, v20
	scratch_load_b32 v57, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7) lgkmcnt(1)
	v_fmac_f32_e32 v114, v61, v10
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v61, off, off offset:168
	scratch_load_b32 v54, off, off offset:140
	v_dual_fmac_f32 v122, v53, v16 :: v_dual_fmac_f32 v119, v56, v19
	scratch_load_b32 v56, off, off offset:148 ; 4-byte Folded Reload
	v_dual_fmac_f32 v163, v45, v23 :: v_dual_fmac_f32 v162, v46, v10
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v127, v49, v13 :: v_dual_fmac_f32 v126, v50, v24
	v_dual_fmac_f32 v123, v33, v27 :: v_dual_fmac_f32 v124, v52, v26
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v52, off, off offset:132
	scratch_load_b32 v45, off, off offset:104
	scratch_load_b32 v33, off, off offset:56
	scratch_load_b32 v49, off, off offset:120
	v_dual_fmac_f32 v164, v44, v22 :: v_dual_fmac_f32 v161, v47, v11
	v_dual_fmac_f32 v160, v48, v12 :: v_dual_fmac_f32 v125, v51, v25
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:128
	scratch_load_b32 v44, off, off offset:100
	s_waitcnt vmcnt(15)
	v_fmac_f32_e32 v113, v62, v11
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v62, off, off offset:172
	scratch_load_b32 v48, off, off offset:116
	s_waitcnt vmcnt(16)
	v_fmac_f32_e32 v120, v55, v18
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v55, off, off offset:144
	scratch_load_b32 v47, off, off offset:112
	scratch_load_b32 v53, off, off offset:136
	scratch_load_b32 v46, off, off offset:108
	scratch_load_b32 v50, off, off offset:124
	s_waitcnt vmcnt(17)
	v_dual_fmac_f32 v59, v98, v25 :: v_dual_fmac_f32 v60, v99, v24
	s_waitcnt vmcnt(16)
	v_fmac_f32_e32 v57, v32, v27
	scratch_load_b32 v32, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v61, v64, v13 :: v_dual_fmac_f32 v54, v29, v18
	scratch_load_b32 v29, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(15)
	v_fmac_f32_e32 v56, v31, v16
	scratch_load_b32 v31, off, off offset:48 ; 4-byte Folded Reload
	v_fmac_f32_e32 v36, v38, v16
	scratch_load_b32 v38, off, off offset:76 ; 4-byte Folded Reload
	v_fmac_f32_e32 v58, v97, v26
	scratch_store_b32 off, v36, off offset:20 ; 4-byte Folded Spill
	scratch_load_b32 v36, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(15)
	v_fmac_f32_e32 v33, v2, v25
	scratch_load_b32 v2, off, off offset:44 ; 4-byte Folded Reload
	v_fmac_f32_e32 v52, v34, v20
	scratch_load_b32 v34, off, off offset:60 ; 4-byte Folded Reload
	v_fmac_f32_e32 v45, v106, v13
	s_waitcnt vmcnt(13)
	v_dual_fmac_f32 v51, v100, v21 :: v_dual_fmac_f32 v62, v63, v12
	s_waitcnt vmcnt(11)
	v_fmac_f32_e32 v55, v30, v17
	scratch_load_b32 v30, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(10)
	v_fmac_f32_e32 v53, v28, v19
	scratch_load_b32 v28, off, off offset:28 ; 4-byte Folded Reload
	v_fmac_f32_e32 v47, v104, v11
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v29, v5, v12
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v31, v7, v10
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v38, v37, v18
	scratch_load_b32 v37, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v36, v39, v17
	scratch_load_b32 v39, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v2, v1, v26
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v34, v9, v22
	scratch_store_b32 off, v36, off offset:16 ; 4-byte Folded Spill
	scratch_load_b32 v36, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v30, v6, v11
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v28, v4, v13
	scratch_load_b32 v4, off, off offset:24 ; 4-byte Folded Reload
	v_fmac_f32_e32 v32, v8, v23
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v37, v110, v19
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v39, v14, v17 :: v_dual_fmac_f32 v36, v40, v18
	scratch_load_b32 v40, off, off offset:84 ; 4-byte Folded Reload
	v_fmac_f32_e32 v48, v103, v10
	scratch_store_b32 off, v36, off offset:12 ; 4-byte Folded Spill
	scratch_load_b32 v36, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v4, v3, v24
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v40, v15, v16
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v36, v41, v19
	scratch_load_b32 v41, off, off offset:88 ; 4-byte Folded Reload
	scratch_store_b32 off, v36, off offset:8 ; 4-byte Folded Spill
	scratch_load_b32 v36, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v36, v42, v20
	scratch_load_b32 v42, off, off offset:92 ; 4-byte Folded Reload
	v_fmac_f32_e32 v49, v102, v23
	scratch_store_b32 off, v36, off offset:4 ; 4-byte Folded Spill
	scratch_load_b32 v36, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v42, v109, v26
	v_mov_b32_e32 v26, v2
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v36, v43, v21
	scratch_load_b32 v43, off, off offset:96 ; 4-byte Folded Reload
	v_fmac_f32_e32 v50, v101, v22
	scratch_store_b32 off, v36, off         ; 4-byte Folded Spill
	scratch_load_b32 v36, off, off offset:68 ; 4-byte Folded Reload
	v_fmac_f32_e32 v41, v35, v27
	scratch_load_b32 v35, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v43, v108, v25
	scratch_load_b32 v25, off, off offset:32 ; 4-byte Folded Reload
	v_fmac_f32_e32 v46, v105, v12
	v_fmac_f32_e32 v44, v107, v24
	v_mov_b32_e32 v24, v4
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v36, v111, v20 :: v_dual_fmac_f32 v35, v112, v21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v25, v0, v27
	.loc	1 953 19                        ; ragged.py:953:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v127, off offset:232
	scratch_store_b32 off, v126, off offset:228
	scratch_store_b32 off, v125, off offset:224
	scratch_store_b32 off, v124, off offset:220
	scratch_store_b32 off, v123, off offset:216
	scratch_store_b32 off, v122, off offset:212
	scratch_store_b32 off, v121, off offset:208
	scratch_store_b32 off, v120, off offset:204
	scratch_store_b32 off, v119, off offset:200
	scratch_store_b32 off, v118, off offset:196
	scratch_store_b32 off, v117, off offset:192
	scratch_store_b32 off, v116, off offset:188
	scratch_store_b32 off, v115, off offset:184
	scratch_store_b32 off, v114, off offset:180
	scratch_store_b32 off, v113, off offset:176
	scratch_store_b32 off, v62, off offset:172
	scratch_store_b32 off, v61, off offset:168
	scratch_store_b32 off, v60, off offset:164
	scratch_store_b32 off, v59, off offset:160
	scratch_store_b32 off, v58, off offset:156
	scratch_store_b32 off, v57, off offset:152
	scratch_store_b32 off, v56, off offset:148
	scratch_store_b32 off, v55, off offset:144
	scratch_store_b32 off, v54, off offset:140
	scratch_store_b32 off, v53, off offset:136
	scratch_store_b32 off, v52, off offset:132
	scratch_store_b32 off, v51, off offset:128
	scratch_store_b32 off, v50, off offset:124
	scratch_store_b32 off, v49, off offset:120
	scratch_store_b32 off, v48, off offset:116
	scratch_store_b32 off, v47, off offset:112
	scratch_store_b32 off, v46, off offset:108
	s_clause 0x14                           ; 84-byte Folded Spill
	scratch_store_b32 off, v45, off offset:104
	scratch_store_b32 off, v44, off offset:100
	scratch_store_b32 off, v43, off offset:96
	scratch_store_b32 off, v42, off offset:92
	scratch_store_b32 off, v41, off offset:88
	scratch_store_b32 off, v40, off offset:84
	scratch_store_b32 off, v39, off offset:80
	scratch_store_b32 off, v38, off offset:76
	scratch_store_b32 off, v37, off offset:72
	scratch_store_b32 off, v36, off offset:68
	scratch_store_b32 off, v35, off offset:64
	scratch_store_b32 off, v34, off offset:60
	scratch_store_b32 off, v33, off offset:56
	scratch_store_b32 off, v32, off offset:52
	scratch_store_b32 off, v31, off offset:48
	scratch_store_b32 off, v26, off offset:44
	scratch_store_b32 off, v30, off offset:40
	scratch_store_b32 off, v29, off offset:36
	scratch_store_b32 off, v25, off offset:32
	scratch_store_b32 off, v28, off offset:28
	scratch_store_b32 off, v24, off offset:24
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
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	.loc	1 957 23 is_stmt 1              ; ragged.py:957:23
	s_and_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_writelane_b32 v255, s8, 14
	v_mov_b32_e32 v1, 0
	v_writelane_b32 v255, s9, 15
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_writelane_b32 v255, s10, 16
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_writelane_b32 v255, s11, 17
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_writelane_b32 v255, s4, 18
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_writelane_b32 v255, s44, 19
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_writelane_b32 v255, s45, 20
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_writelane_b32 v255, s46, 21
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_writelane_b32 v255, s47, 22
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_writelane_b32 v255, s48, 23
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_writelane_b32 v255, s49, 24
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_writelane_b32 v255, s50, 25
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_writelane_b32 v255, s51, 26
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
	v_readlane_b32 s1, v255, 5
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 958 26 is_stmt 1              ; ragged.py:958:26
	s_add_i32 s21, s1, s5
	v_writelane_b32 v255, s1, 27
	v_or_b32_e32 v0, s21, v166
	s_or_b32 s45, s21, 1
	s_or_b32 s54, s21, 2
	s_or_b32 s55, s21, 3
	s_or_b32 s58, s21, 4
	s_or_b32 s59, s21, 5
	s_or_b32 s71, s21, 6
	s_or_b32 s72, s21, 7
	s_or_b32 s73, s21, 8
	s_or_b32 s74, s21, 9
	s_or_b32 s75, s21, 10
	s_or_b32 s76, s21, 11
	s_or_b32 s77, s21, 12
	s_or_b32 s78, s21, 13
	s_or_b32 s79, s21, 14
	s_or_b32 s80, s21, 15
	s_or_b32 s81, s21, 16
	s_or_b32 s82, s21, 17
	s_or_b32 s69, s21, 18
	s_mov_b32 s84, s56
	s_or_b32 s56, s21, 19
	s_mov_b32 s85, s57
	s_or_b32 s57, s21, 20
	s_or_b32 s46, s21, 21
	s_or_b32 s62, s21, 22
	s_or_b32 s67, s21, 23
	s_or_b32 s40, s21, 24
	s_mov_b32 s0, s41
	s_or_b32 s41, s21, 25
	s_mov_b64 s[50:51], s[42:43]
	s_or_b32 s42, s21, 26
	s_or_b32 s1, s21, 27
	s_or_b32 s60, s21, 28
	s_or_b32 s61, s21, 29
	s_or_b32 s43, s21, 30
	s_or_b32 s48, s21, 31
	.loc	1 971 35                        ; ragged.py:971:35
	s_cmp_lt_i32 s21, s64
	v_cmp_gt_i32_e64 s7, s64, v0
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s45, s64
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e32 vcc_lo, s66, v0
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s21, v167
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s54, s64
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v97, 24, v165
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s55, s64
	v_cmp_gt_i32_e64 s8, s64, v0
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s58, s64
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s3, s66, v0
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v0, 4, v165
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s59, s64
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v97, s21, v97
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s2, -1, 0
	s_cmp_lt_i32 s71, s64
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s21, v0
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s72, s64
	v_cmp_gt_i32_e64 s20, s64, v97
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s73, s64
	v_cmp_gt_i32_e64 s12, s64, v0
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s74, s64
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s10, s66, v0
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v0, 8, v165
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s75, s64
	v_add_nc_u32_e32 v115, s39, v65
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s76, s64
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s21, v0
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s77, s64
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s78, s64
	v_cmp_gt_i32_e64 s13, s64, v0
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s79, s64
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s11, s66, v0
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v0, 16, v165
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s80, s64
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s81, s64
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s21, v0
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s82, s64
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s69, s64
	v_cmp_gt_i32_e64 s14, s64, v0
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s56, s64
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s9, s66, v0
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s21, v165
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s57, s64
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s46, s64
	v_cmp_gt_i32_e64 s15, s64, v0
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s16, s66, v0
	.loc	1 971 60                        ; ragged.py:971:60
	v_subrev_nc_u32_e32 v0, s5, v0
	.loc	1 971 35 is_stmt 0              ; ragged.py:971:35
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s62, s64
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s67, s64
	.loc	1 971 59                        ; ragged.py:971:59
	v_cmp_gt_i32_e64 s17, 64, v0
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s40, s64
	.loc	1 951 28 is_stmt 1              ; ragged.py:951:28
	v_or_b32_e32 v0, 20, v165
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s41, s64
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s42, s64
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s21, v0
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s1, s64
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s60, s64
	v_cmp_gt_i32_e64 s18, s64, v0
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s61, s64
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s43, s64
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s48, s64
	s_cselect_b32 s37, -1, 0
	.loc	1 971 34 is_stmt 0              ; ragged.py:971:34
	s_and_b32 s49, s15, s17
	s_and_b32 s12, s12, s17
	s_and_b32 s13, s13, s17
	s_and_b32 s15, s7, s17
	s_and_b32 s14, s14, s17
	s_and_b32 s18, s18, s17
	s_and_b32 s20, s20, s17
	s_and_b32 s17, s8, s17
	.loc	1 972 60 is_stmt 1              ; ragged.py:972:60
	s_cmp_eq_u32 s21, s66
	s_cselect_b32 s100, -1, 0
	s_cmp_eq_u32 s45, s66
	s_cselect_b32 s99, -1, 0
	s_cmp_eq_u32 s54, s66
	.loc	1 974 38                        ; ragged.py:974:38
	s_mov_b32 s54, s94
	.loc	1 972 60                        ; ragged.py:972:60
	s_cselect_b32 s98, -1, 0
	s_cmp_eq_u32 s55, s66
	.loc	1 974 38                        ; ragged.py:974:38
	s_mov_b32 s55, s95
	.loc	1 972 60                        ; ragged.py:972:60
	s_cselect_b32 s97, -1, 0
	s_cmp_eq_u32 s58, s66
	s_cselect_b32 s96, -1, 0
	s_cmp_eq_u32 s59, s66
	s_cselect_b32 s45, -1, 0
	s_cmp_eq_u32 s71, s66
	s_cselect_b32 s91, -1, 0
	s_cmp_eq_u32 s72, s66
	s_cselect_b32 s90, -1, 0
	s_cmp_eq_u32 s73, s66
	s_cselect_b32 s89, -1, 0
	s_cmp_eq_u32 s74, s66
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s75, s66
	s_cselect_b32 s74, -1, 0
	s_cmp_eq_u32 s76, s66
	s_cselect_b32 s73, -1, 0
	s_cmp_eq_u32 s77, s66
	s_cselect_b32 s72, -1, 0
	s_cmp_eq_u32 s78, s66
	s_cselect_b32 s87, -1, 0
	s_cmp_eq_u32 s79, s66
	s_cselect_b32 s71, -1, 0
	s_cmp_eq_u32 s80, s66
	s_cselect_b32 s59, -1, 0
	s_cmp_eq_u32 s81, s66
	s_cselect_b32 s76, -1, 0
	s_cmp_eq_u32 s82, s66
	s_cselect_b32 s75, -1, 0
	s_cmp_eq_u32 s69, s66
	s_cselect_b32 s82, -1, 0
	s_cmp_eq_u32 s56, s66
	s_mov_b32 s56, s84
	s_cselect_b32 s81, -1, 0
	s_cmp_eq_u32 s57, s66
	s_mov_b32 s57, s85
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s46, s66
	s_cselect_b32 s79, -1, 0
	s_cmp_eq_u32 s62, s66
	s_cselect_b32 s78, -1, 0
	s_cmp_eq_u32 s67, s66
	s_cselect_b32 s77, -1, 0
	s_cmp_eq_u32 s40, s66
	s_cselect_b32 s85, -1, 0
	s_cmp_eq_u32 s41, s66
	s_mov_b32 s41, s0
	s_cselect_b32 s84, -1, 0
	s_cmp_eq_u32 s42, s66
	s_cselect_b32 s69, -1, 0
	s_cmp_eq_u32 s1, s66
	s_cselect_b32 s67, -1, 0
	s_cmp_eq_u32 s60, s66
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s61, s66
	s_cselect_b32 s60, -1, 0
	s_cmp_eq_u32 s43, s66
	s_mov_b64 s[42:43], s[50:51]
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s48, s66
	v_lshl_add_u32 v98, s42, 2, v66
	s_cselect_b32 s0, -1, 0
	.loc	1 973 46                        ; ragged.py:973:46
	s_add_i32 s1, s21, s57
	v_lshl_add_u32 v99, s42, 3, v66
	s_mul_i32 s7, s1, s42
	v_lshl_add_u32 v101, s42, 4, v66
	s_add_i32 s40, s7, s41
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s21, s65, s16
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 s16, s56, s17
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s17, s66, v0
	v_add_nc_u32_e32 v0, s40, v66
	v_add_nc_u32_e32 v98, s40, v98
	v_add_nc_u32_e32 v99, s40, v99
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 s8, s56, s13
	v_add_nc_u32_e32 v100, s40, v67
	s_and_b32 s13, s56, s14
	s_and_b32 s14, s56, s18
	s_and_b32 s18, s56, s49
	s_and_b32 s7, s56, s12
	v_add_nc_u32_e32 v101, s40, v101
	v_add_nc_u32_e32 v102, s40, v69
	v_add_nc_u32_e32 v103, s40, v70
	v_add_nc_u32_e32 v104, s40, v68
	.loc	1 973 38 is_stmt 0              ; ragged.py:973:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s18
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 s12, s56, s15
	s_and_b32 s15, s56, s20
	.loc	1 972 60 is_stmt 1              ; ragged.py:972:60
	v_cmp_eq_u32_e64 s20, s66, v97
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e64 v97, 0x80000000, v98, s7
	v_cndmask_b32_e64 v98, 0x80000000, v99, s8
	v_cndmask_b32_e64 v99, 0x80000000, v100, s12
	v_cndmask_b32_e64 v100, 0x80000000, v101, s13
	v_cndmask_b32_e64 v101, 0x80000000, v102, s14
	v_cndmask_b32_e64 v102, 0x80000000, v103, s15
	v_cndmask_b32_e64 v103, 0x80000000, v104, s16
	s_clause 0x7
	buffer_load_u8 v104, v0, s[92:95], 0 offen
	buffer_load_u8 v97, v97, s[92:95], 0 offen
	buffer_load_u8 v98, v98, s[92:95], 0 offen
	buffer_load_u8 v99, v99, s[92:95], 0 offen
	buffer_load_u8 v100, v100, s[92:95], 0 offen
	buffer_load_u8 v101, v101, s[92:95], 0 offen
	buffer_load_u8 v102, v102, s[92:95], 0 offen
	buffer_load_u8 v103, v103, s[92:95], 0 offen
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s7, s65, s10
	s_and_b32 s3, s65, s3
	.loc	1 974 46                        ; ragged.py:974:46
	s_mul_i32 s1, s1, s43
	v_lshl_add_u32 v107, s43, 3, v65
	v_add_nc_u32_e32 v131, s1, v65
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 s38, s86, s38
	.loc	1 974 46                        ; ragged.py:974:46
	v_add_nc_u32_e32 v105, s1, v73
	v_add_nc_u32_e32 v106, s1, v74
	v_add_nc_u32_e32 v107, s1, v107
	v_add_nc_u32_e32 v109, s1, v76
	v_add_nc_u32_e32 v111, s1, v78
	v_add_nc_u32_e32 v112, s1, v79
	v_add_nc_u32_e32 v113, s1, v80
	v_add_nc_u32_e32 v114, s1, v81
	v_add_nc_u32_e32 v118, s1, v84
	v_add_nc_u32_e32 v119, s1, v85
	v_add_nc_u32_e32 v120, s1, v86
	v_add_nc_u32_e32 v121, s1, v87
	v_add_nc_u32_e32 v122, s1, v88
	v_add_nc_u32_e32 v123, s1, v89
	v_add_nc_u32_e32 v124, s1, v90
	v_add_nc_u32_e32 v125, s1, v91
	v_add_nc_u32_e32 v126, s1, v92
	v_add_nc_u32_e32 v108, s1, v75
	v_add_nc_u32_e32 v110, s1, v77
	v_add_nc_u32_e32 v115, s1, v115
	v_add_nc_u32_e32 v116, s1, v82
	v_add_nc_u32_e32 v117, s1, v83
	v_add_nc_u32_e32 v127, s1, v93
	v_add_nc_u32_e32 v128, s1, v94
	v_add_nc_u32_e32 v129, s1, v95
	v_add_nc_u32_e32 v130, s1, v96
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e64 v131, 0x80000000, v131, s38
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 s8, s86, s19
	s_and_b32 s10, s86, s70
	s_and_b32 s12, s86, s6
	s_and_b32 s14, s86, s63
	s_and_b32 s16, s86, vcc_hi
	s_and_b32 s18, s86, s103
	s_and_b32 s24, s86, s24
	s_and_b32 s25, s86, s25
	s_and_b32 s26, s86, s26
	s_and_b32 s27, s86, s27
	s_and_b32 s28, s86, s28
	s_and_b32 s29, s86, s29
	s_and_b32 s30, s86, s30
	s_and_b32 s31, s86, s31
	s_and_b32 s33, s86, s33
	s_and_b32 s13, s86, s68
	s_and_b32 s15, s86, s83
	s_and_b32 s22, s86, s22
	s_and_b32 s23, s86, s23
	s_and_b32 s34, s86, s34
	s_and_b32 s35, s86, s35
	s_and_b32 s36, s86, s36
	s_and_b32 s37, s86, s37
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e64 v105, 0x80000000, v105, s10
	v_cndmask_b32_e64 v107, 0x80000000, v107, s12
	v_cndmask_b32_e64 v109, 0x80000000, v109, s14
	v_cndmask_b32_e64 v111, 0x80000000, v111, s16
	v_cndmask_b32_e64 v113, 0x80000000, v113, s18
	v_cndmask_b32_e64 v118, 0x80000000, v118, s24
	v_cndmask_b32_e64 v119, 0x80000000, v119, s25
	v_cndmask_b32_e64 v120, 0x80000000, v120, s26
	v_cndmask_b32_e64 v121, 0x80000000, v121, s27
	v_cndmask_b32_e64 v122, 0x80000000, v122, s28
	v_cndmask_b32_e64 v123, 0x80000000, v123, s29
	v_cndmask_b32_e64 v124, 0x80000000, v124, s30
	v_cndmask_b32_e64 v125, 0x80000000, v125, s31
	v_cndmask_b32_e64 v126, 0x80000000, v126, s33
	v_cndmask_b32_e64 v108, 0x80000000, v108, s13
	v_cndmask_b32_e64 v110, 0x80000000, v110, s15
	v_cndmask_b32_e64 v116, 0x80000000, v116, s22
	v_cndmask_b32_e64 v117, 0x80000000, v117, s23
	v_cndmask_b32_e64 v127, 0x80000000, v127, s34
	v_cndmask_b32_e64 v128, 0x80000000, v128, s35
	v_cndmask_b32_e64 v129, 0x80000000, v129, s36
	v_cndmask_b32_e64 v130, 0x80000000, v130, s37
	.loc	1 975 66 is_stmt 1              ; ragged.py:975:66
	s_waitcnt vmcnt(7)
	v_and_b16 v0.l, v104.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v0.h, v97.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v97.h, v99.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v98.h, v101.l, 15
	.loc	1 975 38 is_stmt 0              ; ragged.py:975:38
	v_cndmask_b16 v0.h, v97.l, v0.h, s7
	.loc	1 975 66                        ; ragged.py:975:66
	v_and_b16 v97.l, v98.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s7, s65, s11
	.loc	1 975 66                        ; ragged.py:975:66
	s_waitcnt vmcnt(0)
	v_and_b16 v99.h, v103.l, 15
	.loc	1 975 38 is_stmt 0              ; ragged.py:975:38
	v_cndmask_b16 v0.l, v104.l, v0.l, s21
	.loc	1 974 46 is_stmt 1              ; ragged.py:974:46
	v_add_nc_u32_e32 v104, s1, v72
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v97.l, v98.l, v97.l, s7
	.loc	1 975 66 is_stmt 0              ; ragged.py:975:66
	v_and_b16 v98.l, v100.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s7, s65, vcc_lo
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v99.h, v103.l, v99.h, s3
	v_cndmask_b16 v97.h, v99.l, v97.h, s7
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s7, s65, s9
	.loc	1 975 66                        ; ragged.py:975:66
	v_and_b16 v99.l, v102.l, 15
	.loc	1 975 38 is_stmt 0              ; ragged.py:975:38
	v_cndmask_b16 v98.l, v100.l, v98.l, s7
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s7, s65, s17
	v_add_nc_u32_e32 v100, s43, v65
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v98.h, v101.l, v98.h, s7
	v_lshl_add_u32 v101, s43, 1, v65
	v_lshl_add_u32 v103, s43, 2, v65
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s7, s65, s20
	.loc	1 974 46                        ; ragged.py:974:46
	v_add_nc_u32_e32 v100, s1, v100
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v99.l, v102.l, v99.l, s7
	.loc	1 974 46                        ; ragged.py:974:46
	v_add_nc_u32_e32 v101, s1, v101
	v_add_nc_u32_e32 v102, s1, v71
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s86, s44
	.loc	1 974 46                        ; ragged.py:974:46
	v_add_nc_u32_e32 v103, s1, v103
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 s3, s86, s4
	s_and_b32 s7, s86, s88
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 s9, s86, s2
	s_and_b32 s11, s86, s47
	s_and_b32 s17, s86, s104
	s_and_b32 s20, s86, s102
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e64 v101, 0x80000000, v101, s3
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 s21, s86, s101
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e64 v102, 0x80000000, v102, s7
	v_cndmask_b32_e64 v103, 0x80000000, v103, s8
	v_cndmask_b32_e64 v104, 0x80000000, v104, s9
	v_cndmask_b32_e64 v106, 0x80000000, v106, s11
	v_cndmask_b32_e64 v112, 0x80000000, v112, s17
	v_cndmask_b32_e64 v114, 0x80000000, v114, s20
	v_cndmask_b32_e64 v115, 0x80000000, v115, s21
	s_clause 0x1f
	buffer_load_u8 v143, v131, s[52:55], 0 offen
	buffer_load_u8 v100, v100, s[52:55], 0 offen
	buffer_load_u8 v144, v101, s[52:55], 0 offen
	buffer_load_u8 v102, v102, s[52:55], 0 offen
	buffer_load_u8 v146, v103, s[52:55], 0 offen
	buffer_load_u8 v104, v104, s[52:55], 0 offen
	buffer_load_u8 v105, v105, s[52:55], 0 offen
	buffer_load_u8 v106, v106, s[52:55], 0 offen
	buffer_load_u8 v107, v107, s[52:55], 0 offen
	buffer_load_u8 v149, v108, s[52:55], 0 offen
	buffer_load_u8 v109, v109, s[52:55], 0 offen
	buffer_load_u8 v150, v110, s[52:55], 0 offen
	buffer_load_u8 v111, v111, s[52:55], 0 offen
	buffer_load_u8 v112, v112, s[52:55], 0 offen
	buffer_load_u8 v113, v113, s[52:55], 0 offen
	buffer_load_u8 v114, v114, s[52:55], 0 offen
	buffer_load_u8 v152, v115, s[52:55], 0 offen
	buffer_load_u8 v153, v116, s[52:55], 0 offen
	buffer_load_u8 v154, v117, s[52:55], 0 offen
	buffer_load_u8 v118, v118, s[52:55], 0 offen
	buffer_load_u8 v119, v119, s[52:55], 0 offen
	buffer_load_u8 v120, v120, s[52:55], 0 offen
	buffer_load_u8 v121, v121, s[52:55], 0 offen
	buffer_load_u8 v122, v122, s[52:55], 0 offen
	buffer_load_u8 v123, v123, s[52:55], 0 offen
	buffer_load_u8 v124, v124, s[52:55], 0 offen
	buffer_load_u8 v125, v125, s[52:55], 0 offen
	buffer_load_u8 v126, v126, s[52:55], 0 offen
	buffer_load_u8 v158, v127, s[52:55], 0 offen
	buffer_load_u8 v159, v128, s[52:55], 0 offen
	buffer_load_u8 v170, v129, s[52:55], 0 offen
	buffer_load_u8 v171, v130, s[52:55], 0 offen
	.loc	1 975 38 is_stmt 1              ; ragged.py:975:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v174, v0
	ds_store_b8_d16_hi v174, v0 offset:256
	ds_store_b8 v174, v97 offset:512
	ds_store_b8 v174, v98 offset:1024
	ds_store_b8_d16_hi v174, v98 offset:1280
	ds_store_b8_d16_hi v175, v97
	ds_store_b8 v174, v99 offset:1536
	ds_store_b8_d16_hi v176, v99
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 31                        ; ragged.py:977:31
	ds_load_u8 v0, v168 offset:320
	ds_load_u8 v97, v168 offset:256
	ds_load_u8 v135, v168 offset:336
	ds_load_u8 v136, v168 offset:272
	ds_load_u8 v127, v168 offset:352
	ds_load_u8 v128, v168 offset:288
	ds_load_u8 v145, v168 offset:368
	ds_load_u8 v116, v168 offset:304
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s1, s65, s100
	.loc	1 977 31                        ; ragged.py:977:31
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v97, v0, 0xc0c0004
	ds_load_u8 v97, v168 offset:448
	ds_load_u8 v98, v168 offset:384
	ds_load_u8 v137, v168 offset:464
	ds_load_u8 v138, v168 offset:400
	ds_load_u8 v129, v168 offset:480
	ds_load_u8 v130, v168 offset:416
	ds_load_u8 v101, v168 offset:496
	ds_load_u8 v103, v168 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v116, v116, v145, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v168 offset:64
	ds_load_u8 v99, v168
	ds_load_u8 v139, v168 offset:80
	ds_load_u8 v131, v168 offset:96
	ds_load_u8 v108, v168 offset:112
	ds_load_u8 v140, v168 offset:16
	ds_load_u8 v132, v168 offset:32
	ds_load_u8 v110, v168 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v136, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v128, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v101, v103, v101, 0xc0c0004
	v_lshl_or_b32 v136, v136, 16, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v128, v128, 16, v127
	v_lshl_or_b32 v116, v101, 16, v116
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v99, v99, v98, 0xc0c0004
	ds_load_u8 v98, v168 offset:192
	ds_load_u8 v147, v168 offset:128
	ds_load_u8 v141, v168 offset:208
	ds_load_u8 v142, v168 offset:144
	ds_load_u8 v133, v168 offset:224
	ds_load_u8 v134, v168 offset:160
	ds_load_u8 v115, v168 offset:240
	ds_load_u8 v117, v168 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v137, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v129, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v103, v110, v108, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v147, v147, v98, 0xc0c0004
	v_lshl_or_b32 v98, v97, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v130, v134, v133, 0xc0c0004
	v_lshl_or_b32 v97, v147, 16, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v117, v115, 0xc0c0004
	v_lshl_or_b32 v135, v138, 16, v137
	v_lshl_or_b32 v127, v130, 16, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v115, v108, 16, v103
	.loc	1 976 66                        ; ragged.py:976:66
	s_waitcnt vmcnt(31)
	v_and_b16 v0.l, v143.l, 15
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v143.l, v143.l, v0.l, s1
	.loc	1 976 66                        ; ragged.py:976:66
	s_waitcnt vmcnt(30)
	v_and_b16 v0.l, v100.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s99
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v143.h, v100.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(29)
	v_and_b16 v0.l, v144.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s98
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v144.l, v144.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(28)
	v_and_b16 v0.l, v102.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s97
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v144.h, v102.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(27)
	v_and_b16 v0.l, v146.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s96
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v146.l, v146.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(26)
	v_and_b16 v0.l, v104.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s45
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v146.h, v104.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(25)
	v_and_b16 v0.l, v105.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s91
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v147.l, v105.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(24)
	v_and_b16 v0.l, v106.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s90
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v147.h, v106.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(23)
	v_and_b16 v0.l, v107.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s89
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v148.l, v107.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(22)
	v_and_b16 v0.l, v149.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s58
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v148.h, v149.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(21)
	v_and_b16 v0.l, v109.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s74
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v149.l, v109.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(20)
	v_and_b16 v0.l, v150.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s73
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v149.h, v150.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(19)
	v_and_b16 v0.l, v111.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s72
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v150.l, v111.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(18)
	v_and_b16 v0.l, v112.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s87
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v150.h, v112.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(17)
	v_and_b16 v0.l, v113.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s71
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v151.l, v113.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(16)
	v_and_b16 v0.l, v114.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s59
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v151.h, v114.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(15)
	v_and_b16 v0.l, v152.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s76
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v152.l, v152.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(14)
	v_and_b16 v0.l, v153.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s75
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v152.h, v153.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(13)
	v_and_b16 v0.l, v154.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s82
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v153.l, v154.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(12)
	v_and_b16 v0.l, v118.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s81
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v153.h, v118.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(11)
	v_and_b16 v0.l, v119.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s80
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v154.l, v119.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(10)
	v_and_b16 v0.l, v120.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s79
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v154.h, v120.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(9)
	v_and_b16 v0.l, v121.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s78
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v155.l, v121.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(8)
	v_and_b16 v0.l, v122.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s77
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v155.h, v122.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(7)
	v_and_b16 v0.l, v123.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s85
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v156.l, v123.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(6)
	v_and_b16 v0.l, v124.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s84
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v156.h, v124.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(5)
	v_and_b16 v0.l, v125.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s69
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v157.l, v125.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(4)
	v_and_b16 v0.l, v126.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s67
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v157.h, v126.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(3)
	v_and_b16 v0.l, v158.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s62
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v158.l, v158.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(2)
	v_and_b16 v0.l, v159.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s60
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v158.h, v159.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(1)
	v_and_b16 v0.l, v170.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s46
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v159.l, v170.l, v0.l, s1
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v0.l, v171.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s1, s65, s0
	v_readlane_b32 s0, v255, 27
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v159.h, v171.l, v0.l, s1
	.loc	1 977 31                        ; ragged.py:977:31
	ds_load_u8 v119, v168 offset:960
	ds_load_u8 v120, v168 offset:896
	ds_load_u8 v243, v168 offset:1024
	ds_load_u8 v250, v168 offset:976
	ds_load_u8 v251, v168 offset:912
	ds_load_u8 v245, v168 offset:992
	ds_load_u8 v246, v168 offset:928
	ds_load_u8 v244, v168 offset:944
	ds_load_u8 v121, v168 offset:832
	ds_load_u8 v122, v168 offset:768
	ds_load_u8 v171, v168 offset:848
	ds_load_u8 v173, v168 offset:784
	ds_load_u8 v253, v168 offset:864
	ds_load_u8 v254, v168 offset:800
	ds_load_u8 v247, v168 offset:880
	ds_load_u8 v248, v168 offset:816
	ds_load_u8 v123, v168 offset:704
	ds_load_u8 v124, v168 offset:640
	ds_load_u8 v100, v168 offset:720
	ds_load_u8 v102, v168 offset:656
	ds_load_u8 v185, v168 offset:736
	ds_load_u8 v99, v168 offset:672
	ds_load_u8 v170, v168 offset:752
	ds_load_u8 v172, v168 offset:688
	ds_load_u8 v125, v168 offset:576
	ds_load_u8 v126, v168 offset:512
	ds_load_u8 v111, v168 offset:592
	ds_load_u8 v112, v168 offset:528
	ds_load_u8 v107, v168 offset:608
	ds_load_u8 v109, v168 offset:544
	ds_load_u8 v104, v168 offset:624
	ds_load_u8 v105, v168 offset:560
	ds_load_u8 v249, v168 offset:1216
	ds_load_u8 v252, v168 offset:1280
	ds_load_u8 v216, v168 offset:1232
	ds_load_u8 v217, v168 offset:1168
	ds_load_u8 v214, v168 offset:1248
	ds_load_u8 v215, v168 offset:1184
	ds_load_u8 v212, v168 offset:1264
	ds_load_u8 v213, v168 offset:1200
	ds_load_u8 v0, v168 offset:1152
	ds_load_u8 v186, v168 offset:1088
	ds_load_u8 v223, v168 offset:1104
	ds_load_u8 v224, v168 offset:1040
	ds_load_u8 v221, v168 offset:1120
	ds_load_u8 v222, v168 offset:1056
	ds_load_u8 v218, v168 offset:1136
	ds_load_u8 v219, v168 offset:1072
	ds_load_u8 v106, v168 offset:1472
	ds_load_u8 v211, v168 offset:1536
	ds_load_u8 v231, v168 offset:1488
	ds_load_u8 v233, v168 offset:1424
	ds_load_u8 v228, v168 offset:1504
	ds_load_u8 v230, v168 offset:1440
	ds_load_u8 v225, v168 offset:1520
	ds_load_u8 v226, v168 offset:1456
	ds_load_u8 v113, v168 offset:1408
	ds_load_u8 v114, v168 offset:1344
	ds_load_u8 v240, v168 offset:1360
	ds_load_u8 v241, v168 offset:1296
	ds_load_u8 v237, v168 offset:1376
	ds_load_u8 v238, v168 offset:1312
	ds_load_u8 v234, v168 offset:1392
	ds_load_u8 v235, v168 offset:1328
	ds_load_u8 v220, v168 offset:1984
	ds_load_u8 v191, v168 offset:2000
	ds_load_u8 v193, v168 offset:1936
	ds_load_u8 v189, v168 offset:2016
	ds_load_u8 v190, v168 offset:1952
	ds_load_u8 v118, v177
	ds_load_u8 v187, v178
	ds_load_u8 v188, v168 offset:1968
	ds_load_u8 v227, v168 offset:1920
	ds_load_u8 v229, v168 offset:1856
	ds_load_u8 v198, v168 offset:1872
	ds_load_u8 v200, v168 offset:1808
	ds_load_u8 v195, v168 offset:1888
	ds_load_u8 v196, v168 offset:1824
	ds_load_u8 v192, v168 offset:1904
	ds_load_u8 v194, v168 offset:1840
	ds_load_u8 v232, v168 offset:1728
	ds_load_u8 v236, v168 offset:1792
	ds_load_u8 v203, v168 offset:1744
	ds_load_u8 v204, v168 offset:1680
	ds_load_u8 v201, v168 offset:1760
	ds_load_u8 v202, v168 offset:1696
	ds_load_u8 v197, v168 offset:1776
	ds_load_u8 v199, v168 offset:1712
	ds_load_u8 v239, v168 offset:1664
	ds_load_u8 v242, v168 offset:1600
	ds_load_u8 v209, v168 offset:1616
	ds_load_u8 v210, v168 offset:1552
	ds_load_u8 v207, v168 offset:1632
	ds_load_u8 v208, v168 offset:1568
	ds_load_u8 v205, v168 offset:1648
	ds_load_u8 v206, v168 offset:1584
	.loc	1 976 38                        ; ragged.py:976:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v174, v143
	ds_store_b8_d16_hi v174, v143 offset:256
	ds_store_b8 v174, v144 offset:512
	ds_store_b8 v174, v146 offset:1024
	ds_store_b8_d16_hi v174, v146 offset:1280
	ds_store_b8 v174, v147 offset:1536
	ds_store_b8 v174, v148 offset:2048
	ds_store_b8_d16_hi v174, v148 offset:2304
	ds_store_b8 v174, v149 offset:2560
	ds_store_b8 v174, v150 offset:3072
	ds_store_b8_d16_hi v174, v150 offset:3328
	ds_store_b8 v174, v151 offset:3584
	ds_store_b8 v174, v152 offset:4096
	ds_store_b8_d16_hi v174, v152 offset:4352
	ds_store_b8 v174, v153 offset:4608
	ds_store_b8 v174, v154 offset:5120
	ds_store_b8_d16_hi v174, v154 offset:5376
	ds_store_b8 v174, v155 offset:5632
	ds_store_b8 v174, v156 offset:6144
	ds_store_b8_d16_hi v174, v156 offset:6400
	ds_store_b8 v174, v157 offset:6656
	ds_store_b8 v174, v158 offset:7168
	ds_store_b8_d16_hi v174, v158 offset:7424
	ds_store_b8 v174, v159 offset:7680
	ds_store_b8_d16_hi v175, v144
	ds_store_b8_d16_hi v176, v147
	ds_store_b8_d16_hi v179, v149
	ds_store_b8_d16_hi v180, v151
	ds_store_b8_d16_hi v181, v153
	ds_store_b8_d16_hi v182, v155
	ds_store_b8_d16_hi v183, v157
	ds_store_b8_d16_hi v184, v159
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 31                        ; ragged.py:977:31
	ds_load_u8 v143, v169 offset:1280
	ds_load_u8 v144, v169 offset:1024
	ds_load_u8 v146, v169 offset:1792
	ds_load_u8 v147, v169 offset:1536
	ds_load_u8 v148, v169 offset:1408
	ds_load_u8 v149, v169 offset:1152
	v_perm_b32 v101, v126, v125, 0xc0c0004
	v_perm_b32 v103, v124, v123, 0xc0c0004
	v_perm_b32 v100, v102, v100, 0xc0c0004
	v_perm_b32 v102, v254, v253, 0xc0c0004
	v_perm_b32 v107, v109, v107, 0xc0c0004
	v_perm_b32 v99, v99, v185, 0xc0c0004
	v_perm_b32 v0, v0, v249, 0xc0c0004
	v_perm_b32 v109, v219, v218, 0xc0c0004
	.loc	1 987 21                        ; ragged.py:987:21
	s_add_i32 s1, s0, 32
	.loc	1 957 23                        ; ragged.py:957:23
	s_cmp_lt_i32 s0, 32
	.loc	1 977 31                        ; ragged.py:977:31
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v144, v147, v146, 0xc0c0004
	ds_load_u8 v146, v169 offset:256
	ds_load_u8 v147, v169
	ds_load_u8 v150, v169 offset:768
	ds_load_u8 v151, v169 offset:512
	ds_load_u8 v152, v169 offset:384
	ds_load_u8 v153, v169 offset:128
	v_lshl_or_b32 v144, v144, 16, v143
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v147, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v147, 16, v146
	v_perm_b32 v146, v149, v148, 0xc0c0004
	ds_load_u8 v147, v169 offset:1664
	ds_load_u8 v148, v169 offset:1920
	ds_load_u8 v149, v169 offset:640
	ds_load_u8 v150, v169 offset:896
	v_wmma_i32_16x16x16_iu4 v[1:8], v[143:144], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[143:144], v[115:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[143:144], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[143:144], v[127:128], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v147, v147, v148, 0xc0c0004
	v_perm_b32 v148, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v149, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v147, v147, 16, v146
	v_lshl_or_b32 v146, v149, 16, v148
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[146:147], v[97:98], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v97, v122, v121, 0xc0c0004
	v_perm_b32 v98, v120, v119, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[146:147], v[115:116], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[146:147], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[146:147], v[127:128], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v98, v98, 16, v97
	v_lshl_or_b32 v97, v103, 16, v101
	ds_load_u8 v101, v169 offset:3328
	ds_load_u8 v103, v169 offset:3072
	ds_load_u8 v108, v169 offset:3840
	ds_load_u8 v110, v169 offset:3584
	ds_load_u8 v117, v169 offset:3456
	ds_load_u8 v119, v169 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v101, v103, v101, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v110, v108, 0xc0c0004
	ds_load_u8 v108, v169 offset:2304
	ds_load_u8 v110, v169 offset:2048
	ds_load_u8 v115, v169 offset:2816
	ds_load_u8 v116, v169 offset:2560
	ds_load_u8 v120, v169 offset:2432
	ds_load_u8 v121, v169 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v108, v110, v108, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v110, v116, v115, 0xc0c0004
	v_lshl_or_b32 v116, v103, 16, v101
	v_perm_b32 v101, v119, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v115, v110, 16, v108
	ds_load_u8 v103, v169 offset:3712
	ds_load_u8 v108, v169 offset:3968
	ds_load_u8 v110, v169 offset:2688
	ds_load_u8 v117, v169 offset:2944
	v_wmma_i32_16x16x16_iu4 v[1:8], v[115:116], v[97:98], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v103, v108, 0xc0c0004
	v_perm_b32 v108, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v110, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v120, v103, 16, v101
	v_perm_b32 v101, v173, v171, 0xc0c0004
	v_perm_b32 v103, v251, v250, 0xc0c0004
	v_lshl_or_b32 v119, v110, 16, v108
	v_perm_b32 v108, v112, v111, 0xc0c0004
	v_perm_b32 v110, v213, v212, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v101, v103, 16, v101
	v_perm_b32 v103, v246, v245, 0xc0c0004
	v_lshl_or_b32 v100, v100, 16, v108
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[97:98], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v97, v252, v114, 0xc0c0004
	v_perm_b32 v98, v113, v106, 0xc0c0004
	v_lshl_or_b32 v103, v103, 16, v102
	v_lshl_or_b32 v102, v99, 16, v107
	v_perm_b32 v99, v105, v104, 0xc0c0004
	v_perm_b32 v104, v172, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[100:101], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[119:120], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[115:116], v[102:103], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[119:120], v[102:103], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v104, 16, v99
	v_perm_b32 v99, v243, v186, 0xc0c0004
	v_lshl_or_b32 v98, v98, 16, v97
	v_perm_b32 v105, v248, v247, 0xc0c0004
	v_perm_b32 v107, v244, v118, 0xc0c0004
	v_perm_b32 v108, v215, v214, 0xc0c0004
	v_lshl_or_b32 v97, v0, 16, v99
	ds_load_u8 v0, v169 offset:5376
	ds_load_u8 v99, v169 offset:5120
	ds_load_u8 v100, v169 offset:5888
	ds_load_u8 v101, v169 offset:5632
	ds_load_u8 v102, v169 offset:5504
	ds_load_u8 v103, v169 offset:5248
	v_lshl_or_b32 v105, v107, 16, v105
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[115:116], v[104:105], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[119:120], v[104:105], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v99, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v101, v100, 0xc0c0004
	ds_load_u8 v100, v169 offset:4352
	ds_load_u8 v101, v169 offset:4096
	ds_load_u8 v104, v169 offset:4864
	ds_load_u8 v105, v169 offset:4608
	ds_load_u8 v106, v169 offset:4480
	ds_load_u8 v107, v169 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v101, v101, v100, 0xc0c0004
	v_lshl_or_b32 v100, v99, 16, v0
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	v_perm_b32 v0, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v107, v106, 0xc0c0004
	v_perm_b32 v105, v224, v223, 0xc0c0004
	v_perm_b32 v106, v217, v216, 0xc0c0004
	v_lshl_or_b32 v99, v104, 16, v101
	ds_load_u8 v101, v169 offset:5760
	ds_load_u8 v102, v169 offset:6016
	v_perm_b32 v107, v222, v221, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[99:100], v[97:98], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v101, v102, 0xc0c0004
	ds_load_u8 v102, v169 offset:4736
	ds_load_u8 v104, v169 offset:4992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v102, v104, 0xc0c0004
	v_lshl_or_b32 v102, v101, 16, v0
	v_perm_b32 v0, v241, v240, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v101, v104, 16, v103
	v_perm_b32 v103, v233, v231, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[97:98], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v104, v103, 16, v0
	v_lshl_or_b32 v103, v106, 16, v105
	v_perm_b32 v0, v238, v237, 0xc0c0004
	v_perm_b32 v105, v230, v228, 0xc0c0004
	v_perm_b32 v97, v227, v220, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[103:104], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[103:104], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v106, v105, 16, v0
	v_lshl_or_b32 v105, v108, 16, v107
	v_perm_b32 v0, v235, v234, 0xc0c0004
	v_perm_b32 v107, v226, v225, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[99:100], v[105:106], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[101:102], v[105:106], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v108, v107, 16, v0
	v_lshl_or_b32 v107, v110, 16, v109
	v_perm_b32 v0, v236, v229, 0xc0c0004
	v_perm_b32 v109, v188, v187, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[99:100], v[107:108], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v99, v211, v242, 0xc0c0004
	v_perm_b32 v100, v239, v232, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[101:102], v[107:108], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v97, 16, v0
	v_perm_b32 v108, v202, v201, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v97, v100, 16, v99
	ds_load_u8 v0, v169 offset:7424
	ds_load_u8 v99, v169 offset:7168
	ds_load_u8 v100, v169 offset:7936
	ds_load_u8 v101, v169 offset:7680
	ds_load_u8 v102, v169 offset:7552
	ds_load_u8 v103, v169 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v99, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v101, v100, 0xc0c0004
	ds_load_u8 v100, v169 offset:6400
	ds_load_u8 v101, v169 offset:6144
	ds_load_u8 v104, v169 offset:6912
	ds_load_u8 v105, v169 offset:6656
	ds_load_u8 v106, v169 offset:6528
	ds_load_u8 v107, v169 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v101, v101, v100, 0xc0c0004
	v_lshl_or_b32 v100, v99, 16, v0
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	v_perm_b32 v0, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v107, v106, 0xc0c0004
	v_perm_b32 v105, v210, v209, 0xc0c0004
	v_perm_b32 v106, v204, v203, 0xc0c0004
	v_lshl_or_b32 v99, v104, 16, v101
	ds_load_u8 v101, v169 offset:7808
	ds_load_u8 v102, v169 offset:8064
	v_perm_b32 v107, v208, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[99:100], v[97:98], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v101, v102, 0xc0c0004
	ds_load_u8 v102, v169 offset:6784
	ds_load_u8 v104, v169 offset:7040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v102, v104, 0xc0c0004
	v_lshl_or_b32 v102, v101, 16, v0
	v_perm_b32 v0, v200, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v101, v104, 16, v103
	v_perm_b32 v103, v193, v191, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[97:98], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v104, v103, 16, v0
	v_lshl_or_b32 v103, v106, 16, v105
	v_perm_b32 v0, v196, v195, 0xc0c0004
	v_perm_b32 v105, v190, v189, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[103:104], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[103:104], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v106, v105, 16, v0
	v_lshl_or_b32 v105, v108, 16, v107
	v_perm_b32 v0, v206, v205, 0xc0c0004
	v_perm_b32 v107, v199, v197, 0xc0c0004
	v_perm_b32 v108, v194, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[99:100], v[105:106], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[101:102], v[105:106], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v107, v107, 16, v0
	v_lshl_or_b32 v108, v109, 16, v108
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[99:100], v[107:108], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[101:102], v[107:108], v[57:64] neg_lo:[1,1,0]
	.loc	1 957 23                        ; ragged.py:957:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_readlane_b32 s44, v255, 19
	v_readlane_b32 s8, v255, 14
	.loc	1 988 27 is_stmt 1              ; ragged.py:988:27
	v_cvt_f32_i32_e32 v127, v1
	v_cvt_f32_i32_e32 v126, v2
	v_cvt_f32_i32_e32 v125, v3
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
	v_readlane_b32 s19, v255, 7
	v_readlane_b32 s24, v255, 8
	v_readlane_b32 s25, v255, 9
	v_readlane_b32 s26, v255, 10
	v_readlane_b32 s48, v255, 23
	v_readlane_b32 s49, v255, 24
	v_readlane_b32 s0, v255, 11
	v_readlane_b32 s4, v255, 18
	v_readlane_b32 s9, v255, 15
	v_readlane_b32 s2, v255, 12
	v_readlane_b32 s3, v255, 13
	v_readlane_b32 s45, v255, 20
	v_readlane_b32 s46, v255, 21
	v_readlane_b32 s47, v255, 22
	v_readlane_b32 s50, v255, 25
	v_readlane_b32 s51, v255, 26
	v_readlane_b32 s10, v255, 16
	v_readlane_b32 s11, v255, 17
	s_branch .LBB0_5
.LBB0_10:                               ; %Flow382
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v0, off, off offset:260
	scratch_load_b32 v12, off, off offset:264
	scratch_load_b32 v27, off, off
	scratch_load_b32 v63, off, off offset:4
	scratch_load_b32 v64, off, off offset:8
	scratch_load_b32 v65, off, off offset:12
	scratch_load_b32 v66, off, off offset:16
	scratch_load_b32 v67, off, off offset:20
	v_readlane_b32 s20, v255, 0
	v_readlane_b32 s21, v255, 1
	v_readlane_b32 s15, v255, 4
	v_readlane_b32 s16, v255, 6
	v_readlane_b32 s22, v255, 2
	v_readlane_b32 s23, v255, 3
	s_waitcnt vmcnt(7)
	v_and_b32_e32 v19, 15, v0
.LBB0_11:                               ; %._crit_edge16
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_mul_i32 s2, s16, s43
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	s_waitcnt vmcnt(6)
	v_and_or_b32 v4, v0, 1, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v7, 0x88, v4
	v_or_b32_e32 v8, 0x86, v4
	v_or_b32_e32 v6, 0x8a, v4
	v_or_b32_e32 v0, 0x8e, v4
	v_or_b32_e32 v5, 0x8c, v4
	v_or_b32_e32 v9, 0x84, v4
	v_or_b32_e32 v10, 0x82, v4
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v11, s15, v7
	v_or_b32_e32 v12, s15, v8
	v_or_b32_e32 v3, s15, v6
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v15, 12, v4
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s15, v0
	v_or_b32_e32 v2, s15, v5
	v_or_b32_e32 v13, s15, v9
	v_or_b32_e32 v14, s15, v10
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s6, s43, v11
	v_cmp_gt_i32_e64 s7, s43, v12
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v11, 0x80, v4
	v_or_b32_e32 v12, 14, v4
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s1, s43, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v3, s15, v15
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e32 vcc_lo, s43, v1
	v_cmp_gt_i32_e64 s0, s43, v2
	v_cmp_gt_i32_e64 s8, s43, v13
	v_cmp_gt_i32_e64 s9, s43, v14
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s15, v11
	v_or_b32_e32 v2, s15, v12
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v13, 10, v4
	v_or_b32_e32 v14, 8, v4
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s43, v3
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mul_lo_u32 v3, s43, v19
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s43, v1
	v_cmp_gt_i32_e64 s11, s43, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s15, v13
	v_or_b32_e32 v2, s15, v14
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v16, 6, v4
	v_or_b32_e32 v18, 2, v4
	v_or_b32_e32 v17, 4, v4
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v21, s15, v4
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s43, v1
	v_cmp_gt_i32_e64 s14, s43, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v2, s15, v16
	v_or_b32_e32 v20, s15, v18
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add3_u32 v1, s2, s15, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v19, s15, v17
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s18, s43, v21
	v_cmp_gt_i32_e64 s15, s43, v2
	v_cmp_gt_i32_e64 s17, s43, v20
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v1, v4, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s16, s43, v19
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v1, v18, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s26, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v1, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s26, s17
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add_nc_u32_e32 v19, s39, v1
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v23, 0x80000000, v3, s3
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s26, s16
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mad_u64_u32 v[2:3], null, s43, 48, v[1:2]
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v3, v1, v16, 2
	s_waitcnt vmcnt(0)
	s_clause 0x2
	buffer_store_b32 v67, v22, s[20:23], 0 offen
	buffer_store_b32 v66, v23, s[20:23], 0 offen
	buffer_store_b32 v65, v21, s[20:23], 0 offen
	v_add_lshl_u32 v21, v1, v14, 2
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s26, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v22, v1, v13, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s26, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v1, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s26, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v64, v3, s[20:23], 0 offen
	buffer_store_b32 v63, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s26, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v1, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v1, v11, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s26, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v27, v22, s[20:23], 0 offen
	buffer_store_b32 v164, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v1, v10, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s26, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v1, v9, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s26, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v163, v3, s[20:23], 0 offen
	buffer_store_b32 v162, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s26, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v1, v8, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v1, v7, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s26, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v161, v22, s[20:23], 0 offen
	buffer_store_b32 v160, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v1, v6, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s26, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v1, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s26, s1
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_lshl_add_u32 v20, s43, 5, v1
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_add_lshl_u32 v1, v1, v0, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s26, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v127, v3, s[20:23], 0 offen
	buffer_store_b32 v126, v21, s[20:23], 0 offen
	v_add_lshl_u32 v3, v19, v4, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s26, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v125, v22, s[20:23], 0 offen
	buffer_store_b32 v124, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v123, v1, s[20:23], 0 offen
	buffer_store_b32 v122, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v19, v14, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v121, v21, s[20:23], 0 offen
	buffer_store_b32 v120, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v15, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v119, v1, s[20:23], 0 offen
	buffer_store_b32 v118, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v117, v21, s[20:23], 0 offen
	buffer_store_b32 v116, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v115, v1, s[20:23], 0 offen
	buffer_store_b32 v114, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v113, v21, s[20:23], 0 offen
	buffer_store_b32 v62, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v5, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v61, v1, s[20:23], 0 offen
	buffer_store_b32 v60, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v19, v0, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v20, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v59, v21, s[20:23], 0 offen
	buffer_store_b32 v58, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v57, v1, s[20:23], 0 offen
	buffer_store_b32 v56, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v20, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v55, v19, s[20:23], 0 offen
	buffer_store_b32 v54, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v15, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v53, v1, s[20:23], 0 offen
	buffer_store_b32 v52, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v51, v19, s[20:23], 0 offen
	buffer_store_b32 v50, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v49, v1, s[20:23], 0 offen
	buffer_store_b32 v48, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v47, v19, s[20:23], 0 offen
	buffer_store_b32 v46, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v45, v1, s[20:23], 0 offen
	buffer_store_b32 v44, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v20, v0, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v2, v4, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v4, v2, v18, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v17, v2, v17, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v43, v19, s[20:23], 0 offen
	buffer_store_b32 v42, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v41, v1, s[20:23], 0 offen
	buffer_store_b32 v40, v3, s[20:23], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v1, v2, v16, 2
	v_add_lshl_u32 v3, v2, v14, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v39, v4, s[20:23], 0 offen
	buffer_store_b32 v38, v17, s[20:23], 0 offen
	v_add_lshl_u32 v4, v2, v13, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v13, v2, v15, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v37, v1, s[20:23], 0 offen
	buffer_store_b32 v36, v3, s[20:23], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v2, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_add_lshl_u32 v3, v2, v11, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v35, v4, s[20:23], 0 offen
	buffer_store_b32 v34, v13, s[20:23], 0 offen
	v_add_lshl_u32 v4, v2, v10, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v9, v2, v9, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v32, v1, s[20:23], 0 offen
	buffer_store_b32 v31, v3, s[20:23], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v2, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v3, v2, v7, 2
	s_clause 0x1
	buffer_store_b32 v30, v4, s[20:23], 0 offen
	buffer_store_b32 v29, v9, s[20:23], 0 offen
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v4, v2, v6, 2
	v_add_lshl_u32 v5, v2, v5, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v0, v2, v0, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s24, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, s24, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 vcc_lo, s24, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v28, v1, s[20:23], 0 offen
	buffer_store_b32 v24, v3, s[20:23], 0 offen
	buffer_store_b32 v33, v2, s[20:23], 0 offen
	buffer_store_b32 v26, v4, s[20:23], 0 offen
	buffer_store_b32 v25, v0, s[20:23], 0 offen
	.loc	1 856 5                         ; ragged.py:856:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 272
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
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 272
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14784
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 272
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 272
    .sgpr_count:     107
    .sgpr_spill_count: 28
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 73
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
