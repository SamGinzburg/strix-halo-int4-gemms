	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 679 0                         ; ragged.py:679:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x4c
	s_load_b32 s3, s[0:1], 0x58
.Ltmp0:
	.loc	1 707 25 prologue_end           ; ragged.py:707:25
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v95, 1, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:705:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:705:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 707 25 is_stmt 1              ; ragged.py:707:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 709 33                        ; ragged.py:709:33
	s_sub_i32 s3, s3, s12
	.loc	1 710 24                        ; ragged.py:710:24
	s_mul_i32 s4, s12, s4
	.loc	1 709 22                        ; ragged.py:709:22
	s_min_i32 s3, s3, 1
	.loc	1 710 24                        ; ragged.py:710:24
	s_sub_i32 s2, s2, s4
	.loc	1 712 17                        ; ragged.py:712:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s20, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s20, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s13, s13, s15
	s_sub_i32 s13, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 34                        ; ragged.py:711:34
	s_mul_i32 s3, s13, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 711 20 is_stmt 0              ; ragged.py:711:20
	s_add_i32 s2, s2, s12
	.loc	1 714 20 is_stmt 1              ; ragged.py:714:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 715 23                        ; ragged.py:715:23
	s_add_u32 s6, s6, s2
	s_addc_u32 s7, s7, s3
	.loc	1 714 20                        ; ragged.py:714:20
	s_load_b64 s[16:17], s[4:5], 0x0
	.loc	1 715 23                        ; ragged.py:715:23
	s_load_b64 s[20:21], s[6:7], 0x0
	.loc	1 716 24                        ; ragged.py:716:24
	s_add_u32 s4, s8, s2
	s_addc_u32 s5, s9, s3
	.loc	1 717 22                        ; ragged.py:717:22
	s_add_u32 s6, s10, s2
	s_addc_u32 s7, s11, s3
	.loc	1 719 18                        ; ragged.py:719:18
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s17, s13, 8
	.loc	1 729 19                        ; ragged.py:729:19
	s_cmp_gt_i32 s19, 0
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v65, s17, v0
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s2, s18, v65
	.loc	1 729 19                        ; ragged.py:729:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, s20 :: v_dual_lshlrev_b32 v2, 1, v0
	s_branch .LBB0_3
.LBB0_2:
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	s_load_b64 s[22:23], s[4:5], 0x0
	s_load_b64 s[24:25], s[6:7], 0x0
	v_dual_mov_b32 v23, 0 :: v_dual_and_b32 v94, 15, v0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_mov_b32_e32 v108, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 738 35 is_stmt 1              ; ragged.py:738:35
	s_mul_i32 s1, s19, s18
	.loc	1 718 32                        ; ragged.py:718:32
	v_lshrrev_b32_e32 v4, 2, v0
	v_mad_u64_u32 v[66:67], null, s1, s16, v[65:66]
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 718 18 is_stmt 0              ; ragged.py:718:18
	v_mov_b32_e32 v1, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, s0, s20, v4
	v_add_co_ci_u32_e64 v3, null, s21, 0, s0
	.loc	1 729 19 is_stmt 1              ; ragged.py:729:19
	v_mad_u64_u32 v[67:68], null, s18, 3, v[66:67]
	v_xor_b32_e32 v9, v95, v4
	.loc	1 720 21                        ; ragged.py:720:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_le_i64_e32 vcc_lo, s[22:23], v[2:3]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s0, s[24:25], v[2:3]
	v_lshlrev_b32_e32 v2, 5, v94
	v_and_b32_e32 v3, 24, v95
	v_and_b32_e32 v6, 24, v6
	.loc	1 729 19 is_stmt 1              ; ragged.py:729:19
	v_mad_u64_u32 v[68:69], null, s18, 5, v[66:67]
	v_mad_u64_u32 v[69:70], null, s18, 6, v[66:67]
	v_add_nc_u32_e32 v4, s20, v4
	v_mad_u64_u32 v[70:71], null, s18, 7, v[66:67]
	v_mad_u64_u32 v[71:72], null, s18, 9, v[66:67]
	v_mad_u64_u32 v[72:73], null, s18, 10, v[66:67]
	v_mad_u64_u32 v[73:74], null, s18, 11, v[66:67]
	v_mad_u64_u32 v[74:75], null, s18, 12, v[66:67]
	.loc	1 724 18                        ; ragged.py:724:18
	v_lshlrev_b32_e32 v5, 3, v0
	v_lshlrev_b32_e32 v8, 4, v0
	v_mul_lo_u32 v99, v4, s19
	v_mov_b32_e32 v4, v1
	v_xor_b32_e32 v7, v3, v6
	v_or_b32_e32 v3, v2, v3
	.loc	1 729 19                        ; ragged.py:729:19
	v_mad_u64_u32 v[75:76], null, s18, 13, v[66:67]
	v_mad_u64_u32 v[76:77], null, s18, 14, v[66:67]
	v_mad_u64_u32 v[77:78], null, s18, 15, v[66:67]
	v_mad_u64_u32 v[78:79], null, s18, 17, v[66:67]
	v_mad_u64_u32 v[79:80], null, s18, 18, v[66:67]
	.loc	1 724 18                        ; ragged.py:724:18
	v_and_b32_e32 v96, 24, v5
	v_xor_b32_e32 v5, v5, v6
	v_lshl_or_b32 v97, v0, 5, v7
	v_and_b32_e32 v6, 0xe00, v8
	v_and_b32_e32 v7, 24, v9
	v_xor_b32_e32 v9, 16, v3
	.loc	1 729 19                        ; ragged.py:729:19
	v_mad_u64_u32 v[80:81], null, s18, 19, v[66:67]
	v_mad_u64_u32 v[81:82], null, s18, 20, v[66:67]
	v_mad_u64_u32 v[82:83], null, s18, 21, v[66:67]
	v_mad_u64_u32 v[83:84], null, s18, 22, v[66:67]
	v_mad_u64_u32 v[84:85], null, s18, 23, v[66:67]
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v106, 0, v9
	v_mov_b32_e32 v9, v1
	v_or3_b32 v98, v6, v7, v2
	v_mad_u64_u32 v[85:86], null, s18, 24, v[66:67]
	v_mad_u64_u32 v[86:87], null, s18, 25, v[66:67]
	v_mad_u64_u32 v[87:88], null, s18, 26, v[66:67]
	v_mad_u64_u32 v[88:89], null, s18, 27, v[66:67]
	v_mad_u64_u32 v[89:90], null, s18, 28, v[66:67]
	v_xor_b32_e32 v8, 8, v3
	v_xor_b32_e32 v10, 24, v3
	v_xor_b32_e32 v11, 8, v97
	v_xor_b32_e32 v2, 16, v97
	v_xor_b32_e32 v6, 24, v97
	v_xor_b32_e32 v7, 8, v98
	v_xor_b32_e32 v12, 16, v98
	v_xor_b32_e32 v13, 24, v98
	v_mad_u64_u32 v[90:91], null, s18, 29, v[66:67]
	v_mad_u64_u32 v[91:92], null, s18, 30, v[66:67]
	v_mad_u64_u32 v[92:93], null, s18, 31, v[66:67]
	v_add_nc_u32_e32 v100, s18, v66
	v_lshl_add_u32 v101, s18, 1, v66
	v_lshl_add_u32 v102, s18, 2, v66
	v_lshl_add_u32 v103, s18, 3, v66
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v104, 0, v5
	v_add_nc_u32_e32 v105, 0, v8
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v107, 0, v10
	v_mov_b32_e32 v10, v1
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v108, 0, v11
	v_add_nc_u32_e32 v109, 0, v2
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v110, 0, v6
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v111, 0, v7
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v112, 0, v12
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v113, 0, v13
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v114, 0, v3
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v24, v1
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
	v_lshl_add_u32 v93, s18, 4, v66
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 vcc_lo, vcc_lo, s0
	s_mov_b32 s0, 0
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 738 61                        ; ragged.py:738:61
	s_mul_i32 s1, s0, s18
	.loc	1 730 22                        ; ragged.py:730:22
	v_or_b32_e32 v115, s0, v96
	.loc	1 740 38                        ; ragged.py:740:38
	v_add_nc_u32_e32 v116, s1, v66
	v_add_nc_u32_e32 v117, s1, v100
	v_add_nc_u32_e32 v118, s1, v101
	v_add_nc_u32_e32 v119, s1, v67
	v_add_nc_u32_e32 v120, s1, v102
	v_add_nc_u32_e32 v121, s1, v68
	v_add_nc_u32_e32 v122, s1, v69
	v_add_nc_u32_e32 v123, s1, v70
	v_add_nc_u32_e32 v124, s1, v103
	v_add_nc_u32_e32 v125, s1, v71
	v_add_nc_u32_e32 v126, s1, v72
	v_add_nc_u32_e32 v127, s1, v73
	v_add_nc_u32_e32 v128, s1, v74
	v_add_nc_u32_e32 v129, s1, v75
	v_add_nc_u32_e32 v130, s1, v76
	v_add_nc_u32_e32 v133, s1, v78
	v_add_nc_u32_e32 v134, s1, v79
	.loc	1 739 38                        ; ragged.py:739:38
	v_add_nc_u32_e32 v115, v99, v115
	v_add_nc_u32_e32 v131, s1, v77
	v_add_nc_u32_e32 v132, s1, v93
	v_add_nc_u32_e32 v135, s1, v80
	v_add_nc_u32_e32 v136, s1, v81
	v_add_nc_u32_e32 v137, s1, v82
	v_add_nc_u32_e32 v138, s1, v83
	v_add_nc_u32_e32 v139, s1, v84
	v_add_nc_u32_e32 v140, s1, v85
	v_add_nc_u32_e32 v141, s1, v86
	v_add_nc_u32_e32 v142, s1, v87
	v_add_nc_u32_e32 v143, s1, v88
	v_add_nc_u32_e32 v144, s1, v89
	v_add_nc_u32_e32 v145, s1, v90
	v_add_nc_u32_e32 v146, s1, v91
	v_add_nc_u32_e32 v147, s1, v92
	.loc	1 740 30                        ; ragged.py:740:30
	v_cndmask_b32_e64 v116, 0x80000000, v116, s2
	v_cndmask_b32_e64 v117, 0x80000000, v117, s2
	v_cndmask_b32_e64 v118, 0x80000000, v118, s2
	v_cndmask_b32_e64 v119, 0x80000000, v119, s2
	v_cndmask_b32_e64 v120, 0x80000000, v120, s2
	v_cndmask_b32_e64 v121, 0x80000000, v121, s2
	v_cndmask_b32_e64 v122, 0x80000000, v122, s2
	v_cndmask_b32_e64 v123, 0x80000000, v123, s2
	v_cndmask_b32_e64 v124, 0x80000000, v124, s2
	v_cndmask_b32_e64 v125, 0x80000000, v125, s2
	v_cndmask_b32_e64 v126, 0x80000000, v126, s2
	v_cndmask_b32_e64 v127, 0x80000000, v127, s2
	v_cndmask_b32_e64 v128, 0x80000000, v128, s2
	v_cndmask_b32_e64 v129, 0x80000000, v129, s2
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	v_cndmask_b32_e64 v133, 0x80000000, v133, s2
	v_cndmask_b32_e64 v134, 0x80000000, v134, s2
	.loc	1 739 30                        ; ragged.py:739:30
	v_dual_cndmask_b32 v115, 0x80000000, v115 :: v_dual_add_nc_u32 v166, 0, v97
	.loc	1 740 30                        ; ragged.py:740:30
	v_cndmask_b32_e64 v131, 0x80000000, v131, s2
	v_cndmask_b32_e64 v132, 0x80000000, v132, s2
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	s_clause 0x1f
	buffer_load_u8 v150, v116, s[12:15], 0 offen
	buffer_load_u8 v117, v117, s[12:15], 0 offen
	buffer_load_u8 v152, v118, s[12:15], 0 offen
	buffer_load_u8 v118, v119, s[12:15], 0 offen
	buffer_load_u8 v151, v120, s[12:15], 0 offen
	buffer_load_u8 v119, v121, s[12:15], 0 offen
	buffer_load_u8 v153, v122, s[12:15], 0 offen
	buffer_load_u8 v120, v123, s[12:15], 0 offen
	buffer_load_u8 v154, v124, s[12:15], 0 offen
	buffer_load_u8 v121, v125, s[12:15], 0 offen
	buffer_load_u8 v155, v126, s[12:15], 0 offen
	buffer_load_u8 v122, v127, s[12:15], 0 offen
	buffer_load_u8 v156, v128, s[12:15], 0 offen
	buffer_load_u8 v123, v129, s[12:15], 0 offen
	buffer_load_u8 v157, v130, s[12:15], 0 offen
	buffer_load_u8 v124, v131, s[12:15], 0 offen
	buffer_load_u8 v158, v132, s[12:15], 0 offen
	buffer_load_u8 v125, v133, s[12:15], 0 offen
	buffer_load_u8 v159, v134, s[12:15], 0 offen
	buffer_load_u8 v126, v135, s[12:15], 0 offen
	buffer_load_u8 v160, v136, s[12:15], 0 offen
	buffer_load_u8 v127, v137, s[12:15], 0 offen
	buffer_load_u8 v161, v138, s[12:15], 0 offen
	buffer_load_u8 v128, v139, s[12:15], 0 offen
	buffer_load_u8 v162, v140, s[12:15], 0 offen
	buffer_load_u8 v129, v141, s[12:15], 0 offen
	buffer_load_u8 v163, v142, s[12:15], 0 offen
	buffer_load_u8 v130, v143, s[12:15], 0 offen
	buffer_load_u8 v133, v147, s[12:15], 0 offen
	buffer_load_u8 v134, v145, s[12:15], 0 offen
	buffer_load_u8 v164, v144, s[12:15], 0 offen
	buffer_load_u8 v165, v146, s[12:15], 0 offen
	.loc	1 739 30                        ; ragged.py:739:30
	buffer_load_b64 v[115:116], v115, s[4:7], 0 offen
	.loc	1 740 30                        ; ragged.py:740:30
	v_add_nc_u32_e32 v167, 0, v98
	.loc	1 739 30                        ; ragged.py:739:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 751 17                        ; ragged.py:751:17
	s_add_i32 s0, s0, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 729 19                        ; ragged.py:729:19
	s_cmp_lt_i32 s0, s19
	.loc	1 740 30                        ; ragged.py:740:30
	s_waitcnt vmcnt(31)
	v_lshlrev_b16 v135.l, 8, v117.l
	s_waitcnt vmcnt(29)
	v_lshlrev_b16 v132.l, 8, v118.l
	s_waitcnt vmcnt(27)
	v_lshlrev_b16 v131.h, 8, v119.l
	v_or_b16 v150.l, v150.l, v135.l
	s_waitcnt vmcnt(25)
	v_lshlrev_b16 v131.l, 8, v120.l
	v_or_b16 v150.h, v152.l, v132.l
	s_waitcnt vmcnt(23)
	v_lshlrev_b16 v139.h, 8, v121.l
	v_or_b16 v151.l, v151.l, v131.h
	s_waitcnt vmcnt(21)
	v_lshlrev_b16 v139.l, 8, v122.l
	v_or_b16 v151.h, v153.l, v131.l
	s_waitcnt vmcnt(19)
	v_lshlrev_b16 v136.l, 8, v123.l
	v_or_b16 v152.l, v154.l, v139.h
	s_waitcnt vmcnt(17)
	v_lshlrev_b16 v135.h, 8, v124.l
	v_or_b16 v152.h, v155.l, v139.l
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v147.l, 8, v125.l
	v_or_b16 v153.l, v156.l, v136.l
	s_waitcnt vmcnt(13)
	v_lshlrev_b16 v144.l, 8, v126.l
	v_or_b16 v153.h, v157.l, v135.h
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v143.h, 8, v127.l
	v_or_b16 v154.l, v158.l, v147.l
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v143.l, 8, v128.l
	v_or_b16 v154.h, v159.l, v144.l
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v149.l, 8, v129.l
	v_or_b16 v155.l, v160.l, v143.h
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v148.h, 8, v130.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v147.h, 8, v133.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v148.l, 8, v134.l
	v_or_b16 v155.h, v161.l, v143.l
	v_or_b16 v156.l, v162.l, v149.l
	v_or_b16 v156.h, v163.l, v148.h
	s_waitcnt vmcnt(1)
	v_or_b16 v157.h, v165.l, v147.h
	v_or_b16 v157.l, v164.l, v148.l
	.loc	1 739 30                        ; ragged.py:739:30
	s_waitcnt vmcnt(0)
	ds_store_b64 v104, v[115:116]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[115:118], v114 offset1:1
	ds_load_2addr_stride64_b64 v[119:122], v114 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[123:126], v105 offset1:1
	ds_load_2addr_stride64_b64 v[127:130], v105 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[131:134], v106 offset1:1
	ds_load_2addr_stride64_b64 v[135:138], v106 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[139:142], v107 offset1:1
	ds_load_2addr_stride64_b64 v[143:146], v107 offset0:2 offset1:3
	.loc	1 740 30                        ; ragged.py:740:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v166, v[150:151]
	ds_store_b64 v108, v[152:153]
	ds_store_b64 v109, v[154:155]
	ds_store_b64 v110, v[156:157]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[147:150], v167 offset1:8
	ds_load_2addr_stride64_b64 v[151:154], v111 offset1:8
	ds_load_2addr_stride64_b64 v[155:158], v112 offset1:8
	ds_load_2addr_stride64_b64 v[159:162], v113 offset1:8
	.loc	1 741 27                        ; ragged.py:741:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[147:148], v[115:116], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[149:150], v[115:116], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[147:148], v[117:118], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[149:150], v[117:118], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[147:148], v[119:120], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[149:150], v[119:120], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[147:148], v[121:122], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[149:150], v[121:122], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[151:152], v[123:124], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[153:154], v[123:124], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[151:152], v[125:126], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[153:154], v[125:126], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[151:152], v[127:128], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[153:154], v[127:128], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[151:152], v[129:130], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[153:154], v[129:130], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[155:156], v[131:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[157:158], v[131:132], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[155:156], v[133:134], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[157:158], v[133:134], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[155:156], v[135:136], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[157:158], v[135:136], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[155:156], v[137:138], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[157:158], v[137:138], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[159:160], v[139:140], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[161:162], v[139:140], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[159:160], v[141:142], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[161:162], v[141:142], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[159:160], v[143:144], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[161:162], v[143:144], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[159:160], v[145:146], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[161:162], v[145:146], v[57:64] neg_lo:[1,1,0]
	.loc	1 729 19                        ; ragged.py:729:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 752 19                        ; ragged.py:752:19
	v_cvt_f32_i32_e32 v109, v1
	v_cvt_f32_i32_e32 v108, v2
	v_cvt_f32_i32_e32 v107, v3
	v_cvt_f32_i32_e32 v106, v4
	v_cvt_f32_i32_e32 v105, v5
	v_cvt_f32_i32_e32 v104, v6
	v_cvt_f32_i32_e32 v103, v7
	v_cvt_f32_i32_e32 v102, v8
	v_cvt_f32_i32_e32 v101, v9
	v_cvt_f32_i32_e32 v100, v10
	v_cvt_f32_i32_e32 v99, v11
	v_cvt_f32_i32_e32 v98, v12
	v_cvt_f32_i32_e32 v97, v13
	v_cvt_f32_i32_e32 v96, v14
	v_cvt_f32_i32_e32 v93, v15
	v_cvt_f32_i32_e32 v92, v16
	v_cvt_f32_i32_e32 v91, v17
	v_cvt_f32_i32_e32 v90, v18
	v_cvt_f32_i32_e32 v89, v19
	v_cvt_f32_i32_e32 v88, v20
	v_cvt_f32_i32_e32 v87, v21
	v_cvt_f32_i32_e32 v86, v22
	v_cvt_f32_i32_e32 v85, v23
	v_cvt_f32_i32_e32 v84, v24
	v_cvt_f32_i32_e32 v83, v25
	v_cvt_f32_i32_e32 v82, v26
	v_cvt_f32_i32_e32 v81, v27
	v_cvt_f32_i32_e32 v80, v28
	v_cvt_f32_i32_e32 v79, v29
	v_cvt_f32_i32_e32 v78, v30
	v_cvt_f32_i32_e32 v77, v31
	v_cvt_f32_i32_e32 v76, v32
	v_cvt_f32_i32_e32 v75, v33
	v_cvt_f32_i32_e32 v74, v34
	v_cvt_f32_i32_e32 v73, v35
	v_cvt_f32_i32_e32 v72, v36
	v_cvt_f32_i32_e32 v71, v37
	v_cvt_f32_i32_e32 v70, v38
	v_cvt_f32_i32_e32 v69, v39
	v_cvt_f32_i32_e32 v68, v40
	v_cvt_f32_i32_e32 v67, v41
	v_cvt_f32_i32_e32 v66, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v42, v44
	v_cvt_f32_i32_e32 v41, v45
	v_cvt_f32_i32_e32 v40, v46
	v_cvt_f32_i32_e32 v39, v47
	v_cvt_f32_i32_e32 v38, v48
	v_cvt_f32_i32_e32 v37, v49
	v_cvt_f32_i32_e32 v36, v50
	v_cvt_f32_i32_e32 v35, v51
	v_cvt_f32_i32_e32 v34, v52
	v_cvt_f32_i32_e32 v33, v53
	v_cvt_f32_i32_e32 v32, v54
	v_cvt_f32_i32_e32 v31, v55
	v_cvt_f32_i32_e32 v30, v56
	v_cvt_f32_i32_e32 v29, v57
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v27, v59
	v_cvt_f32_i32_e32 v26, v60
	v_cvt_f32_i32_e32 v25, v61
	v_cvt_f32_i32_e32 v24, v62
	v_cvt_f32_i32_e32 v23, v63
	v_cvt_f32_i32_e32 v22, v64
	v_dual_mov_b32 v1, s20 :: v_dual_mov_b32 v2, v95
.LBB0_7:                                ; %._crit_edge
	.loc	1 718 32                        ; ragged.py:718:32
	v_or_b32_e32 v3, 48, v94
	v_or_b32_e32 v5, 32, v94
	v_or_b32_e32 v6, 16, v94
	.loc	1 754 36                        ; ragged.py:754:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s9, 0xffff
	s_mov_b32 s63, 0x31027000
	.loc	1 718 18                        ; ragged.py:718:18
	v_add_co_u32 v3, s0, s20, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s21, 0, s0
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 754 36                        ; ragged.py:754:36
	s_mov_b32 s60, s8
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v21.h, 0
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e32 vcc_lo, s[22:23], v[3:4]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s4, s[24:25], v[3:4]
	.loc	1 718 18 is_stmt 1              ; ragged.py:718:18
	v_add_co_u32 v4, s0, s20, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s21, 0, s0
	v_add_co_u32 v6, s0, s20, v6
	v_add_co_ci_u32_e64 v7, null, s21, 0, s0
	v_add_co_u32 v8, s0, s20, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v9, null, s21, 0, s0
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s1, s[22:23], v[6:7]
	.loc	1 720 48 is_stmt 0              ; ragged.py:720:48
	v_cmp_gt_i64_e64 s6, s[24:25], v[6:7]
	.loc	1 720 21                        ; ragged.py:720:21
	v_cmp_le_i64_e64 s0, s[22:23], v[4:5]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s3, s[22:23], v[8:9]
	.loc	1 720 48                        ; ragged.py:720:48
	v_cmp_gt_i64_e64 s7, s[24:25], v[8:9]
	v_cmp_gt_i64_e64 s5, s[24:25], v[4:5]
	.loc	1 754 36 is_stmt 1              ; ragged.py:754:36
	v_lshlrev_b32_e32 v5, 1, v8
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 754 36                        ; ragged.py:754:36
	v_lshlrev_b32_e32 v6, 1, v6
	v_lshlrev_b32_e32 v4, 1, v4
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s3, s3, s7
	s_and_b32 s1, s1, s6
	.loc	1 754 36                        ; ragged.py:754:36
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 720 20                        ; ragged.py:720:20
	s_and_b32 s0, s0, s5
	.loc	1 754 36                        ; ragged.py:754:36
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	s_clause 0x3
	buffer_load_u16 v44, v5, s[60:63], 0 offen
	buffer_load_u16 v45, v6, s[60:63], 0 offen
	buffer_load_u16 v46, v4, s[60:63], 0 offen
	buffer_load_u16 v47, v3, s[60:63], 0 offen
	.loc	1 758 21                        ; ragged.py:758:21
	s_mul_i32 s4, s18, s16
	.loc	1 757 36                        ; ragged.py:757:36
	s_and_b32 s61, s11, 0xffff
	v_add_lshl_u32 v3, v65, s4, 1
	s_mov_b32 s60, s10
	.loc	1 814 9                         ; ragged.py:814:9
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s58, s62
	s_mov_b32 s59, s63
	.loc	1 757 36                        ; ragged.py:757:36
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	buffer_load_u16 v48, v3, s[60:63], 0 offen
	.loc	1 762 17                        ; ragged.py:762:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 754 36                        ; ragged.py:754:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 755 17                        ; ragged.py:755:17
	v_dual_mul_f32 v85, v85, v45 :: v_dual_lshlrev_b32 v44, 16, v44
	v_mul_f32_e32 v62, v99, v44
	v_dual_mul_f32 v88, v88, v45 :: v_dual_and_b32 v3, 0xf0, v0
	v_dual_mul_f32 v89, v89, v45 :: v_dual_lshlrev_b32 v4, 5, v0
	v_dual_mul_f32 v53, v108, v44 :: v_dual_and_b32 v2, 28, v2
	v_dual_mul_f32 v54, v107, v44 :: v_dual_add_nc_u32 v1, v94, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v87, v87, v45 :: v_dual_and_b32 v4, 32, v4
	.loc	1 762 17                        ; ragged.py:762:17
	v_lshl_add_u32 v6, v3, 2, 0
	.loc	1 719 36                        ; ragged.py:719:36
	v_lshrrev_b32_e32 v5, 1, v3
	.loc	1 762 17                        ; ragged.py:762:17
	v_lshl_add_u32 v49, v3, 1, 0
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v20, v1, s18
	.loc	1 755 17                        ; ragged.py:755:17
	v_dual_mul_f32 v56, v105, v44 :: v_dual_add_nc_u32 v3, 16, v1
	v_dual_mul_f32 v58, v103, v44 :: v_dual_add_nc_u32 v7, 32, v1
	v_dual_mul_f32 v60, v101, v44 :: v_dual_add_nc_u32 v1, 48, v1
	.loc	1 762 17                        ; ragged.py:762:17
	v_add3_u32 v50, v6, v4, v2
	.loc	1 755 17                        ; ragged.py:755:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v55, v106, v44 :: v_dual_lshlrev_b32 v46, 16, v46
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v64, v97, v44 :: v_dual_lshlrev_b32 v51, 16, v47
	v_mul_f32_e32 v52, v109, v44
	v_dual_mul_f32 v57, v104, v44 :: v_dual_mul_f32 v86, v86, v45
	v_dual_mul_f32 v59, v102, v44 :: v_dual_mul_f32 v84, v84, v45
	v_dual_mul_f32 v61, v100, v44 :: v_dual_mul_f32 v82, v82, v45
	v_dual_mul_f32 v63, v98, v44 :: v_dual_mul_f32 v80, v80, v45
	v_dual_mul_f32 v65, v96, v44 :: v_dual_mul_f32 v78, v78, v45
	v_dual_mul_f32 v93, v93, v44 :: v_dual_mul_f32 v76, v76, v45
	v_dual_mul_f32 v92, v92, v44 :: v_dual_mul_f32 v83, v83, v45
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v81, v81, v45 :: v_dual_lshlrev_b32 v44, 16, v48
	v_mul_f32_e32 v91, v91, v45
	v_mul_f32_e32 v90, v90, v45
	v_dual_mul_f32 v79, v79, v45 :: v_dual_mul_f32 v74, v74, v46
	v_dual_mul_f32 v77, v77, v45 :: v_dual_mul_f32 v72, v72, v46
	v_mul_f32_e32 v73, v73, v46
	v_dual_mul_f32 v71, v71, v46 :: v_dual_mul_f32 v100, v34, v51
	v_dual_mul_f32 v69, v69, v46 :: v_dual_mul_f32 v102, v32, v51
	v_dual_mul_f32 v68, v68, v46 :: v_dual_mul_f32 v101, v33, v51
	v_dual_mul_f32 v94, v43, v46 :: v_dual_mul_f32 v29, v29, v51
	v_dual_mul_f32 v95, v42, v46 :: v_dual_mul_f32 v28, v28, v51
	v_dual_mul_f32 v96, v41, v46 :: v_dual_mul_f32 v27, v27, v51
	v_dual_mul_f32 v97, v40, v46 :: v_dual_mul_f32 v26, v26, v51
	v_dual_mul_f32 v98, v39, v46 :: v_dual_mul_f32 v25, v25, v51
	v_dual_mul_f32 v99, v38, v46 :: v_dual_mul_f32 v24, v24, v51
	.loc	1 762 17                        ; ragged.py:762:17
	ds_store_b32 v50, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v49
	ds_load_b128 v[42:45], v49 offset:16
	.loc	1 755 17                        ; ragged.py:755:17
	v_mul_f32_e32 v50, v35, v51
	.loc	1 762 17                        ; ragged.py:762:17
	ds_load_b128 v[32:35], v49 offset:512
	.loc	1 755 17                        ; ragged.py:755:17
	v_dual_mul_f32 v75, v75, v46 :: v_dual_mul_f32 v36, v36, v51
	v_dual_mul_f32 v70, v70, v46 :: v_dual_mul_f32 v37, v37, v51
	v_dual_mul_f32 v67, v67, v46 :: v_dual_mul_f32 v30, v30, v51
	v_dual_mul_f32 v66, v66, v46 :: v_dual_mul_f32 v31, v31, v51
	.loc	1 762 17                        ; ragged.py:762:17
	ds_load_b128 v[46:49], v49 offset:528
	.loc	1 755 17                        ; ragged.py:755:17
	v_mul_f32_e32 v23, v23, v51
	v_mul_f32_e32 v22, v22, v51
	.loc	1 814 9                         ; ragged.py:814:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v15, s17, v5
	.loc	1 815 13                        ; ragged.py:815:13
	v_mul_lo_u32 v19, v3, s18
	v_mul_lo_u32 v16, v7, s18
	v_mul_lo_u32 v1, v1, s18
	.loc	1 762 17                        ; ragged.py:762:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v51, v52, v38 :: v_dual_mul_f32 v52, v53, v39
	v_dual_mul_f32 v53, v54, v40 :: v_dual_mul_f32 v54, v55, v41
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v55, v56, v42 :: v_dual_mul_f32 v56, v57, v43
	v_dual_mul_f32 v57, v58, v44 :: v_dual_mul_f32 v58, v59, v45
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v59, v60, v32 :: v_dual_mul_f32 v60, v61, v33
	v_dual_mul_f32 v91, v91, v38 :: v_dual_mul_f32 v90, v90, v39
	v_dual_mul_f32 v89, v89, v40 :: v_dual_mul_f32 v88, v88, v41
	v_dual_mul_f32 v61, v62, v34 :: v_dual_mul_f32 v62, v63, v35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v63, v64, v46 :: v_dual_mul_f32 v64, v65, v47
	v_dual_mul_f32 v65, v93, v48 :: v_dual_mul_f32 v92, v92, v49
	v_dual_mul_f32 v87, v87, v42 :: v_dual_mul_f32 v86, v86, v43
	v_dual_mul_f32 v85, v85, v44 :: v_dual_mul_f32 v84, v84, v45
	v_dual_mul_f32 v83, v83, v32 :: v_dual_mul_f32 v82, v82, v33
	v_dual_mul_f32 v81, v81, v34 :: v_dual_mul_f32 v80, v80, v35
	v_dual_mul_f32 v79, v79, v46 :: v_dual_mul_f32 v78, v78, v47
	v_dual_mul_f32 v75, v75, v38 :: v_dual_mul_f32 v74, v74, v39
	v_dual_mul_f32 v73, v73, v40 :: v_dual_mul_f32 v72, v72, v41
	v_dual_mul_f32 v71, v71, v42 :: v_dual_mul_f32 v70, v70, v43
	v_dual_mul_f32 v69, v69, v44 :: v_dual_mul_f32 v68, v68, v45
	v_dual_mul_f32 v67, v67, v32 :: v_dual_mul_f32 v66, v66, v33
	v_dual_mul_f32 v93, v94, v34 :: v_dual_mul_f32 v94, v95, v35
	v_dual_mul_f32 v95, v96, v46 :: v_dual_mul_f32 v96, v97, v47
	v_dual_mul_f32 v37, v37, v38 :: v_dual_mul_f32 v36, v36, v39
	v_dual_mul_f32 v38, v50, v40 :: v_dual_mul_f32 v39, v100, v41
	v_dual_mul_f32 v40, v101, v42 :: v_dual_mul_f32 v41, v102, v43
	v_dual_mul_f32 v31, v31, v44 :: v_dual_mul_f32 v30, v30, v45
	v_dual_mul_f32 v29, v29, v32 :: v_dual_mul_f32 v28, v28, v33
	v_dual_mul_f32 v25, v25, v46 :: v_dual_mul_f32 v24, v24, v47
	.loc	1 814 9                         ; ragged.py:814:9
	v_bfe_u32 v32, v51, 16, 1
	v_bfe_u32 v42, v55, 16, 1
	v_bfe_u32 v44, v57, 16, 1
	v_bfe_u32 v46, v59, 16, 1
	v_bfe_u32 v47, v60, 16, 1
	v_bfe_u32 v103, v90, 16, 1
	v_bfe_u32 v105, v88, 16, 1
	.loc	1 762 17                        ; ragged.py:762:17
	v_dual_mul_f32 v27, v27, v34 :: v_dual_mul_f32 v26, v26, v35
	.loc	1 814 9                         ; ragged.py:814:9
	v_bfe_u32 v34, v53, 16, 1
	.loc	1 762 17                        ; ragged.py:762:17
	v_dual_mul_f32 v77, v77, v48 :: v_dual_mul_f32 v76, v76, v49
	v_dual_mul_f32 v97, v98, v48 :: v_dual_mul_f32 v98, v99, v49
	v_dual_mul_f32 v23, v23, v48 :: v_dual_mul_f32 v22, v22, v49
	.loc	1 814 9                         ; ragged.py:814:9
	v_cmp_o_f32_e64 s19, v51, v51
	v_bfe_u32 v33, v52, 16, 1
	v_cmp_o_f32_e64 s23, v55, v55
	v_bfe_u32 v43, v56, 16, 1
	v_cmp_o_f32_e64 s25, v57, v57
	v_bfe_u32 v45, v58, 16, 1
	v_cmp_o_f32_e64 s27, v59, v59
	v_cmp_o_f32_e64 s28, v60, v60
	v_bfe_u32 v48, v61, 16, 1
	v_bfe_u32 v100, v65, 16, 1
	v_cmp_o_f32_e64 s37, v90, v90
	v_bfe_u32 v104, v89, 16, 1
	v_cmp_o_f32_e64 s39, v88, v88
	v_bfe_u32 v106, v87, 16, 1
	v_bfe_u32 v107, v86, 16, 1
	v_bfe_u32 v113, v80, 16, 1
	v_bfe_u32 v121, v72, 16, 1
	v_add3_u32 v32, v51, v32, 0x7fff
	v_add3_u32 v42, v55, v42, 0x7fff
	v_add3_u32 v44, v57, v44, 0x7fff
	v_add3_u32 v46, v59, v46, 0x7fff
	v_add3_u32 v47, v60, v47, 0x7fff
	v_add3_u32 v55, v90, v103, 0x7fff
	v_add3_u32 v57, v88, v105, 0x7fff
	v_add3_u32 v34, v53, v34, 0x7fff
	v_cmp_o_f32_e64 s20, v52, v52
	v_cmp_o_f32_e64 s24, v56, v56
	v_cmp_o_f32_e64 s26, v58, v58
	v_cmp_o_f32_e64 s29, v61, v61
	v_cmp_o_f32_e64 s34, v65, v65
	v_cmp_o_f32_e64 s38, v89, v89
	v_cmp_o_f32_e64 s40, v87, v87
	v_cmp_o_f32_e64 s41, v86, v86
	v_bfe_u32 v108, v85, 16, 1
	v_cmp_o_f32_e64 s47, v80, v80
	v_add3_u32 v33, v52, v33, 0x7fff
	v_add3_u32 v43, v56, v43, 0x7fff
	v_add3_u32 v45, v58, v45, 0x7fff
	v_add3_u32 v48, v61, v48, 0x7fff
	v_add3_u32 v52, v65, v100, 0x7fff
	v_add3_u32 v56, v89, v104, 0x7fff
	v_add3_u32 v58, v87, v106, 0x7fff
	v_add3_u32 v59, v86, v107, 0x7fff
	v_add3_u32 v65, v80, v113, 0x7fff
	v_add3_u32 v80, v72, v121, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s19
	v_cndmask_b16 v34.l, 0x7fff, v42.h, s23
	v_cndmask_b16 v42.l, 0x7fff, v46.h, s27
	v_cndmask_b16 v42.h, 0x7fff, v47.h, s28
	v_cndmask_b16 v46.h, 0x7fff, v55.h, s37
	v_cndmask_b16 v47.h, 0x7fff, v57.h, s39
	v_cmp_o_f32_e64 s19, v72, v72
	v_bfe_u32 v55, v71, 16, 1
	v_bfe_u32 v57, v70, 16, 1
	v_bfe_u32 v49, v62, 16, 1
	v_cmp_o_f32_e64 s21, v53, v53
	v_cmp_o_f32_e64 s42, v85, v85
	v_bfe_u32 v109, v84, 16, 1
	v_add3_u32 v60, v85, v108, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v33.h, s20
	v_cndmask_b16 v43.l, 0x7fff, v48.h, s29
	v_cndmask_b16 v47.l, 0x7fff, v56.h, s38
	v_cndmask_b16 v48.l, 0x7fff, v58.h, s40
	v_cndmask_b16 v48.h, 0x7fff, v59.h, s41
	v_cndmask_b16 v56.h, 0x7fff, v80.h, s19
	v_bfe_u32 v58, v69, 16, 1
	v_add3_u32 v55, v71, v55, 0x7fff
	v_cmp_o_f32_e64 s19, v71, v71
	v_add3_u32 v57, v70, v57, 0x7fff
	v_cmp_o_f32_e64 s20, v70, v70
	v_bfe_u32 v59, v68, 16, 1
	v_add3_u32 v49, v62, v49, 0x7fff
	v_cmp_o_f32_e64 s30, v62, v62
	v_cmp_o_f32_e64 s43, v84, v84
	v_add3_u32 v61, v84, v109, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s21
	v_cndmask_b16 v49.l, 0x7fff, v60.h, s42
	v_add3_u32 v58, v69, v58, 0x7fff
	v_cmp_o_f32_e64 s21, v69, v69
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s19
	v_cndmask_b16 v55.h, 0x7fff, v57.h, s20
	v_bfe_u32 v57, v67, 16, 1
	v_bfe_u32 v60, v66, 16, 1
	v_add3_u32 v59, v68, v59, 0x7fff
	v_cmp_o_f32_e64 s19, v68, v68
	v_bfe_u32 v50, v63, 16, 1
	v_bfe_u32 v110, v83, 16, 1
	v_bfe_u32 v111, v82, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v43.h, s24
	v_cndmask_b16 v43.h, 0x7fff, v49.h, s30
	v_cndmask_b16 v49.h, 0x7fff, v61.h, s43
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s21
	v_add3_u32 v57, v67, v57, 0x7fff
	v_cmp_o_f32_e64 s20, v67, v67
	v_add3_u32 v60, v66, v60, 0x7fff
	v_cmp_o_f32_e64 s21, v66, v66
	v_cndmask_b16 v58.h, 0x7fff, v59.h, s19
	v_bfe_u32 v59, v93, 16, 1
	v_bfe_u32 v61, v94, 16, 1
	v_cmp_o_f32_e64 s31, v63, v63
	v_cmp_o_f32_e64 s44, v83, v83
	v_cmp_o_f32_e64 s45, v82, v82
	v_add3_u32 v50, v63, v50, 0x7fff
	v_add3_u32 v62, v83, v110, 0x7fff
	v_add3_u32 v63, v82, v111, 0x7fff
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s20
	v_cndmask_b16 v57.h, 0x7fff, v60.h, s21
	v_bfe_u32 v60, v95, 16, 1
	v_add3_u32 v59, v93, v59, 0x7fff
	v_cmp_o_f32_e64 s19, v93, v93
	v_add3_u32 v61, v94, v61, 0x7fff
	v_cmp_o_f32_e64 s20, v94, v94
	v_bfe_u32 v99, v64, 16, 1
	v_bfe_u32 v112, v81, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v50.h, s31
	v_cndmask_b16 v50.l, 0x7fff, v62.h, s44
	v_cndmask_b16 v50.h, 0x7fff, v63.h, s45
	v_add3_u32 v60, v95, v60, 0x7fff
	v_cmp_o_f32_e64 s21, v95, v95
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s19
	v_bfe_u32 v62, v96, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v61.h, s20
	v_bfe_u32 v61, v97, 16, 1
	v_bfe_u32 v63, v98, 16, 1
	v_cmp_o_f32_e64 s33, v64, v64
	v_cmp_o_f32_e64 s46, v81, v81
	v_add3_u32 v51, v64, v99, 0x7fff
	v_add3_u32 v64, v81, v112, 0x7fff
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s21
	v_add3_u32 v62, v96, v62, 0x7fff
	v_cmp_o_f32_e64 s19, v96, v96
	v_add3_u32 v61, v97, v61, 0x7fff
	v_cmp_o_f32_e64 s20, v97, v97
	v_add3_u32 v63, v98, v63, 0x7fff
	v_cmp_o_f32_e64 s21, v98, v98
	v_cndmask_b16 v51.l, 0x7fff, v64.h, s46
	v_cndmask_b16 v60.h, 0x7fff, v62.h, s19
	v_bfe_u32 v62, v37, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v61.h, s20
	v_bfe_u32 v64, v36, 16, 1
	v_cndmask_b16 v61.h, 0x7fff, v63.h, s21
	v_bfe_u32 v63, v38, 16, 1
	v_add3_u32 v62, v37, v62, 0x7fff
	v_cmp_o_f32_e64 s19, v37, v37
	v_add3_u32 v37, v36, v64, 0x7fff
	v_cmp_o_f32_e64 s20, v36, v36
	v_add3_u32 v36, v38, v63, 0x7fff
	v_cmp_o_f32_e64 s21, v38, v38
	v_bfe_u32 v38, v39, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v62.h, s19
	v_bfe_u32 v62, v40, 16, 1
	v_bfe_u32 v63, v41, 16, 1
	v_cmp_o_f32_e64 s19, v39, v39
	v_add3_u32 v38, v39, v38, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s20
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s21
	v_add3_u32 v39, v40, v62, 0x7fff
	v_cmp_o_f32_e64 s20, v40, v40
	v_add3_u32 v40, v41, v63, 0x7fff
	v_cmp_o_f32_e64 s21, v41, v41
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s19
	v_bfe_u32 v38, v31, 16, 1
	v_bfe_u32 v41, v30, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v40.h, s21
	v_bfe_u32 v40, v29, 16, 1
	v_add3_u32 v38, v31, v38, 0x7fff
	v_cmp_o_f32_e64 s19, v31, v31
	v_add3_u32 v31, v30, v41, 0x7fff
	v_cmp_o_f32_e64 s20, v30, v30
	v_add3_u32 v30, v29, v40, 0x7fff
	v_cmp_o_f32_e64 s21, v29, v29
	v_cndmask_b16 v29.l, 0x7fff, v38.h, s19
	v_bfe_u32 v38, v28, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s20
	v_bfe_u32 v31, v27, 16, 1
	v_bfe_u32 v40, v26, 16, 1
	v_cmp_o_f32_e64 s19, v28, v28
	v_add3_u32 v38, v28, v38, 0x7fff
	v_cmp_o_f32_e64 s20, v27, v27
	v_add3_u32 v28, v27, v31, 0x7fff
	v_add3_u32 v27, v26, v40, 0x7fff
	v_bfe_u32 v35, v54, 16, 1
	v_bfe_u32 v101, v92, 16, 1
	v_bfe_u32 v102, v91, 16, 1
	v_bfe_u32 v118, v75, 16, 1
	v_bfe_u32 v119, v74, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s21
	v_cmp_o_f32_e64 s21, v26, v26
	v_bfe_u32 v26, v25, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s20
	v_bfe_u32 v28, v24, 16, 1
	v_cmp_o_f32_e64 s22, v54, v54
	v_cmp_o_f32_e64 s35, v92, v92
	v_cmp_o_f32_e64 s36, v91, v91
	v_bfe_u32 v116, v77, 16, 1
	v_bfe_u32 v117, v76, 16, 1
	v_cmp_o_f32_e64 s52, v75, v75
	v_cmp_o_f32_e64 s53, v74, v74
	v_add3_u32 v35, v54, v35, 0x7fff
	v_add3_u32 v53, v92, v101, 0x7fff
	v_add3_u32 v54, v91, v102, 0x7fff
	v_add3_u32 v75, v75, v118, 0x7fff
	v_add3_u32 v74, v74, v119, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v38.h, s19
	v_add3_u32 v26, v25, v26, 0x7fff
	v_bfe_u32 v31, v23, 16, 1
	v_cmp_o_f32_e64 s19, v25, v25
	v_add3_u32 v25, v24, v28, 0x7fff
	v_bfe_u32 v28, v22, 16, 1
	v_cmp_o_f32_e64 s50, v77, v77
	v_cmp_o_f32_e64 s51, v76, v76
	v_add3_u32 v77, v77, v116, 0x7fff
	v_add3_u32 v76, v76, v117, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s22
	v_cndmask_b16 v35.l, 0x7fff, v44.h, s25
	v_cndmask_b16 v35.h, 0x7fff, v45.h, s26
	v_cndmask_b16 v45.l, 0x7fff, v52.h, s34
	v_cndmask_b16 v45.h, 0x7fff, v53.h, s35
	v_cndmask_b16 v46.l, 0x7fff, v54.h, s36
	v_cndmask_b16 v54.l, 0x7fff, v75.h, s52
	v_cndmask_b16 v54.h, 0x7fff, v74.h, s53
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s21
	v_cmp_o_f32_e64 s20, v24, v24
	v_add3_u32 v24, v23, v31, 0x7fff
	v_cmp_o_f32_e64 s21, v23, v23
	v_add3_u32 v23, v22, v28, 0x7fff
	v_cmp_o_f32_e64 s22, v22, v22
	v_cndmask_b16 v22.l, 0x7fff, v26.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v44.h, 0x7fff, v51.h, s33
	v_cndmask_b16 v51.h, 0x7fff, v65.h, s47
	v_cndmask_b16 v53.l, 0x7fff, v77.h, s50
	v_cndmask_b16 v53.h, 0x7fff, v76.h, s51
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v24.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v23.h, s22
	v_cndmask_b32_e64 v23, v34, v32, s19
	v_cndmask_b32_e64 v24, v32, v34, s19
	v_cndmask_b32_e64 v25, v35, v33, s19
	v_cndmask_b32_e64 v26, v33, v35, s19
	v_cndmask_b32_e64 v32, v45, v43, s19
	v_cndmask_b32_e64 v33, v43, v45, s19
	v_cndmask_b32_e64 v34, v48, v46, s19
	v_cndmask_b32_e64 v35, v46, v48, s19
	v_cndmask_b32_e64 v45, v55, v54, s19
	v_cndmask_b32_e64 v46, v54, v55, s19
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v28, v44, v42, s19
	v_cndmask_b32_e64 v31, v42, v44, s19
	v_cndmask_b32_e64 v43, v53, v51, s19
	v_cndmask_b32_e64 v44, v51, v53, s19
	v_cndmask_b32_e64 v53, v39, v37, s19
	v_cndmask_b32_e64 v37, v37, v39, s19
	v_cndmask_b32_e64 v39, v29, v36, s19
	v_cndmask_b32_e64 v29, v36, v29, s19
	v_cndmask_b32_e64 v36, v22, v30, s19
	v_cndmask_b32_e64 v22, v30, v22, s19
	v_cndmask_b32_e64 v30, v0, v27, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v27, v0, s19
	v_cndmask_b32_e64 v27, 0x1054, v54, s19
	v_bfe_u32 v114, v79, 16, 1
	v_bfe_u32 v115, v78, 16, 1
	v_bfe_u32 v120, v73, 16, 1
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	v_lshl_or_b32 v27, v27, 8, v27
	v_cmp_o_f32_e64 s48, v79, v79
	v_cmp_o_f32_e64 s49, v78, v78
	v_cmp_o_f32_e64 s54, v73, v73
	v_add3_u32 v79, v79, v114, 0x7fff
	v_add3_u32 v78, v78, v115, 0x7fff
	v_add3_u32 v73, v73, v120, 0x7fff
	v_lshl_or_b32 v54, v54, 8, v54
	v_and_b32_e32 v27, 0x540054, v27
	v_cndmask_b16 v52.l, 0x7fff, v79.h, s48
	v_cndmask_b16 v52.h, 0x7fff, v78.h, s49
	v_cndmask_b16 v56.l, 0x7fff, v73.h, s54
	v_and_b32_e32 v54, 0x760076, v54
	v_lshl_or_b32 v27, v27, 4, v27
	.loc	1 719 18                        ; ragged.py:719:18
	v_or_b32_e32 v2, 0x87, v15
	v_or_b32_e32 v3, 0x86, v15
	v_or_b32_e32 v4, 0x85, v15
	v_or_b32_e32 v5, 0x84, v15
	v_or_b32_e32 v6, 0x83, v15
	v_or_b32_e32 v7, 0x82, v15
	v_or_b32_e32 v8, 0x81, v15
	v_or_b32_e32 v9, 0x80, v15
	v_or_b32_e32 v10, 7, v15
	v_or_b32_e32 v11, 6, v15
	v_or_b32_e32 v12, 5, v15
	v_or_b32_e32 v13, 4, v15
	v_or_b32_e32 v14, 3, v15
	v_or_b32_e32 v17, 2, v15
	v_or_b32_e32 v18, 1, v15
	s_mov_b32 s20, 0x76543210
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s16, s18, v15
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v40, v47, v49, s19
	v_cndmask_b32_e64 v41, v52, v50, s19
	v_cndmask_b32_e64 v42, v50, v52, s19
	v_cndmask_b32_e64 v48, v56, v58, s19
	v_cndmask_b32_e64 v50, v57, v60, s19
	v_cndmask_b32_e64 v52, v59, v61, s19
	v_permlanex16_b32 v24, v24, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v27, 0x5040504, v27
	.loc	1 721 20                        ; ragged.py:721:20
	v_cmp_gt_i32_e64 s2, s18, v2
	v_cmp_gt_i32_e64 s4, s18, v3
	v_cmp_gt_i32_e64 s5, s18, v4
	v_cmp_gt_i32_e64 s6, s18, v5
	v_cmp_gt_i32_e64 s7, s18, v6
	v_cmp_gt_i32_e64 s8, s18, v7
	v_cmp_gt_i32_e64 s9, s18, v8
	v_cmp_gt_i32_e64 s10, s18, v9
	v_cmp_gt_i32_e64 s11, s18, v10
	v_cmp_gt_i32_e64 s12, s18, v11
	v_cmp_gt_i32_e64 s13, s18, v12
	v_cmp_gt_i32_e64 s14, s18, v13
	v_cmp_gt_i32_e64 s15, s18, v14
	v_cmp_gt_i32_e64 s17, s18, v17
	v_cmp_gt_i32_e64 s18, s18, v18
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v84, v15, v20, 1
	v_add_lshl_u32 v85, v18, v20, 1
	v_cndmask_b32_e64 v38, v49, v47, s19
	v_cndmask_b32_e64 v47, v58, v56, s19
	v_cndmask_b32_e64 v49, v60, v57, s19
	v_cndmask_b32_e64 v51, v61, v59, s19
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v40, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v44, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v48, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v52, v52, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v37, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v29, v29, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v24, v23, v27
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s16, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v86, v17, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s18, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v23, v24, v23, v54
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s17, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v24, v26, v25, v27
	v_perm_b32 v25, v26, v25, v54
	v_perm_b32 v26, v31, v28, v27
	v_perm_b32 v28, v31, v28, v54
	v_perm_b32 v31, v33, v32, v27
	v_perm_b32 v32, v33, v32, v54
	v_perm_b32 v33, v35, v34, v27
	v_perm_b32 v34, v35, v34, v54
	v_perm_b32 v35, v40, v38, v27
	v_perm_b32 v38, v40, v38, v54
	v_perm_b32 v40, v42, v41, v27
	v_perm_b32 v41, v42, v41, v54
	v_perm_b32 v42, v44, v43, v27
	v_perm_b32 v43, v44, v43, v54
	v_perm_b32 v44, v46, v45, v27
	v_perm_b32 v45, v46, v45, v54
	v_perm_b32 v46, v48, v47, v27
	v_perm_b32 v47, v48, v47, v54
	v_perm_b32 v48, v50, v49, v27
	v_perm_b32 v49, v50, v49, v54
	v_perm_b32 v50, v52, v51, v27
	v_perm_b32 v51, v52, v51, v54
	v_perm_b32 v52, v37, v53, v27
	v_perm_b32 v37, v37, v53, v54
	v_perm_b32 v53, v29, v39, v27
	v_perm_b32 v29, v29, v39, v54
	v_perm_b32 v39, v22, v36, v27
	v_perm_b32 v27, v0, v30, v27
	v_perm_b32 v0, v0, v30, v54
	v_mov_b16_e32 v30.l, v55.h
	v_mov_b16_e32 v30.h, v21.h
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	buffer_store_b16 v55, v84, s[56:59], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	v_mov_b16_e32 v21.l, v23.h
	s_clause 0x1
	buffer_store_b16 v30, v85, s[56:59], 0 offen
	buffer_store_b16 v23, v86, s[56:59], 0 offen
	v_add_lshl_u32 v23, v13, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s15, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v84, v11, v20, 1
	v_cndmask_b32_e64 v30, 0x80000000, v55, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s14, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v55, v12, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s13, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_perm_b32 v22, v22, v36, v54
	v_mov_b16_e32 v36.h, v21.h
	v_mov_b16_e32 v54.h, v21.h
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
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s12, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v21, v30, s[56:59], 0 offen
	buffer_store_b16 v24, v23, s[56:59], 0 offen
	v_add_lshl_u32 v21, v10, v20, 1
	v_mov_b16_e32 v54.l, v24.h
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	v_add_lshl_u32 v23, v9, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s11, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v24, v8, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s10, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v36.l, v25.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[56:59], 0 offen
	buffer_store_b16 v25, v84, s[56:59], 0 offen
	v_add_lshl_u32 v25, v7, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s9, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v57.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s8, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v36, v21, s[56:59], 0 offen
	buffer_store_b16 v26, v23, s[56:59], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v25, s19
	v_add_lshl_u32 v21, v6, v20, 1
	v_add_lshl_u32 v23, v5, v20, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s7, s3
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v57, v24, s[56:59], 0 offen
	buffer_store_b16 v28, v25, s[56:59], 0 offen
	v_add_lshl_u32 v24, v4, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s6, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v56.l, v28.h
	v_add_lshl_u32 v25, v3, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s5, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v20, v2, v20, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s19, s4, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v59.l, v31.h
	v_cndmask_b32_e64 v25, 0x80000000, v25, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[56:59], 0 offen
	buffer_store_b16 v31, v23, s[56:59], 0 offen
	v_add_lshl_u32 v21, v15, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s2, s3
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v23, v18, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s16, s1
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v58.l, v32.h
	s_clause 0x1
	buffer_store_b16 v59, v24, s[56:59], 0 offen
	buffer_store_b16 v32, v25, s[56:59], 0 offen
	v_add_lshl_u32 v24, v17, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s18, s1
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v61.l, v33.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s17, s1
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[56:59], 0 offen
	buffer_store_b16 v33, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	v_add_lshl_u32 v20, v14, v19, 1
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s15, s1
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v61, v23, s[56:59], 0 offen
	buffer_store_b16 v34, v24, s[56:59], 0 offen
	v_add_lshl_u32 v23, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s14, s1
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v60.l, v34.h
	v_add_lshl_u32 v24, v11, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s13, s1
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v63.l, v35.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s12, s1
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[56:59], 0 offen
	buffer_store_b16 v35, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	v_add_lshl_u32 v20, v10, v19, 1
	v_add_lshl_u32 v21, v9, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s11, s1
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v63, v23, s[56:59], 0 offen
	buffer_store_b16 v38, v24, s[56:59], 0 offen
	v_add_lshl_u32 v23, v8, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s10, s1
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v62.l, v38.h
	v_add_lshl_u32 v24, v7, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s9, s1
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v65.l, v40.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s8, s1
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[56:59], 0 offen
	buffer_store_b16 v40, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	v_add_lshl_u32 v20, v6, v19, 1
	v_add_lshl_u32 v21, v5, v19, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s7, s1
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v65, v23, s[56:59], 0 offen
	buffer_store_b16 v41, v24, s[56:59], 0 offen
	v_add_lshl_u32 v23, v4, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s6, s1
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v64.l, v41.h
	v_add_lshl_u32 v24, v3, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s5, s1
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v19, v2, v19, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s3, s4, s1
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v67.l, v42.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	s_clause 0x1
	buffer_store_b16 v64, v20, s[56:59], 0 offen
	buffer_store_b16 v42, v21, s[56:59], 0 offen
	v_add_lshl_u32 v20, v15, v16, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s2, s1
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v21, v18, v16, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s16, s0
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v66.l, v43.h
	s_clause 0x1
	buffer_store_b16 v67, v23, s[56:59], 0 offen
	buffer_store_b16 v43, v24, s[56:59], 0 offen
	v_add_lshl_u32 v23, v17, v16, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s18, s0
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v69.l, v44.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s17, s0
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[56:59], 0 offen
	buffer_store_b16 v44, v20, s[56:59], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_add_lshl_u32 v19, v14, v16, 1
	v_add_lshl_u32 v20, v13, v16, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s15, s0
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[56:59], 0 offen
	buffer_store_b16 v45, v23, s[56:59], 0 offen
	v_add_lshl_u32 v21, v12, v16, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s14, s0
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v68.l, v45.h
	v_add_lshl_u32 v23, v11, v16, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s13, s0
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v71.l, v46.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s12, s0
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[56:59], 0 offen
	buffer_store_b16 v46, v20, s[56:59], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_add_lshl_u32 v19, v10, v16, 1
	v_add_lshl_u32 v20, v9, v16, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s11, s0
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[56:59], 0 offen
	buffer_store_b16 v47, v23, s[56:59], 0 offen
	v_add_lshl_u32 v21, v8, v16, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s10, s0
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v70.l, v47.h
	v_add_lshl_u32 v23, v7, v16, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s9, s0
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v73.l, v48.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s8, s0
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v70, v19, s[56:59], 0 offen
	buffer_store_b16 v48, v20, s[56:59], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_add_lshl_u32 v19, v6, v16, 1
	v_add_lshl_u32 v20, v5, v16, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s7, s0
	.loc	1 814 9                         ; ragged.py:814:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[56:59], 0 offen
	buffer_store_b16 v49, v23, s[56:59], 0 offen
	v_add_lshl_u32 v21, v4, v16, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s6, s0
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v23, v3, v16, 1
	v_add_lshl_u32 v16, v2, v16, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s5, s0
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v15, v15, v1, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s1, s4, s0
	s_and_b32 s0, s2, s0
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v18, v18, v1, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s16, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v17, v17, v1, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s18, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v14, v14, v1, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s17, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v13, v13, v1, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s15, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v12, v12, v1, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s14, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v11, v11, v1, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s13, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v10, v10, v1, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s12, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v9, v9, v1, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s11, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v8, v8, v1, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s10, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v7, v7, v1, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s9, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v6, v6, v1, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s8, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v5, v5, v1, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s7, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v4, v4, v1, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s6, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_add_lshl_u32 v3, v3, v1, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s5, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v72.l, v49.h
	v_mov_b16_e32 v74.l, v51.h
	v_mov_b16_e32 v75.l, v50.h
	v_mov_b16_e32 v76.l, v37.h
	v_mov_b16_e32 v77.l, v52.h
	v_mov_b16_e32 v78.l, v29.h
	v_mov_b16_e32 v79.l, v53.h
	v_mov_b16_e32 v80.l, v22.h
	v_mov_b16_e32 v81.l, v39.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_cndmask_b32_e64 v2, 0x80000000, v4, s0
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 s0, s4, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_mov_b16_e32 v83.l, v27.h
	.loc	1 817 18                        ; ragged.py:817:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 814 9                         ; ragged.py:814:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x14
	buffer_store_b16 v72, v19, s[56:59], 0 offen
	buffer_store_b16 v50, v20, s[56:59], 0 offen
	buffer_store_b16 v75, v21, s[56:59], 0 offen
	buffer_store_b16 v51, v23, s[56:59], 0 offen
	buffer_store_b16 v74, v16, s[56:59], 0 offen
	buffer_store_b16 v52, v15, s[56:59], 0 offen
	buffer_store_b16 v77, v18, s[56:59], 0 offen
	buffer_store_b16 v37, v17, s[56:59], 0 offen
	buffer_store_b16 v76, v14, s[56:59], 0 offen
	buffer_store_b16 v53, v13, s[56:59], 0 offen
	buffer_store_b16 v79, v12, s[56:59], 0 offen
	buffer_store_b16 v29, v11, s[56:59], 0 offen
	buffer_store_b16 v78, v10, s[56:59], 0 offen
	buffer_store_b16 v39, v9, s[56:59], 0 offen
	buffer_store_b16 v81, v8, s[56:59], 0 offen
	buffer_store_b16 v22, v7, s[56:59], 0 offen
	buffer_store_b16 v80, v6, s[56:59], 0 offen
	buffer_store_b16 v27, v5, s[56:59], 0 offen
	buffer_store_b16 v83, v2, s[56:59], 0 offen
	buffer_store_b16 v0, v3, s[56:59], 0 offen
	buffer_store_b16 v82, v1, s[56:59], 0 offen
	.loc	1 679 5                         ; ragged.py:679:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 168
		.amdhsa_next_free_sgpr 64
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 168
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 64
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10524
; TotalNumSgprs: 66
; NumVgprs: 168
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 66
; NumVGPRsForWavesPerEU: 168
; Occupancy: 9
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     66
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     168
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
