	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 679 0                         ; ragged.py:679:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[26:27], s[0:1], 0x54
.Ltmp0:
	.loc	1 707 25 prologue_end           ; ragged.py:707:25
	s_abs_i32 s7, s2
	.loc	1 718 18                        ; ragged.py:718:18
	v_mov_b32_e32 v91, 0
	v_and_b32_e32 v141, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:705:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:705:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 707 25 is_stmt 1              ; ragged.py:707:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 709 33                        ; ragged.py:709:33
	s_sub_i32 s4, s27, s8
	.loc	1 710 24                        ; ragged.py:710:24
	s_mul_i32 s3, s8, s3
	.loc	1 709 22                        ; ragged.py:709:22
	s_min_i32 s9, s4, 1
	.loc	1 710 24                        ; ragged.py:710:24
	s_sub_i32 s2, s2, s3
	.loc	1 712 17                        ; ragged.py:712:17
	s_abs_i32 s10, s9
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 718 32                        ; ragged.py:718:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 712 17                        ; ragged.py:712:17
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s9
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s11, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s11
	s_sub_i32 s12, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 34                        ; ragged.py:711:34
	s_mul_i32 s3, s12, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 711 20 is_stmt 0              ; ragged.py:711:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 714 20 is_stmt 1              ; ragged.py:714:20
	s_ashr_i32 s3, s2, 31
	.loc	1 715 23                        ; ragged.py:715:23
	s_lshl_b64 s[20:21], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s20
	s_addc_u32 s3, s5, s21
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 716 24                        ; ragged.py:716:24
	s_add_u32 s2, s6, s20
	s_addc_u32 s3, s7, s21
	.loc	1 717 22                        ; ragged.py:717:22
	s_add_u32 s4, s8, s20
	s_addc_u32 s5, s9, s21
	.loc	1 716 24                        ; ragged.py:716:24
	s_load_b64 s[28:29], s[2:3], 0x0
	.loc	1 717 22                        ; ragged.py:717:22
	s_load_b64 s[30:31], s[4:5], 0x0
	.loc	1 718 18                        ; ragged.py:718:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s10, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s11, 0, s2
	.loc	1 799 25                        ; ragged.py:799:25
	v_add_nc_u32_e32 v107, s10, v1
	.loc	1 718 18                        ; ragged.py:718:18
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[2:3]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s2, s[30:31], v[2:3]
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s3, s[28:29], v[4:5]
	v_cmp_le_i64_e64 s6, s[28:29], v[6:7]
	v_cmp_le_i64_e64 s7, s[28:29], v[8:9]
	.loc	1 720 48                        ; ragged.py:720:48
	v_cmp_gt_i64_e64 s4, s[30:31], v[4:5]
	v_cmp_gt_i64_e64 s8, s[30:31], v[6:7]
	v_cmp_gt_i64_e64 s9, s[30:31], v[8:9]
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 769 19 is_stmt 1              ; ragged.py:769:19
	s_cmp_gt_i32 s26, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v20, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; ragged.py:0:9
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr20
.LBB0_3:                                ; %Flow91
	s_load_b64 s[24:25], s[0:1], 0x40
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v135, 0xf0, v0
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v112, 16, v107
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v113, 32, v107
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v114, 48, v107
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v127, 0
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v158, 0
	v_mov_b32_e32 v160, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s27, s12, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s9, s[0:1], 0x50
	s_load_b32 s34, s[0:1], 0x48
	.loc	1 718 18 is_stmt 1              ; ragged.py:718:18
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v4, 63, v0
	v_dual_mov_b32 v157, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	.loc	1 719 36                        ; ragged.py:719:36
	v_lshrrev_b32_e32 v5, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 718 18                        ; ragged.py:718:18
	v_add_co_u32 v2, s0, s10, v4
	v_add_co_ci_u32_e64 v3, null, s11, 0, s0
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v161, s27, v0
	v_dual_mov_b32 v159, 0 :: v_dual_and_b32 v6, 1, v0
	.loc	1 766 28                        ; ragged.py:766:28
	v_lshrrev_b32_e32 v7, 3, v0
	v_bfe_u32 v0, v0, 4, 1
	v_dual_mov_b32 v153, 0 :: v_dual_and_b32 v10, 24, v8
	.loc	1 714 20                        ; ragged.py:714:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s20
	s_addc_u32 s1, s7, s21
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v9, s27, v5
	.loc	1 806 25                        ; ragged.py:806:25
	s_load_b32 s11, s[0:1], 0x0
	v_dual_mov_b32 v155, 0 :: v_dual_lshlrev_b32 v162, 4, v6
	v_xor3_b32 v5, v5, v7, v8
	v_lshl_or_b32 v1, v1, 5, v10
	v_and_or_b32 v0, v8, 30, v0
	v_dual_mov_b32 v147, 0 :: v_dual_lshlrev_b32 v20, 2, v135
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v6, 5, v6
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v11, 0x80, v9
	.loc	1 780 39                        ; ragged.py:780:39
	s_mul_i32 s20, s9, s33
	v_dual_mov_b32 v160, 0 :: v_dual_and_b32 v163, 24, v7
	v_lshl_add_u32 v7, v4, 5, 0
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s6, s[28:29], v[2:3]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s7, s[30:31], v[2:3]
	v_dual_mov_b32 v151, 0 :: v_dual_and_b32 v2, 24, v5
	v_xor_b32_e32 v3, 8, v1
	.loc	1 780 39 is_stmt 1              ; ragged.py:780:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s20, s20, s11
	v_xor_b32_e32 v5, 16, v1
	v_dual_mov_b32 v149, 0 :: v_dual_lshlrev_b32 v166, 2, v0
	v_xor_b32_e32 v0, 0x408, v1
	v_dual_mov_b32 v143, 0 :: v_dual_and_b32 v8, 28, v8
	v_add3_u32 v6, 0, v20, v6
	v_xor_b32_e32 v10, 24, v1
	v_xor_b32_e32 v12, 0x208, v1
	v_xor_b32_e32 v13, 0x218, v1
	v_xor_b32_e32 v14, 0x210, v1
	v_xor_b32_e32 v15, 0x410, v1
	v_xor_b32_e32 v16, 0x418, v1
	v_xor_b32_e32 v17, 0x618, v1
	v_xor_b32_e32 v18, 0x610, v1
	v_xor_b32_e32 v19, 0x608, v1
	v_dual_mov_b32 v139, 0 :: v_dual_lshlrev_b32 v20, 1, v135
	s_mov_b32 s8, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	v_mad_u64_u32 v[77:78], null, v9, s9, s[20:21]
	v_mad_u64_u32 v[78:79], null, s9, v11, s[20:21]
	.loc	1 806 25                        ; ragged.py:806:25
	s_mul_i32 s35, s26, s11
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v76, s10, v4
	s_mov_b32 s20, s12
	s_mov_b32 s21, s13
	s_mov_b32 s28, s14
	s_mov_b32 s29, s15
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v168, v7, v2
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v169, 0, v1
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v170, 0, v3
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v171, 0, v5
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v178, 0, v0
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v182, v6, v8
	v_mov_b32_e32 v0, s8
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s0, s33, v9
	.loc	1 766 28                        ; ragged.py:766:28
	v_or_b32_e32 v164, 6, v163
	v_or_b32_e32 v165, 7, v163
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s1, s33, v11
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s6, s6, s7
	v_xor_b32_e32 v167, 4, v166
	v_cmp_eq_u32_e64 s7, 0, v141
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v172, 0, v10
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v173, 0, v12
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v174, 0, v13
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v175, 0, v14
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v176, 0, v15
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v177, 0, v16
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v179, 0, v17
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v180, 0, v18
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v181, 0, v19
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v183, 0, v20
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v1, s9
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v3, s11
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v5, s13
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v7, s15
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v2, s10
	v_mov_b32_e32 v4, s12
	v_mov_b32_e32 v6, s14
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s36, s16
	s_mov_b32 s37, s17
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v161
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 766 28                        ; ragged.py:766:28
	v_or_b32_e32 v8, 4, v163
	v_or_b32_e32 v9, 5, v163
	v_or_b32_e32 v10, 3, v163
	.loc	1 771 28                        ; ragged.py:771:28
	s_lshl_b32 s9, s8, 5
	.loc	1 766 28                        ; ragged.py:766:28
	v_or_b32_e32 v11, 2, v163
	v_or_b32_e32 v12, 1, v163
	v_or_b32_e32 v13, s9, v162
	v_or_b32_e32 v17, s9, v8
	v_or_b32_e32 v14, s9, v165
	v_or_b32_e32 v18, s9, v9
	v_or_b32_e32 v15, s9, v164
	v_or_b32_e32 v19, s9, v10
	v_or_b32_e32 v16, s9, v163
	v_or_b32_e32 v20, s9, v11
	v_or_b32_e32 v21, s9, v12
	v_add_nc_u32_e32 v22, v77, v13
	v_add_nc_u32_e32 v23, v78, v13
	v_mad_u64_u32 v[12:13], null, v17, s34, v[76:77]
	v_mad_u64_u32 v[8:9], null, v14, s34, v[76:77]
	v_mad_u64_u32 v[13:14], null, v18, s34, v[76:77]
	v_mad_u64_u32 v[9:10], null, v15, s34, v[76:77]
	v_mad_u64_u32 v[14:15], null, v19, s34, v[76:77]
	v_mad_u64_u32 v[10:11], null, v16, s34, v[76:77]
	v_mad_u64_u32 v[15:16], null, v20, s34, v[76:77]
	v_mad_u64_u32 v[16:17], null, v21, s34, v[76:77]
	v_cndmask_b32_e64 v11, 0x80000000, v22, s0
	v_cndmask_b32_e64 v18, 0x80000000, v8, s6
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	v_cndmask_b32_e64 v14, 0x80000000, v14, s6
	v_cndmask_b32_e64 v19, 0x80000000, v9, s6
	v_cndmask_b32_e64 v20, 0x80000000, v10, s6
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	v_cndmask_b32_e64 v15, 0x80000000, v15, s6
	v_cndmask_b32_e64 v17, 0x80000000, v23, s1
	.loc	1 784 34                        ; ragged.py:784:34
	buffer_load_b128 v[8:11], v11, s[28:31], 0 offen
	.loc	1 783 34                        ; ragged.py:783:34
	s_clause 0x7
	buffer_load_u8 v18, v18, s[20:23], 0 offen
	buffer_load_u8 v21, v13, s[20:23], 0 offen
	buffer_load_u8 v22, v14, s[20:23], 0 offen
	buffer_load_u8 v16, v16, s[20:23], 0 offen
	buffer_load_u8 v19, v19, s[20:23], 0 offen
	buffer_load_u8 v23, v12, s[20:23], 0 offen
	buffer_load_u8 v24, v15, s[20:23], 0 offen
	buffer_load_u8 v20, v20, s[20:23], 0 offen
	.loc	1 784 34                        ; ragged.py:784:34
	buffer_load_b128 v[12:15], v17, s[28:31], 0 offen
	.loc	1 783 34                        ; ragged.py:783:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 806 25                        ; ragged.py:806:25
	s_add_i32 s9, s8, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s33
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt vmcnt(9)
	ds_bpermute_b32 v194, v166, v8
	ds_bpermute_b32 v195, v166, v9
	ds_bpermute_b32 v198, v167, v8
	ds_bpermute_b32 v199, v167, v9
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v202, v166, v12
	ds_bpermute_b32 v203, v167, v12
	ds_bpermute_b32 v204, v166, v13
	ds_bpermute_b32 v205, v167, v13
	.loc	1 783 34                        ; ragged.py:783:34
	v_lshlrev_b16 v8.l, 8, v18.l
	v_lshlrev_b16 v8.h, 8, v21.l
	v_lshlrev_b16 v9.l, 8, v22.l
	v_lshlrev_b16 v9.h, 8, v16.l
	.loc	1 784 34                        ; ragged.py:784:34
	ds_bpermute_b32 v196, v166, v10
	ds_bpermute_b32 v197, v166, v11
	ds_bpermute_b32 v200, v167, v10
	ds_bpermute_b32 v201, v167, v11
	ds_bpermute_b32 v206, v166, v14
	ds_bpermute_b32 v207, v167, v14
	ds_bpermute_b32 v208, v166, v15
	ds_bpermute_b32 v209, v167, v15
	.loc	1 783 34                        ; ragged.py:783:34
	v_or_b16 v11.h, v19.l, v8.l
	v_or_b16 v11.l, v23.l, v8.h
	v_or_b16 v10.h, v24.l, v9.l
	v_or_b16 v10.l, v20.l, v9.h
	.loc	1 784 34                        ; ragged.py:784:34
	s_waitcnt lgkmcnt(13)
	v_cndmask_b32_e64 v85, v198, v194, s7
	s_waitcnt lgkmcnt(12)
	v_cndmask_b32_e64 v86, v199, v195, s7
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v89, v203, v202, s7
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v90, v205, v204, s7
	.loc	1 783 34                        ; ragged.py:783:34
	ds_store_b64 v168, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[12:13], v173
	ds_load_2addr_stride64_b64 v[8:11], v169 offset1:1
	ds_load_2addr_stride64_b64 v[72:75], v169 offset0:2 offset1:3
	ds_load_b64 v[14:15], v170
	ds_load_b64 v[184:185], v171
	ds_load_b64 v[79:80], v172
	ds_load_b64 v[24:25], v176
	ds_load_b64 v[26:27], v177
	ds_load_b64 v[81:82], v175
	ds_load_b64 v[188:189], v179
	ds_load_b64 v[190:191], v180
	ds_load_b64 v[192:193], v181
	ds_load_b64 v[83:84], v178
	.loc	1 784 34                        ; ragged.py:784:34
	v_cndmask_b32_e64 v87, v200, v196, s7
	v_cndmask_b32_e64 v88, v201, v197, s7
	v_cndmask_b32_e64 v186, v207, v206, s7
	v_cndmask_b32_e64 v187, v209, v208, s7
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[85:86], v[12:13], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[89:90], v[12:13], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[85:86], v[8:9], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[89:90], v[8:9], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[87:88], v[10:11], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[186:187], v[10:11], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[87:88], v[14:15], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[186:187], v[14:15], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[16:23], v[89:90], v[24:25], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[89:90], v[188:189], v[0:7] neg_lo:[1,1,0]
	.loc	1 784 34                        ; ragged.py:784:34
	v_cndmask_b32_e64 v89, v202, v203, s7
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[16:23], v[186:187], v[26:27], v[16:23] neg_lo:[1,1,0]
	.loc	1 784 34                        ; ragged.py:784:34
	v_cndmask_b32_e64 v90, v204, v205, s7
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[186:187], v[190:191], v[8:15] neg_lo:[1,1,0]
	.loc	1 784 34                        ; ragged.py:784:34
	v_cndmask_b32_e64 v186, v194, v198, s7
	v_cndmask_b32_e64 v187, v195, v199, s7
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[85:86], v[24:25], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[89:90], v[184:185], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[89:90], v[72:73], v[16:23] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[186:187], v[184:185], v[64:71] neg_lo:[1,1,0]
	.loc	1 783 34                        ; ragged.py:783:34
	ds_load_b64 v[184:185], v174
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[87:88], v[26:27], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[85:86], v[188:189], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[89:90], v[192:193], v[8:15] neg_lo:[1,1,0]
	.loc	1 784 34                        ; ragged.py:784:34
	v_cndmask_b32_e64 v85, v196, v200, s7
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[32:39], v[186:187], v[72:73], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[87:88], v[190:191], v[24:31] neg_lo:[1,1,0]
	.loc	1 799 25                        ; ragged.py:799:25
	v_mul_lo_u32 v72, v114, s26
	.loc	1 805 40                        ; ragged.py:805:40
	v_add_lshl_u32 v73, v161, s9, 1
	.loc	1 784 34                        ; ragged.py:784:34
	v_cndmask_b32_e64 v86, v197, v201, s7
	v_cndmask_b32_e64 v87, v206, v207, s7
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[24:31], v[186:187], v[192:193], v[24:31] neg_lo:[1,1,0]
	.loc	1 784 34                        ; ragged.py:784:34
	v_cndmask_b32_e64 v88, v208, v209, s7
	.loc	1 805 40                        ; ragged.py:805:40
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[64:71], v[85:86], v[79:80], v[64:71] neg_lo:[1,1,0]
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v72, s8, v72, 1
	.loc	1 785 31                        ; ragged.py:785:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[85:86], v[83:84], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[87:88], v[74:75], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[87:88], v[79:80], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[186:187], v[184:185], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[89:90], v[184:185], v[40:47] neg_lo:[1,1,0]
	.loc	1 799 25                        ; ragged.py:799:25
	v_mul_lo_u32 v184, v107, s26
	v_mul_lo_u32 v185, v112, s26
	v_mul_lo_u32 v186, v113, s26
	.loc	1 798 40                        ; ragged.py:798:40
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	.loc	1 785 31                        ; ragged.py:785:31
	v_wmma_i32_16x16x16_iu4 v[48:55], v[85:86], v[81:82], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[87:88], v[81:82], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[87:88], v[83:84], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[85:86], v[74:75], v[24:31] neg_lo:[1,1,0]
	.loc	1 798 40                        ; ragged.py:798:40
	v_add_lshl_u32 v89, s8, v184, 1
	v_add_lshl_u32 v90, s8, v185, 1
	v_add_lshl_u32 v184, s8, v186, 1
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 798 40                        ; ragged.py:798:40
	v_cndmask_b32_e64 v89, 0x80000000, v89, s5
	v_cndmask_b32_e64 v90, 0x80000000, v90, s4
	v_cndmask_b32_e64 v184, 0x80000000, v184, s3
	.loc	1 805 40                        ; ragged.py:805:40
	buffer_load_u16 v73, v73, s[16:19], 0 offen
	.loc	1 798 40                        ; ragged.py:798:40
	s_clause 0x3
	buffer_load_u16 v89, v89, s[36:39], 0 offen
	buffer_load_u16 v90, v90, s[36:39], 0 offen
	buffer_load_u16 v184, v184, s[36:39], 0 offen
	buffer_load_u16 v72, v72, s[36:39], 0 offen
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v75, v9
	v_cvt_f32_i32_e32 v81, v15
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v74, v8
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 810 21                        ; ragged.py:810:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 796 27                        ; ragged.py:796:27
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v79, v10
	v_cvt_f32_i32_e32 v80, v11
	.loc	1 812 17                        ; ragged.py:812:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 769 19                        ; ragged.py:769:19
	s_cmp_lg_u32 s8, s26
	.loc	1 798 40                        ; ragged.py:798:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v15, 16, v90
	v_lshlrev_b32_e32 v9, 16, v89
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v72, 16, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v50, v50, v15
	v_mul_f32_e32 v64, v64, v9
	v_dual_mul_f32 v49, v49, v15 :: v_dual_lshlrev_b32 v8, 16, v73
	v_dual_mul_f32 v66, v66, v9 :: v_dual_lshlrev_b32 v73, 16, v184
	v_dual_mul_f32 v65, v65, v9 :: v_dual_mul_f32 v24, v24, v72
	.loc	1 810 21                        ; ragged.py:810:21
	ds_store_b32 v182, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 803 21                        ; ragged.py:803:21
	v_dual_mul_f32 v67, v67, v9 :: v_dual_mul_f32 v26, v26, v72
	v_dual_mul_f32 v68, v68, v9 :: v_dual_mul_f32 v25, v25, v72
	v_dual_mul_f32 v69, v69, v9 :: v_dual_mul_f32 v52, v52, v15
	v_dual_mul_f32 v70, v70, v9 :: v_dual_mul_f32 v27, v27, v72
	v_dual_mul_f32 v71, v71, v9 :: v_dual_mul_f32 v54, v54, v15
	v_dual_mul_f32 v56, v56, v9 :: v_dual_mul_f32 v53, v53, v15
	v_dual_mul_f32 v57, v57, v9 :: v_dual_mul_f32 v28, v28, v72
	v_dual_mul_f32 v58, v58, v9 :: v_dual_mul_f32 v55, v55, v15
	v_dual_mul_f32 v59, v59, v9 :: v_dual_mul_f32 v30, v30, v72
	v_dual_mul_f32 v60, v60, v9 :: v_dual_mul_f32 v29, v29, v72
	v_dual_mul_f32 v61, v61, v9 :: v_dual_mul_f32 v40, v40, v15
	v_dual_mul_f32 v62, v62, v9 :: v_dual_mul_f32 v31, v31, v72
	v_dual_mul_f32 v63, v63, v9 :: v_dual_mul_f32 v42, v42, v15
	.loc	1 810 21                        ; ragged.py:810:21
	ds_load_b128 v[8:11], v183
	.loc	1 803 21                        ; ragged.py:803:21
	v_mul_f32_e32 v48, v48, v15
	v_dual_mul_f32 v51, v51, v15 :: v_dual_mul_f32 v32, v32, v73
	v_mul_f32_e32 v41, v41, v15
	v_dual_mul_f32 v33, v33, v73 :: v_dual_mul_f32 v74, v74, v72
	v_dual_mul_f32 v34, v34, v73 :: v_dual_mul_f32 v43, v43, v15
	v_dual_mul_f32 v35, v35, v73 :: v_dual_mul_f32 v80, v80, v72
	v_dual_mul_f32 v36, v36, v73 :: v_dual_mul_f32 v75, v75, v72
	v_dual_mul_f32 v37, v37, v73 :: v_dual_mul_f32 v44, v44, v15
	v_dual_mul_f32 v38, v38, v73 :: v_dual_mul_f32 v79, v79, v72
	v_dual_mul_f32 v39, v39, v73 :: v_dual_mul_f32 v46, v46, v15
	v_dual_mul_f32 v82, v16, v73 :: v_dual_mul_f32 v45, v45, v15
	v_dual_mul_f32 v83, v17, v73 :: v_dual_mul_f32 v184, v14, v72
	v_dual_mul_f32 v84, v18, v73 :: v_dual_mul_f32 v47, v47, v15
	v_dual_mul_f32 v85, v19, v73 :: v_dual_mul_f32 v90, v13, v72
	v_dual_mul_f32 v88, v22, v73 :: v_dual_mul_f32 v89, v12, v72
	.loc	1 810 21                        ; ragged.py:810:21
	ds_load_b128 v[12:15], v183 offset:16
	.loc	1 803 21                        ; ragged.py:803:21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v86, v20, v73 :: v_dual_fmac_f32 v159, v66, v10
	v_dual_mul_f32 v87, v21, v73 :: v_dual_fmac_f32 v158, v67, v11
	v_dual_mul_f32 v73, v23, v73 :: v_dual_mul_f32 v72, v81, v72
	.loc	1 810 21                        ; ragged.py:810:21
	ds_load_b128 v[16:19], v183 offset:512
	ds_load_b128 v[20:23], v183 offset:528
	.loc	1 811 17                        ; ragged.py:811:17
	v_dual_fmac_f32 v127, v64, v8 :: v_dual_fmac_f32 v160, v65, v9
	v_dual_fmac_f32 v145, v48, v8 :: v_dual_fmac_f32 v144, v49, v9
	v_dual_fmac_f32 v143, v50, v10 :: v_dual_fmac_f32 v142, v51, v11
	v_dual_fmac_f32 v126, v32, v8 :: v_dual_fmac_f32 v125, v33, v9
	v_dual_fmac_f32 v124, v34, v10 :: v_dual_fmac_f32 v123, v35, v11
	v_dual_fmac_f32 v106, v24, v8 :: v_dual_fmac_f32 v105, v25, v9
	v_dual_fmac_f32 v104, v26, v10 :: v_dual_fmac_f32 v103, v27, v11
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v157, v68, v12 :: v_dual_fmac_f32 v156, v69, v13
	v_dual_fmac_f32 v155, v70, v14 :: v_dual_fmac_f32 v154, v71, v15
	v_dual_fmac_f32 v140, v52, v12 :: v_dual_fmac_f32 v139, v53, v13
	v_dual_fmac_f32 v138, v54, v14 :: v_dual_fmac_f32 v137, v55, v15
	v_dual_fmac_f32 v122, v36, v12 :: v_dual_fmac_f32 v121, v37, v13
	v_dual_fmac_f32 v120, v38, v14 :: v_dual_fmac_f32 v119, v39, v15
	v_dual_fmac_f32 v102, v28, v12 :: v_dual_fmac_f32 v101, v29, v13
	v_dual_fmac_f32 v100, v30, v14 :: v_dual_fmac_f32 v99, v31, v15
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v153, v56, v16 :: v_dual_fmac_f32 v152, v57, v17
	v_dual_fmac_f32 v151, v58, v18 :: v_dual_fmac_f32 v150, v59, v19
	v_dual_fmac_f32 v136, v40, v16 :: v_dual_fmac_f32 v133, v42, v18
	v_dual_fmac_f32 v134, v41, v17 :: v_dual_fmac_f32 v95, v80, v19
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v132, v43, v19 :: v_dual_fmac_f32 v149, v60, v20
	v_dual_fmac_f32 v118, v82, v16 :: v_dual_fmac_f32 v117, v83, v17
	v_dual_fmac_f32 v116, v84, v18 :: v_dual_fmac_f32 v115, v85, v19
	v_dual_fmac_f32 v98, v74, v16 :: v_dual_fmac_f32 v97, v75, v17
	v_dual_fmac_f32 v96, v79, v18 :: v_dual_fmac_f32 v131, v44, v20
	v_dual_fmac_f32 v148, v61, v21 :: v_dual_fmac_f32 v147, v62, v22
	v_dual_fmac_f32 v146, v63, v23 :: v_dual_fmac_f32 v129, v46, v22
	v_dual_fmac_f32 v130, v45, v21 :: v_dual_fmac_f32 v111, v86, v20
	v_dual_fmac_f32 v128, v47, v23 :: v_dual_fmac_f32 v109, v88, v22
	v_dual_fmac_f32 v110, v87, v21 :: v_dual_fmac_f32 v91, v72, v23
	v_dual_fmac_f32 v108, v73, v23 :: v_dual_fmac_f32 v93, v90, v21
	v_fmac_f32_e32 v94, v89, v20
	v_fmac_f32_e32 v92, v184, v22
	.loc	1 769 19                        ; ragged.py:769:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_mov_b32_e32 v20, v141
.LBB0_7:                                ; %._crit_edge
	.loc	1 814 9 is_stmt 1               ; ragged.py:814:9
	v_bfe_u32 v21, v127, 16, 1
	v_bfe_u32 v23, v160, 16, 1
	v_bfe_u32 v25, v158, 16, 1
	v_bfe_u32 v24, v159, 16, 1
	v_cmp_o_f32_e64 s19, v127, v127
	v_add3_u32 v22, v127, v21, 0x7fff
	v_add3_u32 v23, v160, v23, 0x7fff
	v_cmp_o_f32_e64 s20, v160, v160
	v_add3_u32 v25, v158, v25, 0x7fff
	v_cmp_o_f32_e64 s22, v158, v158
	v_bfe_u32 v26, v157, 16, 1
	v_add3_u32 v24, v159, v24, 0x7fff
	v_cmp_o_f32_e64 s21, v159, v159
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s19
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s20
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s22
	v_add3_u32 v25, v157, v26, 0x7fff
	v_bfe_u32 v26, v155, 16, 1
	v_bfe_u32 v27, v154, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s21
	v_bfe_u32 v24, v156, 16, 1
	v_cmp_o_f32_e64 s19, v157, v157
	v_add3_u32 v26, v155, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v155, v155
	v_add3_u32 v27, v154, v27, 0x7fff
	v_cmp_o_f32_e64 s22, v154, v154
	v_add3_u32 v24, v156, v24, 0x7fff
	v_cmp_o_f32_e64 s20, v156, v156
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s19
	v_bfe_u32 v25, v153, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s22
	v_bfe_u32 v27, v152, 16, 1
	v_bfe_u32 v29, v150, 16, 1
	v_bfe_u32 v28, v151, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s20
	v_add3_u32 v25, v153, v25, 0x7fff
	v_cmp_o_f32_e64 s19, v153, v153
	v_add3_u32 v27, v152, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v152, v152
	v_add3_u32 v29, v150, v29, 0x7fff
	v_cmp_o_f32_e64 s22, v150, v150
	v_bfe_u32 v30, v149, 16, 1
	v_add3_u32 v28, v151, v28, 0x7fff
	v_cmp_o_f32_e64 s21, v151, v151
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s19
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s22
	v_add3_u32 v29, v149, v30, 0x7fff
	v_bfe_u32 v30, v147, 16, 1
	v_bfe_u32 v31, v146, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s21
	v_bfe_u32 v28, v148, 16, 1
	v_cmp_o_f32_e64 s19, v149, v149
	v_add3_u32 v30, v147, v30, 0x7fff
	v_cmp_o_f32_e64 s21, v147, v147
	v_add3_u32 v31, v146, v31, 0x7fff
	v_cmp_o_f32_e64 s22, v146, v146
	v_add3_u32 v28, v148, v28, 0x7fff
	v_cmp_o_f32_e64 s20, v148, v148
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s19
	v_bfe_u32 v29, v145, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s21
	v_cndmask_b16 v30.h, 0x7fff, v31.h, s22
	v_bfe_u32 v31, v144, 16, 1
	v_bfe_u32 v33, v142, 16, 1
	v_bfe_u32 v32, v143, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s20
	v_add3_u32 v29, v145, v29, 0x7fff
	v_cmp_o_f32_e64 s19, v145, v145
	v_add3_u32 v31, v144, v31, 0x7fff
	v_cmp_o_f32_e64 s20, v144, v144
	v_add3_u32 v33, v142, v33, 0x7fff
	v_cmp_o_f32_e64 s22, v142, v142
	v_bfe_u32 v34, v140, 16, 1
	v_add3_u32 v32, v143, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v143, v143
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s19
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s20
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s22
	v_add3_u32 v33, v140, v34, 0x7fff
	v_bfe_u32 v34, v138, 16, 1
	v_bfe_u32 v35, v137, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v139, 16, 1
	v_cmp_o_f32_e64 s19, v140, v140
	v_add3_u32 v34, v138, v34, 0x7fff
	v_cmp_o_f32_e64 s21, v138, v138
	v_add3_u32 v35, v137, v35, 0x7fff
	v_cmp_o_f32_e64 s22, v137, v137
	v_add3_u32 v32, v139, v32, 0x7fff
	v_cmp_o_f32_e64 s20, v139, v139
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s19
	v_bfe_u32 v33, v136, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s21
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s22
	v_bfe_u32 v35, v134, 16, 1
	v_bfe_u32 v37, v132, 16, 1
	v_bfe_u32 v36, v133, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s20
	v_add3_u32 v33, v136, v33, 0x7fff
	v_cmp_o_f32_e64 s19, v136, v136
	v_add3_u32 v35, v134, v35, 0x7fff
	v_cmp_o_f32_e64 s20, v134, v134
	v_add3_u32 v37, v132, v37, 0x7fff
	v_cmp_o_f32_e64 s22, v132, v132
	v_bfe_u32 v38, v131, 16, 1
	v_add3_u32 v36, v133, v36, 0x7fff
	v_cmp_o_f32_e64 s21, v133, v133
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s19
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s20
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s22
	v_add3_u32 v37, v131, v38, 0x7fff
	v_bfe_u32 v38, v129, 16, 1
	v_bfe_u32 v39, v128, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s21
	v_bfe_u32 v36, v130, 16, 1
	v_cmp_o_f32_e64 s19, v131, v131
	v_add3_u32 v38, v129, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v129, v129
	v_add3_u32 v39, v128, v39, 0x7fff
	v_cmp_o_f32_e64 s22, v128, v128
	v_add3_u32 v36, v130, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v130, v130
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s19
	v_bfe_u32 v37, v126, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_cndmask_b16 v38.h, 0x7fff, v39.h, s22
	v_bfe_u32 v39, v125, 16, 1
	v_bfe_u32 v41, v123, 16, 1
	v_bfe_u32 v40, v124, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s20
	v_add3_u32 v37, v126, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v126, v126
	v_add3_u32 v39, v125, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v125, v125
	v_add3_u32 v41, v123, v41, 0x7fff
	v_cmp_o_f32_e64 s22, v123, v123
	v_bfe_u32 v42, v122, 16, 1
	v_add3_u32 v40, v124, v40, 0x7fff
	v_cmp_o_f32_e64 s21, v124, v124
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s19
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s22
	v_add3_u32 v41, v122, v42, 0x7fff
	v_bfe_u32 v42, v120, 16, 1
	v_bfe_u32 v43, v119, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s21
	v_bfe_u32 v40, v121, 16, 1
	v_cmp_o_f32_e64 s19, v122, v122
	v_add3_u32 v42, v120, v42, 0x7fff
	v_cmp_o_f32_e64 s21, v120, v120
	v_add3_u32 v43, v119, v43, 0x7fff
	v_cmp_o_f32_e64 s22, v119, v119
	v_add3_u32 v40, v121, v40, 0x7fff
	v_cmp_o_f32_e64 s20, v121, v121
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s19
	v_bfe_u32 v41, v118, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s21
	v_cndmask_b16 v42.h, 0x7fff, v43.h, s22
	v_bfe_u32 v43, v117, 16, 1
	v_bfe_u32 v45, v115, 16, 1
	v_bfe_u32 v44, v116, 16, 1
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s20
	v_add3_u32 v41, v118, v41, 0x7fff
	v_cmp_o_f32_e64 s19, v118, v118
	v_add3_u32 v43, v117, v43, 0x7fff
	v_cmp_o_f32_e64 s20, v117, v117
	v_add3_u32 v45, v115, v45, 0x7fff
	v_cmp_o_f32_e64 s22, v115, v115
	v_bfe_u32 v46, v111, 16, 1
	v_add3_u32 v44, v116, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v116, v116
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s19
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s20
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s22
	v_add3_u32 v45, v111, v46, 0x7fff
	v_bfe_u32 v46, v109, 16, 1
	v_bfe_u32 v47, v108, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s21
	v_bfe_u32 v44, v110, 16, 1
	v_cmp_o_f32_e64 s19, v111, v111
	v_add3_u32 v46, v109, v46, 0x7fff
	v_cmp_o_f32_e64 s21, v109, v109
	v_add3_u32 v47, v108, v47, 0x7fff
	v_cmp_o_f32_e64 s22, v108, v108
	v_add3_u32 v44, v110, v44, 0x7fff
	v_cmp_o_f32_e64 s20, v110, v110
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s19
	v_bfe_u32 v45, v106, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s21
	v_cndmask_b16 v46.h, 0x7fff, v47.h, s22
	v_bfe_u32 v47, v105, 16, 1
	v_bfe_u32 v49, v103, 16, 1
	v_bfe_u32 v48, v104, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s20
	v_add3_u32 v45, v106, v45, 0x7fff
	v_cmp_o_f32_e64 s19, v106, v106
	v_add3_u32 v47, v105, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v105, v105
	v_add3_u32 v49, v103, v49, 0x7fff
	v_cmp_o_f32_e64 s22, v103, v103
	v_bfe_u32 v50, v102, 16, 1
	v_add3_u32 v48, v104, v48, 0x7fff
	v_cmp_o_f32_e64 s21, v104, v104
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s19
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s20
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s22
	v_add3_u32 v49, v102, v50, 0x7fff
	v_bfe_u32 v50, v100, 16, 1
	v_bfe_u32 v51, v99, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s21
	v_bfe_u32 v48, v101, 16, 1
	v_cmp_o_f32_e64 s19, v102, v102
	v_add3_u32 v50, v100, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v100, v100
	v_add3_u32 v51, v99, v51, 0x7fff
	v_cmp_o_f32_e64 s22, v99, v99
	v_add3_u32 v48, v101, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v101, v101
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s19
	v_bfe_u32 v49, v98, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s21
	v_cndmask_b16 v50.h, 0x7fff, v51.h, s22
	v_bfe_u32 v51, v97, 16, 1
	v_bfe_u32 v52, v96, 16, 1
	v_bfe_u32 v53, v95, 16, 1
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s20
	v_add3_u32 v49, v98, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v98, v98
	v_add3_u32 v51, v97, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v97, v97
	v_add3_u32 v52, v96, v52, 0x7fff
	v_cmp_o_f32_e64 s21, v96, v96
	v_add3_u32 v53, v95, v53, 0x7fff
	v_cmp_o_f32_e64 s22, v95, v95
	v_bfe_u32 v54, v94, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s19
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s20
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s21
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s22
	v_bfe_u32 v52, v93, 16, 1
	v_add3_u32 v53, v94, v54, 0x7fff
	v_bfe_u32 v54, v92, 16, 1
	v_bfe_u32 v55, v91, 16, 1
	v_cmp_o_f32_e64 s19, v94, v94
	v_add3_u32 v52, v93, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v93, v93
	v_add3_u32 v54, v92, v54, 0x7fff
	v_cmp_o_f32_e64 s21, v92, v92
	v_add3_u32 v55, v91, v55, 0x7fff
	v_cmp_o_f32_e64 s22, v91, v91
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s19
	v_cmp_eq_u32_e64 s19, 0, v20
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s20
	v_cndmask_b16 v20.l, 0x7fff, v54.h, s21
	v_cndmask_b16 v20.h, 0x7fff, v55.h, s22
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v53, v24, v22, s19
	v_cndmask_b32_e64 v22, v22, v24, s19
	v_cndmask_b32_e64 v24, v26, v23, s19
	v_cndmask_b32_e64 v23, v23, v26, s19
	v_cndmask_b32_e64 v26, v28, v25, s19
	v_cndmask_b32_e64 v25, v25, v28, s19
	v_cndmask_b32_e64 v28, v30, v27, s19
	v_cndmask_b32_e64 v27, v27, v30, s19
	v_cndmask_b32_e64 v30, v32, v29, s19
	v_cndmask_b32_e64 v29, v29, v32, s19
	v_cndmask_b32_e64 v32, v34, v31, s19
	v_cndmask_b32_e64 v31, v31, v34, s19
	v_cndmask_b32_e64 v34, v36, v33, s19
	v_cndmask_b32_e64 v33, v33, v36, s19
	v_cndmask_b32_e64 v36, v38, v35, s19
	v_cndmask_b32_e64 v35, v35, v38, s19
	v_cndmask_b32_e64 v38, v40, v37, s19
	v_cndmask_b32_e64 v37, v37, v40, s19
	v_cndmask_b32_e64 v40, v42, v39, s19
	v_cndmask_b32_e64 v39, v39, v42, s19
	v_cndmask_b32_e64 v42, v44, v41, s19
	v_cndmask_b32_e64 v41, v41, v44, s19
	v_cndmask_b32_e64 v44, v46, v43, s19
	v_cndmask_b32_e64 v43, v43, v46, s19
	v_cndmask_b32_e64 v46, v48, v45, s19
	v_cndmask_b32_e64 v45, v45, v48, s19
	v_cndmask_b32_e64 v48, v50, v47, s19
	v_cndmask_b32_e64 v47, v47, v50, s19
	v_cndmask_b32_e64 v50, v52, v49, s19
	v_cndmask_b32_e64 v49, v49, v52, s19
	v_cndmask_b32_e64 v52, v20, v51, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v20, v51, v20, s19
	v_cndmask_b32_e64 v51, 0x1054, v54, s19
	.loc	1 719 36                        ; ragged.py:719:36
	v_lshrrev_b32_e32 v0, 1, v135
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v19, v107, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	s_mov_b32 s20, 0x76543210
	v_lshl_or_b32 v51, v51, 8, v51
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v10, s27, v0
	.loc	1 814 9                         ; ragged.py:814:9
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 8, v54
	v_mov_b16_e32 v21.h, 0
	v_and_b32_e32 v51, 0x540054, v51
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v15, 1, v10
	v_or_b32_e32 v14, 2, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s18, s33, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_lshl_or_b32 v51, v51, 4, v51
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s17, s33, v15
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v84, v10, v19, 1
	v_lshl_or_b32 v54, v54, 4, v54
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s16, s33, v14
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v51, 0x5040504, v51
	v_add_lshl_u32 v85, v15, v19, 1
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v13, 3, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v37, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v41, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v45, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v47, v47, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v49, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v53, v51
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s18, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v86, v14, v19, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s17, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v12, 4, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s16, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v11, 5, v10
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s15, s33, v13
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v22, v22, v53, v54
	v_perm_b32 v53, v23, v24, v51
	v_perm_b32 v23, v23, v24, v54
	v_perm_b32 v24, v25, v26, v51
	v_perm_b32 v25, v25, v26, v54
	v_perm_b32 v26, v27, v28, v51
	v_perm_b32 v27, v27, v28, v54
	v_perm_b32 v28, v29, v30, v51
	v_perm_b32 v29, v29, v30, v54
	v_perm_b32 v30, v31, v32, v51
	v_perm_b32 v31, v31, v32, v54
	v_perm_b32 v32, v33, v34, v51
	v_perm_b32 v33, v33, v34, v54
	v_perm_b32 v34, v35, v36, v51
	v_perm_b32 v35, v35, v36, v54
	v_perm_b32 v36, v37, v38, v51
	v_perm_b32 v37, v37, v38, v54
	v_perm_b32 v38, v39, v40, v51
	v_perm_b32 v39, v39, v40, v54
	v_perm_b32 v40, v41, v42, v51
	v_perm_b32 v41, v41, v42, v54
	v_perm_b32 v42, v43, v44, v51
	v_perm_b32 v43, v43, v44, v54
	v_perm_b32 v44, v45, v46, v51
	v_perm_b32 v45, v45, v46, v54
	v_perm_b32 v46, v47, v48, v51
	v_perm_b32 v47, v47, v48, v54
	v_perm_b32 v48, v49, v50, v51
	v_perm_b32 v49, v49, v50, v54
	v_perm_b32 v50, v20, v52, v51
	v_mov_b16_e32 v51.l, v55.h
	v_mov_b16_e32 v51.h, v21.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v9, 6, v10
	.loc	1 814 9                         ; ragged.py:814:9
	buffer_store_b16 v55, v84, s[24:27], 0 offen
	v_add_lshl_u32 v55, v13, v19, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s14, s33, v12
	v_cmp_gt_i32_e64 s13, s33, v11
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v21.l, v22.h
	s_clause 0x1
	buffer_store_b16 v51, v85, s[24:27], 0 offen
	buffer_store_b16 v22, v86, s[24:27], 0 offen
	v_add_lshl_u32 v22, v12, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s15, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v8, 7, v10
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s12, s33, v9
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v51, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v11, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s14, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v7, 0x80, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v84, v9, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s13, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v6, 0x81, v10
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s11, s33, v8
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s12, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v5, 0x82, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v20, v20, v52, v54
	v_mov_b16_e32 v54.l, v53.h
	v_mov_b16_e32 v54.h, v21.h
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s10, s33, v7
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v52.h, v21.h
	v_mov_b16_e32 v56.h, v21.h
	v_mov_b16_e32 v57.h, v21.h
	v_mov_b16_e32 v58.h, v21.h
	v_mov_b16_e32 v59.h, v21.h
	v_mov_b16_e32 v60.h, v21.h
	v_mov_b16_e32 v61.h, v21.h
	v_mov_b16_e32 v62.h, v21.h
	v_mov_b16_e32 v63.h, v21.h
	v_mov_b16_e32 v64.h, v21.h
	v_mov_b16_e32 v65.h, v21.h
	v_mov_b16_e32 v66.h, v21.h
	v_mov_b16_e32 v67.h, v21.h
	v_mov_b16_e32 v68.h, v21.h
	v_mov_b16_e32 v69.h, v21.h
	v_mov_b16_e32 v70.h, v21.h
	v_mov_b16_e32 v71.h, v21.h
	v_mov_b16_e32 v72.h, v21.h
	v_mov_b16_e32 v73.h, v21.h
	v_mov_b16_e32 v74.h, v21.h
	v_mov_b16_e32 v75.h, v21.h
	v_mov_b16_e32 v76.h, v21.h
	v_mov_b16_e32 v77.h, v21.h
	v_mov_b16_e32 v78.h, v21.h
	v_mov_b16_e32 v79.h, v21.h
	v_mov_b16_e32 v80.h, v21.h
	v_mov_b16_e32 v81.h, v21.h
	v_mov_b16_e32 v82.h, v21.h
	v_mov_b16_e32 v83.h, v21.h
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	s_clause 0x1
	buffer_store_b16 v21, v51, s[24:27], 0 offen
	buffer_store_b16 v53, v22, s[24:27], 0 offen
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s9, s33, v6
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v22, v7, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s11, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v4, 0x83, v10
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s8, s33, v5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v52.l, v23.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[24:27], 0 offen
	buffer_store_b16 v23, v84, s[24:27], 0 offen
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s10, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v3, 0x84, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v51, v5, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s9, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v2, 0x85, v10
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s7, s33, v4
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s8, s5
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v1, 0x86, v10
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v57.l, v24.h
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s6, s33, v3
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v51, 0x80000000, v51, s19
	s_clause 0x1
	buffer_store_b16 v52, v21, s[24:27], 0 offen
	buffer_store_b16 v24, v22, s[24:27], 0 offen
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v0, 0x87, v10
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v22, v3, v19, 1
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v18, v112, s33
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s7, s5
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[24:27], 0 offen
	buffer_store_b16 v25, v51, s[24:27], 0 offen
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s6, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v56.l, v25.h
	v_add_lshl_u32 v24, v1, v19, 1
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v0
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s1, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v19, v0, v19, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s0, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[24:27], 0 offen
	buffer_store_b16 v26, v22, s[24:27], 0 offen
	v_add_lshl_u32 v21, v10, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, vcc_lo, s5
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v22, v15, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s18, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v58.l, v27.h
	s_clause 0x1
	buffer_store_b16 v59, v23, s[24:27], 0 offen
	buffer_store_b16 v27, v24, s[24:27], 0 offen
	v_add_lshl_u32 v23, v14, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s17, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v61.l, v28.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s16, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v58, v19, s[24:27], 0 offen
	buffer_store_b16 v28, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	v_add_lshl_u32 v19, v13, v18, 1
	v_add_lshl_u32 v21, v12, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s15, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v61, v22, s[24:27], 0 offen
	buffer_store_b16 v29, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v11, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s14, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v60.l, v29.h
	v_add_lshl_u32 v23, v9, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s13, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v63.l, v30.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s12, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v60, v19, s[24:27], 0 offen
	buffer_store_b16 v30, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	v_add_lshl_u32 v19, v8, v18, 1
	v_add_lshl_u32 v21, v7, v18, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s11, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v63, v22, s[24:27], 0 offen
	buffer_store_b16 v31, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s10, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v62.l, v31.h
	v_add_lshl_u32 v23, v5, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s9, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v65.l, v32.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s8, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v62, v19, s[24:27], 0 offen
	buffer_store_b16 v32, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	v_add_lshl_u32 v19, v4, v18, 1
	v_add_lshl_u32 v21, v3, v18, 1
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v17, v113, s33
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s7, s4
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v65, v22, s[24:27], 0 offen
	buffer_store_b16 v33, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v2, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s6, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v64.l, v33.h
	v_add_lshl_u32 v23, v1, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s1, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v18, v0, v18, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s5, s0, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v67.l, v34.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	s_clause 0x1
	buffer_store_b16 v64, v19, s[24:27], 0 offen
	buffer_store_b16 v34, v21, s[24:27], 0 offen
	v_add_lshl_u32 v19, v10, v17, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, vcc_lo, s4
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v21, v15, v17, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s18, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v66.l, v35.h
	s_clause 0x1
	buffer_store_b16 v67, v22, s[24:27], 0 offen
	buffer_store_b16 v35, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v14, v17, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s17, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v69.l, v36.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s16, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v66, v18, s[24:27], 0 offen
	buffer_store_b16 v36, v19, s[24:27], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_add_lshl_u32 v18, v13, v17, 1
	v_add_lshl_u32 v19, v12, v17, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s15, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[24:27], 0 offen
	buffer_store_b16 v37, v22, s[24:27], 0 offen
	v_add_lshl_u32 v21, v11, v17, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s14, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v68.l, v37.h
	v_add_lshl_u32 v22, v9, v17, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s13, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v71.l, v38.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s12, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v68, v18, s[24:27], 0 offen
	buffer_store_b16 v38, v19, s[24:27], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_add_lshl_u32 v18, v8, v17, 1
	v_add_lshl_u32 v19, v7, v17, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s11, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[24:27], 0 offen
	buffer_store_b16 v39, v22, s[24:27], 0 offen
	v_add_lshl_u32 v21, v6, v17, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s10, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v70.l, v39.h
	v_add_lshl_u32 v22, v5, v17, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s9, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v73.l, v40.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s8, s3
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v16, v114, s33
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	s_clause 0x1
	buffer_store_b16 v70, v18, s[24:27], 0 offen
	buffer_store_b16 v40, v19, s[24:27], 0 offen
	v_add_lshl_u32 v18, v4, v17, 1
	v_add_lshl_u32 v19, v3, v17, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s7, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[24:27], 0 offen
	buffer_store_b16 v41, v22, s[24:27], 0 offen
	v_add_lshl_u32 v21, v2, v17, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s6, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v22, v1, v17, 1
	v_add_lshl_u32 v17, v0, v17, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s1, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v10, v10, v16, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s4, s0, s3
	s_and_b32 s3, vcc_lo, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v72.l, v41.h
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s18, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v74.l, v43.h
	v_mov_b16_e32 v75.l, v42.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_add_lshl_u32 v15, v15, v16, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	v_add_lshl_u32 v14, v14, v16, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s17, s2
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x5
	buffer_store_b16 v72, v18, s[24:27], 0 offen
	buffer_store_b16 v42, v19, s[24:27], 0 offen
	buffer_store_b16 v75, v21, s[24:27], 0 offen
	buffer_store_b16 v43, v22, s[24:27], 0 offen
	buffer_store_b16 v74, v17, s[24:27], 0 offen
	buffer_store_b16 v44, v10, s[24:27], 0 offen
	v_add_lshl_u32 v10, v13, v16, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s16, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v12, v12, v16, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s15, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v11, v11, v16, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s14, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v9, v9, v16, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s13, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v8, v8, v16, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s12, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v7, v7, v16, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s11, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v6, v6, v16, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s10, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v5, v5, v16, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s9, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v4, v4, v16, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s8, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v3, v3, v16, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s7, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v2, v2, v16, 1
	v_add_lshl_u32 v1, v1, v16, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s6, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v0, v0, v16, 1
	v_mov_b16_e32 v76.l, v45.h
	v_mov_b16_e32 v77.l, v44.h
	v_mov_b16_e32 v78.l, v47.h
	v_mov_b16_e32 v79.l, v46.h
	v_mov_b16_e32 v80.l, v49.h
	v_mov_b16_e32 v81.l, v48.h
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s1, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s0, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v83.l, v50.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_mov_b16_e32 v82.l, v20.h
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0xe
	buffer_store_b16 v77, v15, s[24:27], 0 offen
	buffer_store_b16 v45, v14, s[24:27], 0 offen
	buffer_store_b16 v76, v10, s[24:27], 0 offen
	buffer_store_b16 v46, v12, s[24:27], 0 offen
	buffer_store_b16 v79, v11, s[24:27], 0 offen
	buffer_store_b16 v47, v9, s[24:27], 0 offen
	buffer_store_b16 v78, v8, s[24:27], 0 offen
	buffer_store_b16 v48, v7, s[24:27], 0 offen
	buffer_store_b16 v81, v6, s[24:27], 0 offen
	buffer_store_b16 v49, v5, s[24:27], 0 offen
	buffer_store_b16 v80, v4, s[24:27], 0 offen
	buffer_store_b16 v50, v3, s[24:27], 0 offen
	buffer_store_b16 v83, v2, s[24:27], 0 offen
	buffer_store_b16 v20, v1, s[24:27], 0 offen
	buffer_store_b16 v82, v0, s[24:27], 0 offen
	.loc	1 679 5                         ; ragged.py:679:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 112
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 210
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 210
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10044
; TotalNumSgprs: 42
; NumVgprs: 210
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 210
; Occupancy: 7
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x4d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x27 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	705                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 112
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     210
    .vgpr_spill_count: 0
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
