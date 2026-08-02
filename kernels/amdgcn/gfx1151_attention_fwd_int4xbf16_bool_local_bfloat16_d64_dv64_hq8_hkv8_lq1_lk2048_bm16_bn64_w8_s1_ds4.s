	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s70, s[0:1], 0x64
	s_load_b32 s71, s[0:1], 0x5c
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v60, 15, v0
	v_lshrrev_b32_e32 v2, 4, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	v_and_b32_e32 v61, 0xc0, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v9, 1, v60
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v58, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_lshrrev_b32_e32 v63, 4, v61
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s12, s70
	s_cvt_f32_u32 s4, s12
	s_sub_i32 s5, 0, s12
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s4, s5
	s_add_i32 s13, s4, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s70
	s_mul_hi_u32 s4, s6, s13
	s_ashr_i32 s5, s5, 31
	s_mul_i32 s7, s4, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s8, s6, s12
	s_cmp_ge_u32 s6, s12
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s6, s12
	s_load_b64 s[8:9], s[0:1], 0x0
	s_cselect_b32 s4, s7, s4
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s71, v9
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s5
	s_load_b64 s[6:7], s[0:1], 0x7c
	s_sub_i32 s14, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s20, s14, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s14, s14, s70
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s5, s20, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s20, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s5, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s69, s2, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, v1, s71, v[9:10]
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	s_load_b32 s4, s[0:1], 0x84
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	v_lshrrev_b32_e32 v3, 3, v61
	buffer_load_u16 v1, v1, s[8:11], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s9, s70, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v58, v3, 0
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s10, s9, s70
	s_abs_i32 s9, s9
	s_ashr_i32 s10, s10, 31
	s_mul_hi_u32 s11, s9, s13
	s_mov_b32 s8, 0
	s_mul_i32 s13, s11, s12
	s_add_i32 s15, s11, 1
	s_sub_i32 s9, s9, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s9, s12
	s_cmp_ge_u32 s9, s12
	s_cselect_b32 s11, s15, s11
	s_cselect_b32 s2, s2, s9
	s_add_i32 s9, s11, 1
	s_cmp_ge_u32 s2, s12
	s_cselect_b32 s2, s9, s11
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s11, s7, s4
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s10
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s11, s11, s20
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s10
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s11, s11, 16
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s4, s6
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s10, s11, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s20
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s10, s10, 63
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s11, s69, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s12, s10, 31
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s9, s9, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s12, s12, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s11, s11, 6
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s10, s10, s12
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s9, s9, 0x7fffffc0
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s11, s2
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s10, s10, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s72, s11, s9
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s73, s2, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s72, s73
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v10, 4, v61
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr10
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[52:53], s[0:1], 0x40
	s_load_b32 s68, s[0:1], 0x60
	v_and_b32_e32 v43, 63, v0
	v_and_b32_e32 v62, 3, v0
	v_lshlrev_b32_e32 v59, 2, v0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_14
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s20, v60
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s5, v60, 1
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	v_dual_mov_b32 v154, 0xff800000 :: v_dual_and_b32 v7, 60, v58
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v1
	v_lshrrev_b32_e32 v8, 5, v0
	v_bfe_i32 v17, v0, 7, 1
	.loc	1 822 49                        ; attention.py:822:49
	v_lshlrev_b32_e32 v44, 3, v62
	s_clause 0x1
	s_load_b64 s[54:55], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x68
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	v_dual_mov_b32 v22, 0x7632 :: v_dual_and_b32 v3, 24, v58
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v4, 16, v0
	v_lshrrev_b32_e32 v6, 1, v0
	v_dual_mov_b32 v65, 0xff800000 :: v_dual_lshlrev_b32 v16, 6, v0
	v_and_or_b32 v32, v8, 3, v7
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s13, 0xffff
	s_mov_b32 s56, s12
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_and_b32 v31, 64, v16
	buffer_load_u16 v10, v1, s[56:59], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v18, 0x7c, v59
	v_and_b32_e32 v17, 0x84, v17
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v28, v60, 5, v3
	v_and_b32_e32 v30, 24, v6
	v_and_b32_e32 v16, 0x380, v16
	v_dual_mov_b32 v8, v1 :: v_dual_lshlrev_b32 v33, 2, v4
	v_mov_b32_e32 v3, v1
	v_lshl_or_b32 v69, v60, 8, v18
	v_mov_b32_e32 v6, v1
	v_xor_b32_e32 v17, v32, v17
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v11, 6, v61
	v_and_or_b32 v18, 0x380, v59, v7
	v_mov_b32_e32 v7, v1
	v_or3_b32 v88, v16, v33, v9
	v_xor_b32_e32 v9, 4, v69
	v_or_b32_e32 v95, v17, v31
	v_dual_mov_b32 v21, 0x5410 :: v_dual_and_b32 v12, 7, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 0xf8, v0
	v_dual_mov_b32 v67, 0xff800000 :: v_dual_lshlrev_b32 v14, 3, v0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v27, s20, v11
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_cmp_eq_u32_e64 s2, 0, v4
	v_add_nc_u32_e32 v99, 0, v9
	v_xor_b32_e32 v9, 0x108, v95
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s74, s3, 11
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v64, 0xff800000 :: v_dual_lshlrev_b32 v13, 3, v12
	v_and_or_b32 v68, v2, 1, s74
	v_mov_b32_e32 v2, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v29, 2, v5
	v_lshrrev_b32_e32 v35, 1, v5
	v_mov_b32_e32 v5, v1
	v_xor_b32_e32 v14, v14, v30
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v24, 4, v11
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s12, s0, 3
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v39, s4, v27
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, 1, v27
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v27, 8, v28
	v_xor_b32_e32 v47, 32, v69
	v_dual_mov_b32 v4, v1 :: v_dual_and_b32 v15, 0x60, v0
	v_bfe_i32 v23, v0, 3, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v25, 8, v11
	v_cndmask_b32_e64 v21, 0x1054, v21, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v40, 16, v28
	v_xor_b32_e32 v48, 36, v69
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s16, s16, 0x3fb8aa3b
	v_add_nc_u32_e32 v130, 0, v9
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v26, 12, v11
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v87, 0, v28
	v_xor_b32_e32 v28, 24, v28
	v_xor_b32_e32 v49, 40, v69
	v_xor_b32_e32 v50, 44, v69
	v_lshrrev_b32_e32 v19, 2, v61
	v_xor_b32_e32 v51, 48, v69
	v_xor_b32_e32 v52, 52, v69
	v_xor_b32_e32 v53, 56, v69
	v_xor_b32_e32 v54, 60, v69
	v_add_nc_u32_e32 v55, 0, v31
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[45:46], null, s68, v29, v[13:14]
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v90, 0, v27
	v_add_nc_u32_e32 v106, 0, v47
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[46:47], null, s19, v24, v[43:44]
	v_dual_mov_b32 v153, 0xff800000 :: v_dual_and_b32 v20, 64, v58
	v_and_or_b32 v23, 0x410, v23, v15
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s13, s3, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s68, v13
	v_xor_b32_e32 v18, v18, v63
	v_cndmask_b32_e64 v13, 0x3276, v22, s2
	v_lshl_or_b32 v21, v21, 8, v21
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v91, 0, v40
	v_add_nc_u32_e32 v107, 0, v48
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[47:48], null, s19, v25, v[43:44]
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v92, 0, v28
	v_add_nc_u32_e32 v108, 0, v49
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[48:49], null, s19, v26, v[43:44]
	v_add_nc_u32_e32 v109, 0, v50
	v_mad_u64_u32 v[49:50], null, s19, v11, v[43:44]
	v_add_nc_u32_e32 v110, 0, v51
	v_add_nc_u32_e32 v111, 0, v52
	v_add_nc_u32_e32 v112, 0, v53
	v_add_nc_u32_e32 v113, 0, v54
	v_add_nc_u32_e32 v114, v55, v19
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[50:51], v87
	ds_load_b64 v[52:53], v90
	ds_load_b64 v[54:55], v91
	ds_load_b64 v[56:57], v92
	v_dual_mov_b32 v71, v1 :: v_dual_add_nc_u32 v20, 0, v20
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v36, s20, v24
	v_or_b32_e32 v37, s20, v25
	v_or_b32_e32 v96, v18, v31
	v_and_b32_e32 v18, 0x540054, v21
	v_lshl_or_b32 v13, v13, 8, v13
	v_or_b32_e32 v38, s20, v26
	v_xor_b32_e32 v16, 8, v69
	v_xor_b32_e32 v30, 12, v69
	v_xor_b32_e32 v32, 16, v69
	v_xor_b32_e32 v33, 20, v69
	v_add_nc_u32_e32 v89, v20, v19
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v20, s4, v36
	v_add_nc_u32_e32 v29, s4, v37
	v_xor_b32_e32 v17, 4, v88
	v_lshl_or_b32 v18, v18, 4, v18
	v_and_b32_e32 v13, 0x760076, v13
	v_xor_b32_e32 v41, 24, v69
	v_xor_b32_e32 v42, 28, v69
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 1, v36
	v_cmp_gt_i32_e64 s5, 1, v38
	v_xor_b32_e32 v27, 8, v88
	v_xor_b32_e32 v28, 12, v88
	v_xor_b32_e32 v36, 20, v88
	v_add_nc_u32_e32 v98, 0, v14
	v_add_nc_u32_e32 v100, 0, v16
	v_add_nc_u32_e32 v101, 0, v30
	v_add_nc_u32_e32 v102, 0, v32
	v_add_nc_u32_e32 v103, 0, v33
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v115, s6, v20
	v_subrev_nc_u32_e32 v116, s6, v29
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v118, s7, v20
	v_add_nc_u32_e32 v119, s7, v29
	v_xor_b32_e32 v14, 0x210, v95
	v_xor_b32_e32 v16, 0x318, v95
	v_xor_b32_e32 v19, 0x410, v96
	v_xor_b32_e32 v20, 0x820, v96
	v_xor_b32_e32 v21, 0xc30, v96
	v_add_nc_u32_e32 v122, 0, v17
	v_and_b32_e32 v129, 0x5040504, v18
	v_lshl_or_b32 v11, v13, 4, v13
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v93, s6, v39
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v94, s7, v39
	v_or_b32_e32 v70, 30, v68
	v_or_b32_e32 v72, 32, v68
	v_or_b32_e32 v73, 34, v68
	v_or_b32_e32 v74, 36, v68
	v_or_b32_e32 v75, 38, v68
	v_or_b32_e32 v76, 40, v68
	v_or_b32_e32 v77, 42, v68
	v_or_b32_e32 v78, 44, v68
	v_or_b32_e32 v79, 46, v68
	v_or_b32_e32 v80, 48, v68
	v_or_b32_e32 v81, 50, v68
	v_or_b32_e32 v82, 52, v68
	v_or_b32_e32 v83, 54, v68
	v_or_b32_e32 v84, 56, v68
	v_or_b32_e32 v85, 58, v68
	v_or_b32_e32 v86, 60, v68
	v_add_nc_u32_e32 v104, 0, v41
	v_add_nc_u32_e32 v105, 0, v42
	v_add_nc_u32_e32 v123, 0, v27
	v_add_nc_u32_e32 v124, 0, v28
	v_add_nc_u32_e32 v126, 0, v36
	v_add_nc_u32_e32 v131, 0, v14
	v_add_nc_u32_e32 v132, 0, v16
	v_add_nc_u32_e32 v133, 0, v19
	v_add_nc_u32_e32 v134, 0, v20
	v_add_nc_u32_e32 v135, 0, v21
	v_and_b32_e32 v143, 0x7060706, v11
	v_or_b32_e32 v152, 62, v68
	.loc	1 774 26                        ; attention.py:774:26
	s_mov_b32 s44, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s20, s20, s19
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s75, 0x76543210
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_and_b32 s65, s11, 0xffff
	s_mov_b32 s60, s14
	s_mov_b32 s64, s10
	s_mov_b32 s56, s8
	s_mov_b32 s57, s9
	s_mov_b32 s61, s15
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e32 vcc_lo, s71, v44
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v151, s16, v9 :: v_dual_lshlrev_b32 v34, 4, v12
	v_lshl_or_b32 v15, v15, 6, v34
	v_xor_b32_e32 v22, v34, v35
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v34, s4, v38
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v37
	v_xor_b32_e32 v35, 16, v88
	v_xor_b32_e32 v15, v23, v15
	v_lshl_or_b32 v97, v12, 10, v22
	v_xor_b32_e32 v37, 24, v88
	v_xor_b32_e32 v38, 28, v88
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v117, s6, v34
	v_lshl_or_b32 v121, v12, 7, v15
	v_xor_b32_e32 v22, 0x90, v97
	v_xor_b32_e32 v23, 0x120, v97
	v_xor_b32_e32 v29, 0x1b0, v97
	v_xor_b32_e32 v30, 0x240, v97
	v_xor_b32_e32 v31, 0x2d0, v97
	v_xor_b32_e32 v32, 0x360, v97
	v_xor_b32_e32 v33, 0x3f0, v97
	v_xor_b32_e32 v12, 16, v121
	v_xor_b32_e32 v13, 32, v121
	v_xor_b32_e32 v15, 48, v121
	v_xor_b32_e32 v17, 64, v121
	v_xor_b32_e32 v18, 0x50, v121
	v_xor_b32_e32 v24, 0x60, v121
	v_xor_b32_e32 v25, 0x70, v121
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v120, s7, v34
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s6, s18, s13
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s7, s17, s12
	v_add_nc_u32_e32 v125, 0, v35
	v_add_nc_u32_e32 v127, 0, v37
	v_add_nc_u32_e32 v128, 0, v38
	v_add_nc_u32_e32 v136, 0, v22
	v_add_nc_u32_e32 v137, 0, v23
	v_add_nc_u32_e32 v138, 0, v29
	v_add_nc_u32_e32 v139, 0, v30
	v_add_nc_u32_e32 v140, 0, v31
	v_add_nc_u32_e32 v141, 0, v32
	v_add_nc_u32_e32 v142, 0, v33
	v_add_nc_u32_e32 v144, 0, v12
	v_add_nc_u32_e32 v145, 0, v13
	v_add_nc_u32_e32 v146, 0, v15
	v_add_nc_u32_e32 v147, 0, v17
	v_add_nc_u32_e32 v148, 0, v18
	v_add_nc_u32_e32 v149, 0, v24
	v_add_nc_u32_e32 v150, 0, v25
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s76, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s76, s76, s20
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 25 is_stmt 0                ; attention.py:0:25
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v155.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 877 34                        ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_and_b16 v42.l, 0xff, v42.l
	v_and_b16 v41.h, 0xff, v41.h
	v_and_b16 v42.h, 0xff, v42.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v161.h, v160.l
	v_mov_b16_e64 v160.l, v155.l
	v_mov_b16_e64 v160.h, v159.l
	v_mov_b16_e64 v159.l, v155.l
	v_mov_b16_e64 v159.h, v158.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_mul_f32_e32 v190, v151, v12
	v_mul_f32_e32 v13, v151, v13
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v165.h, v164.l
	v_mov_b16_e64 v164.l, v155.l
	v_mov_b16_e64 v164.h, v163.l
	v_mov_b16_e64 v156.h, v187.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v24, v151, v24
	v_mul_f32_e32 v187, v151, v9
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v9.l, 0xff, v41.l
	v_cmp_ne_u16_e64 s6, 0, v42.l
	v_cmp_ne_u16_e64 s7, 0, v41.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v172.h, v171.l
	v_mov_b16_e64 v171.l, v155.l
	v_mov_b16_e64 v171.h, v170.l
	v_mov_b16_e64 v170.l, v155.l
	v_mov_b16_e64 v170.h, v169.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s8, 0, v42.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v160, v190, v160
	v_dual_mul_f32 v18, v151, v18 :: v_dual_mul_f32 v159, v13, v159
	v_mul_f32_e32 v17, v151, v17
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s9, 0, v9.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s40, s10, s6
	s_and_b32 s35, s11, s7
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v28, v151, v28
	v_dual_mul_f32 v19, v151, v19 :: v_dual_mul_f32 v170, v18, v170
	v_dual_mul_f32 v26, v151, v26 :: v_dual_mul_f32 v171, v17, v171
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v9, 0, 1, s40
	s_and_b32 s37, s12, s8
	v_add_nc_u32_e32 v17, 0, v95
	v_add_nc_u32_e32 v18, 0, v88
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v188, v151, v10
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v10, 0, 1, s35
	s_and_b32 s38, s13, s9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v163.h, v162.l
	v_mov_b16_e64 v162.l, v155.l
	v_mov_b16_e64 v162.h, v161.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v189, v151, v11
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v11, 0, 1, s37
	v_cndmask_b32_e64 v12, 0, 1, s38
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v17, v9
	ds_store_b8 v130, v10
	ds_store_b8 v131, v11
	ds_store_b8 v132, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v18
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v18 offset:32
	ds_load_u16_d16 v10, v122
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v122 offset:32
	ds_load_u16_d16 v11, v123
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v180.h, v179.l
	v_mov_b16_e64 v179.l, v155.l
	v_mov_b16_e64 v179.h, v178.l
	v_mov_b16_e64 v178.l, v155.l
	v_mov_b16_e64 v178.h, v177.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_mul_f32_e32 v25, v151, v25
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v184.h, v183.l
	v_mov_b16_e64 v183.l, v155.l
	v_mov_b16_e64 v183.h, v182.l
	v_mov_b16_e64 v182.l, v155.l
	v_mov_b16_e64 v182.h, v181.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_mul_f32_e32 v26, v26, v178
	v_dual_mul_f32 v38, v151, v38 :: v_dual_mul_f32 v25, v25, v179
	v_mul_f32_e32 v37, v151, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v186.h, v185.l
	v_mov_b16_e64 v185.l, v155.l
	v_mov_b16_e64 v185.h, v184.l
	v_mov_b16_e64 v184.l, v155.l
	v_mov_b16_e64 v158.l, v155.l
	v_mov_b16_e64 v158.h, v157.l
	v_mov_b16_e64 v157.l, v155.l
	v_mov_b16_e64 v157.h, v156.l
	v_mov_b16_e64 v156.l, v155.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v20, v20
	v_mul_f32_e32 v14, v151, v14
	v_mul_f32_e32 v15, v151, v15
	v_mul_f32_e32 v16, v151, v16
	v_mul_f32_e32 v38, v38, v182
	v_dual_mul_f32 v36, v151, v36 :: v_dual_mul_f32 v37, v37, v183
	v_mul_f32_e32 v35, v151, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v169.l, v155.l
	v_mov_b16_e64 v169.h, v168.l
	v_mov_b16_e64 v168.l, v155.l
	v_mov_b16_e64 v168.h, v167.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v21, v21
	v_mul_f32_e32 v20, v151, v20
	v_dual_mul_f32 v36, v36, v184 :: v_dual_mul_f32 v35, v35, v185
	v_mul_f32_e32 v156, v16, v156
	v_dual_mul_f32 v158, v14, v158 :: v_dual_mul_f32 v157, v15, v157
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_u16_d16 v15, v125
	ds_load_u16_d16 v16, v125 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v16, v126
	v_lshrrev_b16 v13.l, 8, v9.l
	v_lshrrev_b16 v13.h, 8, v9.h
	v_and_b16 v9.l, 1, v9.l
	v_and_b16 v9.h, 1, v9.h
	ds_load_u16_d16_hi v11, v123 offset:32
	ds_load_u16_d16 v12, v124
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v12, v124 offset:32
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v19, v169
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_u16_d16_hi v17, v126 offset:32
	ds_load_u16_d16_hi v18, v127
	ds_load_u16_d16 v19, v127 offset:32
	v_cmp_eq_u16_e64 s41, 1, v9.l
	v_cmp_eq_u16_e64 s28, 1, v9.h
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v9, 0, v69
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v21, v151, v21 :: v_dual_mul_f32 v42, v20, v168
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_u16_d16 v20, v128
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v20, v128 offset:32
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v167.l, v155.l
	v_mov_b16_e64 v167.h, v166.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v166.l, v155.l
	v_mov_b16_e64 v166.h, v165.l
	v_mov_b16_e64 v165.l, v155.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v32, v32
	v_mul_f32_e32 v22, v151, v22
	v_mul_f32_e32 v23, v151, v23
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v14.l, 8, v10.l
	v_lshrrev_b16 v15.h, 8, v11.l
	v_lshrrev_b16 v18.l, 8, v12.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v30, v151, v30 :: v_dual_mul_f32 v167, v21, v167
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v21.l, 8, v15.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v155.h, v186.l
	v_mov_b16_e64 v186.l, v155.l
	v_mov_b16_e64 v176.h, v175.l
	v_mov_b16_e64 v175.l, v155.l
	v_mov_b16_e64 v175.h, v174.l
	v_mov_b16_e64 v174.l, v155.l
	v_mov_b16_e64 v174.h, v173.l
	v_mov_b16_e64 v173.h, v172.l
	v_mov_b16_e64 v172.l, v155.l
	v_mov_b16_e64 v161.l, v155.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v31, v31
	v_mul_f32_e32 v34, v151, v34
	v_mul_f32_e32 v33, v151, v33
	v_dual_mul_f32 v29, v151, v29 :: v_dual_mul_f32 v30, v30, v174
	v_dual_mul_f32 v166, v22, v166 :: v_dual_mul_f32 v165, v23, v165
	v_mul_f32_e32 v164, v24, v164
	v_mul_f32_e32 v162, v188, v162
	v_dual_mul_f32 v32, v151, v32 :: v_dual_mul_f32 v161, v189, v161
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v13.l, 1, v13.l
	v_lshrrev_b16 v14.h, 8, v10.h
	v_lshrrev_b16 v17.l, 8, v11.h
	v_lshrrev_b16 v19.h, 8, v12.h
	v_lshrrev_b16 v21.h, 8, v16.l
	v_lshrrev_b16 v22.l, 8, v16.h
	v_lshrrev_b16 v22.h, 8, v17.h
	v_lshrrev_b16 v23.l, 8, v18.h
	v_lshrrev_b16 v23.h, 8, v19.l
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v24.l, 8, v20.l
	v_lshrrev_b16 v24.h, 8, v20.h
	v_and_b16 v20.h, 1, v20.h
	v_and_b16 v14.l, 1, v14.l
	v_and_b16 v10.l, 1, v10.l
	v_and_b16 v15.h, 1, v15.h
	v_and_b16 v11.l, 1, v11.l
	v_and_b16 v18.l, 1, v18.l
	v_and_b16 v12.l, 1, v12.l
	v_and_b16 v21.l, 1, v21.l
	v_and_b16 v15.l, 1, v15.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v181.l, v155.l
	v_mov_b16_e64 v181.h, v180.l
	v_mov_b16_e64 v180.l, v155.l
	v_mov_b16_e64 v177.l, v155.l
	v_mov_b16_e64 v177.h, v176.l
	v_mov_b16_e64 v176.l, v155.l
	v_mov_b16_e64 v173.l, v155.l
	v_mov_b16_e64 v163.l, v155.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v40, v151, v40 :: v_dual_mul_f32 v29, v29, v175
	v_mul_f32_e32 v39, v151, v39
	v_dual_mul_f32 v27, v151, v27 :: v_dual_mul_f32 v28, v28, v176
	v_dual_mul_f32 v31, v151, v31 :: v_dual_mul_f32 v32, v32, v172
	v_dual_mul_f32 v34, v34, v186 :: v_dual_mul_f32 v33, v33, v155
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v13.h, 1, v13.h
	v_and_b16 v14.h, 1, v14.h
	v_and_b16 v10.h, 1, v10.h
	v_and_b16 v17.l, 1, v17.l
	v_and_b16 v11.h, 1, v11.h
	v_and_b16 v19.h, 1, v19.h
	v_and_b16 v12.h, 1, v12.h
	v_and_b16 v21.h, 1, v21.h
	v_and_b16 v16.l, 1, v16.l
	v_and_b16 v22.l, 1, v22.l
	v_and_b16 v16.h, 1, v16.h
	v_and_b16 v22.h, 1, v22.h
	v_and_b16 v17.h, 1, v17.h
	v_and_b16 v23.l, 1, v23.l
	v_and_b16 v18.h, 1, v18.h
	v_and_b16 v23.h, 1, v23.h
	v_and_b16 v19.l, 1, v19.l
	v_and_b16 v24.l, 1, v24.l
	v_and_b16 v20.l, 1, v20.l
	v_cmp_eq_u16_e64 s23, 1, v20.h
	v_cmp_eq_u16_e64 s20, 1, v13.l
	v_and_b16 v24.h, 1, v24.h
	v_cmp_eq_u16_e64 s42, 1, v10.l
	v_cmp_eq_u16_e64 s21, 1, v14.l
	v_cmp_eq_u16_e64 s36, 1, v11.l
	v_cmp_eq_u16_e64 s18, 1, v15.h
	v_cmp_eq_u16_e64 s39, 1, v12.l
	v_cmp_eq_u16_e64 s19, 1, v18.l
	v_cmp_eq_u16_e64 s33, 1, v15.l
	v_cmp_eq_u16_e64 s16, 1, v21.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v40, v40, v180 :: v_dual_mul_f32 v39, v39, v181
	v_mul_f32_e32 v27, v27, v177
	v_mul_f32_e32 v31, v31, v173
	v_mul_f32_e32 v163, v187, v163
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v33, s41
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s34, 1, v16.h
	v_cmp_eq_u16_e64 s30, 1, v18.h
	v_cmp_eq_u16_e64 s31, 1, v20.l
	v_cmp_eq_u16_e64 s29, 1, v10.h
	v_cmp_eq_u16_e64 s26, 1, v11.h
	v_cmp_eq_u16_e64 s27, 1, v12.h
	v_cmp_eq_u16_e64 s24, 1, v16.l
	v_cmp_eq_u16_e64 s25, 1, v17.h
	v_cmp_eq_u16_e64 s22, 1, v19.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v20, 0xff800000, v32, s23
	v_cndmask_b32_e64 v32, 0xff800000, v171, s20
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s17, 1, v22.l
	v_cmp_eq_u16_e64 s14, 1, v23.l
	v_cmp_eq_u16_e64 s15, 1, v24.l
	v_cmp_eq_u16_e64 s13, 1, v13.h
	v_cmp_eq_u16_e64 s12, 1, v14.h
	v_cmp_eq_u16_e64 s10, 1, v17.l
	v_cmp_eq_u16_e64 s11, 1, v19.h
	v_cmp_eq_u16_e64 s9, 1, v21.h
	v_cmp_eq_u16_e64 s8, 1, v22.h
	v_cmp_eq_u16_e64 s6, 1, v23.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v34, s42
	v_cndmask_b32_e64 v168, 0xff800000, v170, s21
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s7, 1, v24.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v35, s36
	v_cndmask_b32_e64 v41, 0xff800000, v41, s18
	v_cndmask_b32_e64 v36, 0xff800000, v36, s39
	v_cndmask_b32_e64 v42, 0xff800000, v42, s19
	v_cndmask_b32_e64 v37, 0xff800000, v37, s33
	v_cndmask_b32_e64 v167, 0xff800000, v167, s16
	v_cndmask_b32_e64 v38, 0xff800000, v38, s34
	v_cndmask_b32_e64 v39, 0xff800000, v39, s30
	v_cndmask_b32_e64 v40, 0xff800000, v40, s31
	v_cndmask_b32_e64 v25, 0xff800000, v25, s28
	v_cndmask_b32_e64 v26, 0xff800000, v26, s29
	v_cndmask_b32_e64 v27, 0xff800000, v27, s26
	v_cndmask_b32_e64 v28, 0xff800000, v28, s27
	v_cndmask_b32_e64 v29, 0xff800000, v29, s24
	v_cndmask_b32_e64 v30, 0xff800000, v30, s25
	v_cndmask_b32_e64 v31, 0xff800000, v31, s22
	v_cndmask_b32_e64 v166, 0xff800000, v166, s17
	v_cndmask_b32_e64 v165, 0xff800000, v165, s14
	v_cndmask_b32_e64 v164, 0xff800000, v164, s15
	v_cndmask_b32_e64 v163, 0xff800000, v163, s13
	v_cndmask_b32_e64 v162, 0xff800000, v162, s12
	v_cndmask_b32_e64 v161, 0xff800000, v161, s10
	v_cndmask_b32_e64 v160, 0xff800000, v160, s11
	v_cndmask_b32_e64 v21, 0xff800000, v159, s9
	v_cndmask_b32_e64 v22, 0xff800000, v158, s8
	v_cndmask_b32_e64 v23, 0xff800000, v157, s6
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v9, v33, v32 offset1:32
	ds_store_2addr_b32 v99, v34, v168 offset1:32
	ds_store_2addr_b32 v100, v35, v41 offset1:32
	ds_store_2addr_b32 v101, v36, v42 offset1:32
	ds_store_2addr_b32 v102, v37, v167 offset1:32
	ds_store_2addr_b32 v103, v38, v166 offset1:32
	ds_store_2addr_b32 v104, v39, v165 offset1:32
	ds_store_2addr_b32 v105, v40, v164 offset1:32
	ds_store_2addr_b32 v106, v25, v163 offset1:32
	ds_store_2addr_b32 v107, v26, v162 offset1:32
	ds_store_2addr_b32 v108, v27, v161 offset1:32
	ds_store_2addr_b32 v109, v28, v160 offset1:32
	ds_store_2addr_b32 v110, v29, v21 offset1:32
	ds_store_2addr_b32 v111, v30, v22 offset1:32
	v_add_nc_u32_e32 v9, 0, v96
	v_cndmask_b32_e64 v24, 0xff800000, v156, s7
	ds_store_2addr_b32 v112, v31, v23 offset1:32
	ds_store_2addr_b32 v113, v20, v24 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v13, v9
	ds_load_b32 v14, v133
	ds_load_b32 v15, v134
	ds_load_b32 v16, v135
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v172, v23, v24
	v_max3_f32 v157, v29, v30, v31
	v_max3_f32 v158, v20, v32, v168
	v_max3_f32 v159, v41, v42, v167
	v_max3_f32 v169, v166, v165, v164
	v_max3_f32 v170, v163, v162, v161
.Ltmp5:
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s72, s72, 64
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s72, s73
	.loc	1 877 25                        ; attention.py:877:25
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v9, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v11, v14 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v13, v13
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v12, v15 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v14, v14
	v_max_f32_e32 v9, v9, v9
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v18, v16 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v12, v12, v12
	v_dual_max_f32 v156, v16, v16 :: v_dual_max_f32 v9, v10, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v18, v18, v18
	v_max_f32_e32 v10, v17, v11
	v_max_f32_e32 v19, v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v9 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v11, v19, v12 :: v_dual_max_f32 v12, v156, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v18, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v156, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v9, v9, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v156, v156, v156
	v_max_f32_e32 v10, v10, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v12, v12, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v18, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v156, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v18, v18, v18
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v156, v156, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v10, v10, v18 :: v_dual_max_f32 v19, v19, v19
	v_max_f32_e32 v12, v12, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v18, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v19
	v_max_f32_e32 v9, v9, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v156, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v17, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v156, v156, v156
	v_dual_max_f32 v10, v10, v18 :: v_dual_max_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v12, v12, v156
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v18, v10, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v19
	v_max_f32_e32 v9, v9, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v156, v12, -1, -1 op_sel:[1,0]
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v17, v9, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v156, v156, v156
	v_dual_max_f32 v10, v10, v18 :: v_dual_max_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, v17, v17
	v_max3_f32 v18, v36, v37, v38
	v_max_f32_e32 v12, v12, v156
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s78, v10, 31
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v19
	v_max_f32_e32 v9, v9, v17
	v_max_f32_e32 v17, v33, v34
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s80, v12, 31
	v_mov_b32_e32 v10, s78
	v_permlanex16_b32 v19, v11, -1, -1 op_sel:[1,0]
	v_readlane_b32 s43, v9, 31
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v156, v26, v27, v28
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v12, s80
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v17, v17, v35, v18
	v_max_f32_e32 v19, v19, v19
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v9, s43
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v18, v156, v157, v158
	v_max3_f32 v157, v159, v169, v170
.Ltmp44:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s43, 0xff800000, v154
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v11, v11, v19
	v_max3_f32 v19, v39, v40, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s79, v11, 31
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v17, v17, v19, v18
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v11, s79
	ds_store_b128 v89, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v114
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v171, v160, v21
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v158, v171, v22, v172
	v_max3_f32 v17, v17, v157, v158
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v156, v9
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_mov_b32 v158, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v156, v156 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v158, v158 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v18, v156, v156
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v156, v17, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp57:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v66, v66, v12, v158
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v19, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v64, v64, v10, v19
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v9, v9, v18
.Ltmp61:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v18, v154, v17, v156
	v_max_f32_e32 v157, v153, v153
	v_max_f32_e32 v67, v67, v67
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v156, v11
.Ltmp63:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v14, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v34, v34, v18 :: v_dual_max_f32 v17, v157, v9
	v_sub_f32_e32 v38, v38, v18
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v156, v156 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v36, v36, v18 :: v_dual_max_f32 v67, v67, v9
	v_sub_f32_e32 v40, v40, v18
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v9, v154, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v65, v65, v11, v156
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v157, v153, v17
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v13, v13, v67 :: v_dual_sub_f32 v26, v26, v18
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v9, v9
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v14, v16, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v11, v157
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v13
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v13, v15, v65 :: v_dual_sub_f32 v28, v28, v18
	v_sub_f32_e32 v30, v30, v18
	v_sub_f32_e32 v42, v42, v18
	v_sub_f32_e32 v32, v32, v18
	v_sub_f32_e32 v156, v168, v18
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v154, 0, v9, s43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v9, v12
	v_exp_f32_e32 v12, v13
	v_exp_f32_e32 v13, v14
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s40
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v153
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v157, v167, v18
	v_sub_f32_e32 v158, v166, v18
	v_sub_f32_e32 v166, v22, v18
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v19, 0, v11, s40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s35
	v_cndmask_b32_e64 v11, 0, v12, s37
	v_cndmask_b32_e64 v12, 0, v13, s38
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp69:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v159, v165, v18
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v165, v21, v18
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp73:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v167, v23, v18
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v13, v10, -1, -1 op_sel:[1,0]
.Ltmp76:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v33, v18
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v10, v10, v13
.Ltmp78:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v13, v9, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v14, v11, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v15, v12, -1, -1 op_sel:[1,0]
	v_readlane_b32 s35, v10, 31
.Ltmp80:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v9, v9, v13 :: v_dual_add_f32 v10, v11, v14
	v_add_f32_e32 v11, v12, v15
	v_mad_u64_u32 v[12:13], null, s77, s68, v[45:46]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s37, v9, 31
	v_readlane_b32 s38, v10, 31
	s_delay_alu instid0(VALU_DEP_4)
	v_readlane_b32 s40, v11, 31
	v_mov_b32_e32 v9, s35
.Ltmp83:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v10, s37 :: v_dual_lshlrev_b32 v13, 1, v12
.Ltmp85:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v14, v12, s68, 1
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v11, s38 :: v_dual_mov_b32 v12, s40
.Ltmp87:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	v_cndmask_b32_e64 v153, 0x80000000, v14, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v18
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_store_b128 v89, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp89:
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[13:16], v13, s[64:67], 0 offen
	buffer_load_b128 v[9:12], v153, s[64:67], 0 offen
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v20, v18
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[20:23], v114
.Ltmp91:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v18
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	s_waitcnt lgkmcnt(0)
	v_exp_f32_e32 v21, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v41, v18
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v153
	v_exp_f32_e32 v153, v158
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v164, v164, v18
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v23, v40
	v_exp_f32_e32 v40, v41
	v_exp_f32_e32 v41, v42
	v_exp_f32_e32 v42, v157
	v_exp_f32_e32 v157, v164
	v_exp_f32_e32 v164, v166
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v166.l, v33.h
	v_mov_b16_e64 v166.h, v155.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s39
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v154
	v_mul_f32_e32 v2, v2, v154
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v158, v20
.Ltmp93:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v154
	v_mul_f32_e32 v4, v4, v154
	v_mul_f32_e32 v5, v5, v154
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v158, v158 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v154
	v_mul_f32_e32 v7, v7, v154
	v_mul_f32_e32 v8, v8, v154
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v154, 1, v166
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v20, v20, v158
.Ltmp97:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v34.h
	v_mov_b16_e64 v158.h, v155.l
	v_cmp_o_f32_e64 s35, v34, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v154, v33, v154, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v26, v26
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v158, 1, v158
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v23, 0, v23, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v166.l, v35.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v21, 0, v21, s34
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v25, v25, v18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v158, v34, v158, 0x7fff
	v_mov_b16_e32 v34.l, v36.h
	v_mov_b16_e64 v34.h, v155.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v27, v27, v18
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v26, 0, v26, s29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v158.h, 0x7fff, v158.h, s35
	v_cmp_o_f32_e64 s35, v33, v33
	v_and_b32_e32 v34, 1, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v37, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v36, v36
	v_and_b32_e32 v37, 1, v166
	v_mov_b16_e64 v166.l, v21.h
	v_add3_u32 v34, v36, v34, 0x7fff
	v_mov_b16_e32 v36.l, v33.h
	v_mov_b16_e64 v36.h, v155.l
	v_add3_u32 v37, v35, v37, 0x7fff
	v_cmp_o_f32_e64 s31, v33, v33
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s33
	v_cmp_o_f32_e64 s33, v35, v35
	v_and_b32_e32 v36, 1, v36
	v_cndmask_b16 v158.l, 0x7fff, v154.h, s35
	v_and_b32_e32 v154, 1, v166
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v25, v25
	v_exp_f32_e32 v27, v27
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v35, v33, v36, 0x7fff
	v_mov_b16_e32 v35.l, v26.h
	v_add3_u32 v36, v21, v154, 0x7fff
	v_mov_b16_e64 v154.h, v155.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v28, v28
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s31
	v_mov_b16_e64 v35.h, v155.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v18
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v23, v23
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v25, s28
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v29, v29, v18
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v27, s26
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v22, v39
	v_exp_f32_e32 v30, v30
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v28, 0, v28, s27
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v26, v26
	v_cmp_o_f32_e64 s27, v25, v25
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v31, v31, v18
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	v_exp_f32_e32 v39, v156
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v34.l, 0x7fff, v37.h, s33
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v22, 0, v22, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v21, v21
	v_mov_b16_e32 v21.l, v23.h
	v_mov_b16_e64 v21.h, v155.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v31, v31
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.l, v22.h
	v_cndmask_b16 v33.h, 0x7fff, v36.h, s30
	v_cmp_o_f32_e64 s28, v22, v22
	v_and_b32_e32 v21, 1, v21
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v163, v163, v18
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v36, 1, v154
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v161, v161, v18
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v21, v23, v21, 0x7fff
	v_mov_b16_e32 v21.l, v25.h
	v_add3_u32 v23, v22, v36, 0x7fff
	v_and_b32_e32 v22, 1, v35
	v_mov_b16_e32 v35.l, v27.h
	v_cndmask_b16 v36.h, 0x7fff, v21.h, s29
	v_mov_b16_e64 v21.h, v155.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v162, v162, v18
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.l, 0x7fff, v23.h, s28
	v_add3_u32 v22, v26, v22, 0x7fff
	v_mov_b16_e32 v23.l, v28.h
	v_and_b32_e32 v21, 1, v21
	v_mov_b16_e64 v23.h, v155.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v160, v160, v18
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v26.h, v155.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v161, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v21, v25, v21, 0x7fff
	v_and_b32_e32 v25, 1, v35
	v_and_b32_e32 v23, 1, v23
	v_cndmask_b16 v35.h, 0x7fff, v22.h, s26
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v22, 0, v30, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v35.l, 0x7fff, v21.h, s27
	v_add3_u32 v21, v27, v25, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v29, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v27, v27
	v_add3_u32 v23, v28, v23, 0x7fff
	v_mov_b16_e32 v26.l, v22.h
	v_cmp_o_f32_e64 s24, v28, v28
	v_mov_b16_e32 v27.l, v25.h
	v_mov_b16_e64 v27.h, v155.l
	v_cndmask_b16 v37.l, 0x7fff, v21.h, s25
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v21, 0, v38, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v26, 1, v26
	v_cndmask_b16 v37.h, 0x7fff, v23.h, s24
	v_and_b32_e32 v23, 1, v27
	v_cmp_o_f32_e64 s23, v22, v22
	v_mov_b16_e32 v27.l, v21.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v24, v24, v18
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v26, v22, v26, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v22, 0, v31, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v23, v25, v23, 0x7fff
	v_and_b32_e32 v27, 1, v27
	v_cmp_o_f32_e64 s22, v25, v25
	v_cndmask_b16 v38.h, 0x7fff, v26.h, s23
	v_mov_b16_e32 v26.l, v22.h
	v_mov_b16_e64 v26.h, v155.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v39, s21
	v_cndmask_b32_e64 v28, 0, v32, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v27, v21, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v21, v21
	v_and_b32_e32 v26, 1, v26
	v_mov_b16_e32 v21.l, v25.h
	v_mov_b16_e32 v29.l, v28.h
	v_mov_b16_e64 v29.h, v155.l
	v_mov_b16_e64 v21.h, v155.l
	v_cndmask_b16 v39.h, 0x7fff, v27.h, s20
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v40, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.l, 0x7fff, v23.h, s22
	v_add3_u32 v23, v22, v26, 0x7fff
	v_and_b32_e32 v26, 1, v29
	v_and_b32_e32 v21, 1, v21
	v_cmp_o_f32_e64 s18, v22, v22
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v22, 0, v41, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v29.l, v27.h
	v_add3_u32 v26, v28, v26, 0x7fff
	v_add3_u32 v21, v25, v21, 0x7fff
	v_mov_b16_e64 v30.h, v155.l
	v_mov_b16_e32 v30.l, v22.h
	v_cmp_o_f32_e64 s19, v25, v25
	v_cmp_o_f32_e64 s20, v28, v28
	v_and_b32_e32 v25, 1, v29
	v_cndmask_b16 v39.l, 0x7fff, v23.h, s18
	v_and_b32_e32 v23, 1, v30
	v_cndmask_b16 v40.h, 0x7fff, v21.h, s19
	v_cndmask_b16 v40.l, 0x7fff, v26.h, s20
	v_add3_u32 v21, v27, v25, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v153, s17
	v_cndmask_b32_e64 v26, 0, v42, s16
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v20, v71, v19
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v156, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v23, v22, v23, 0x7fff
	v_cmp_o_f32_e64 s16, v22, v22
	v_cmp_o_f32_e64 s17, v27, v27
	v_mov_b16_e32 v22.l, v25.h
	v_mov_b16_e64 v22.h, v155.l
	v_mov_b16_e32 v27.l, v26.h
	v_mov_b16_e64 v27.h, v155.l
	v_cndmask_b16 v41.l, 0x7fff, v21.h, s17
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v159, v163
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v21, 1, v22
	v_cndmask_b16 v41.h, 0x7fff, v23.h, s16
	v_and_b32_e32 v22, 1, v27
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v156, s14
	v_cndmask_b32_e64 v23, 0, v157, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v21, v25, v21, 0x7fff
	v_cmp_o_f32_e64 s14, v25, v25
	v_mov_b16_e64 v25.h, v155.l
	v_mov_b16_e32 v25.l, v27.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v162, v162
	v_exp_f32_e32 v160, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v28.l, v23.h
	v_mov_b16_e64 v28.h, v155.l
	v_add3_u32 v22, v26, v22, 0x7fff
	v_cmp_o_f32_e64 s15, v26, v26
	v_cndmask_b16 v42.h, 0x7fff, v21.h, s14
	v_and_b32_e32 v21, 1, v25
	v_and_b32_e32 v28, 1, v28
	v_cmp_o_f32_e64 s14, v23, v23
	v_cndmask_b16 v42.l, 0x7fff, v22.h, s15
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v22, 0, v159, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v21, v27, v21, 0x7fff
	v_cmp_o_f32_e64 s13, v27, v27
	v_add3_u32 v25, v23, v28, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v23, 0, v162, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v26.h, v155.l
	v_mov_b16_e64 v28.h, v155.l
	v_cndmask_b16 v168.l, 0x7fff, v21.h, s13
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v21, 0, v160, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v26.l, v23.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v163, v165
	v_exp_f32_e32 v165, v167
	v_exp_f32_e32 v24, v24
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v28.l, v21.h
	v_cndmask_b16 v168.h, 0x7fff, v25.h, s14
	v_mov_b16_e32 v25.l, v22.h
	v_mov_b16_e64 v25.h, v155.l
	v_and_b32_e32 v26, 1, v26
	v_and_b32_e32 v28, 1, v28
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v161, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v23, v23
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v26, v23, v26, 0x7fff
	v_add3_u32 v23, v21, v28, 0x7fff
	v_cmp_o_f32_e64 s12, v21, v21
	v_mov_b16_e32 v29.l, v27.h
	v_add3_u32 v25, v22, v25, 0x7fff
	v_cmp_o_f32_e64 s11, v22, v22
	v_cndmask_b16 v185.h, 0x7fff, v26.h, s10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v21, 0, v163, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v186.h, 0x7fff, v23.h, s12
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v23, 0, v164, s8
	v_cndmask_b32_e64 v24, 0, v24, s7
	v_cndmask_b32_e64 v26, 0, v165, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v22, 1, v29
	v_cndmask_b16 v185.l, 0x7fff, v25.h, s11
	v_mov_b16_e32 v25.l, v21.h
	v_mov_b16_e64 v25.h, v155.l
	v_mov_b16_e32 v28.l, v23.h
	v_mov_b16_e64 v28.h, v155.l
	v_mov_b16_e32 v29.l, v24.h
	v_mov_b16_e32 v30.l, v26.h
	v_add3_u32 v22, v27, v22, 0x7fff
	v_and_b32_e32 v25, 1, v25
	v_and_b32_e32 v28, 1, v28
	v_cmp_o_f32_e64 s6, v27, v27
	v_and_b32_e32 v27, 1, v30
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v25, v21, v25, 0x7fff
	v_add3_u32 v28, v23, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_cmp_o_f32_e64 s8, v21, v21
	v_add3_u32 v21, v26, v27, 0x7fff
	v_add3_u32 v23, v24, v29, 0x7fff
	v_cmp_o_f32_e64 s9, v24, v24
	v_cmp_o_f32_e64 s10, v26, v26
	v_permlanex16_b32 v24, v34, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v33, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v187.l, 0x7fff, v25.h, s8
	v_cndmask_b16 v188.h, 0x7fff, v23.h, s9
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v23, v24, v34, v129
	v_perm_b32 v24, v24, v34, v143
	v_perm_b32 v25, v26, v33, v129
	v_perm_b32 v26, v26, v33, v143
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v34, 0, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v186.l, 0x7fff, v22.h, s6
	v_permlanex16_b32 v22, v158, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v153, v38, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v188.l, 0x7fff, v21.h, s10
	v_cndmask_b16 v187.h, 0x7fff, v28.h, s7
	v_permlanex16_b32 v28, v36, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v21, v22, v158, v129
	v_perm_b32 v22, v22, v158, v143
	v_permlanex16_b32 v30, v35, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v37, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v161, v39, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v27, v28, v36, v129
	v_perm_b32 v28, v28, v36, v143
	v_permlanex16_b32 v162, v40, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v164, v41, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v166, v42, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v189, v168, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v29, v30, v35, v129
	v_perm_b32 v30, v30, v35, v143
	v_perm_b32 v31, v32, v37, v129
	v_perm_b32 v32, v32, v37, v143
	v_perm_b32 v35, v161, v39, v129
	v_perm_b32 v36, v161, v39, v143
	v_permlanex16_b32 v190, v185, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v191, v186, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v192, v187, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v193, v188, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v161, v162, v40, v129
	v_perm_b32 v162, v162, v40, v143
	v_perm_b32 v163, v164, v41, v129
	v_perm_b32 v164, v164, v41, v143
	v_perm_b32 v165, v166, v42, v129
	v_perm_b32 v166, v166, v42, v143
	v_perm_b32 v167, v189, v168, v129
	v_perm_b32 v168, v189, v168, v143
	v_mov_b32_e32 v71, v20
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v33.l, v13.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v9.l
	v_mov_b16_e32 v9.l, v13.h
	v_mov_b16_e32 v13.l, v14.l
	v_mov_b16_e32 v13.h, v10.l
	v_mov_b16_e32 v10.l, v14.h
	ds_store_b32 v34, v33
	ds_store_b32 v136, v9
	ds_store_b32 v137, v13
	ds_store_b32 v138, v10
	v_mov_b16_e32 v9.l, v15.l
	v_mov_b16_e32 v9.h, v11.l
	v_mov_b16_e32 v11.l, v15.h
	v_mov_b16_e32 v10.l, v16.l
	v_mov_b16_e32 v10.h, v12.l
	ds_store_b32 v139, v9
	ds_store_b32 v140, v11
	v_add_nc_u32_e32 v9, 0, v121
	v_mov_b16_e32 v12.l, v16.h
	ds_store_b32 v141, v10
	ds_store_b32 v142, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v9
	ds_load_b128 v[13:16], v144
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v33, v153, v38, v129
	v_perm_b32 v34, v153, v38, v143
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[153:156], v145
	ds_load_b128 v[157:160], v146
	ds_load_b128 v[169:172], v147
	ds_load_b128 v[173:176], v148
	ds_load_b128 v[177:180], v149
	ds_load_b128 v[181:184], v150
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[21:28], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v9, v190, v185, v129
	v_perm_b32 v10, v190, v185, v143
	v_perm_b32 v11, v191, v186, v129
	v_perm_b32 v12, v191, v186, v143
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[153:160], v[29:36], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v13, v192, v187, v129
	v_perm_b32 v14, v192, v187, v143
	v_perm_b32 v15, v193, v188, v129
	v_perm_b32 v16, v193, v188, v143
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[169:176], v[161:168], v[1:8]
	v_dual_mov_b32 v154, v18 :: v_dual_mov_b32 v153, v17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[177:184], v[9:16], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_15
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v9, 2, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s77, s72, s74
	v_or_b32_e32 v12, 2, v68
	v_or_b32_e32 v13, 4, v68
	v_or_b32_e32 v14, 6, v68
	v_or_b32_e32 v9, s77, v9
	v_or_b32_e32 v15, 8, v68
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v11, s72, v68, 1
	v_or_b32_e32 v16, 10, v68
	v_or_b32_e32 v17, 12, v68
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[9:10], null, v9, s71, v[44:45]
	v_or_b32_e32 v18, 14, v68
	v_or_b32_e32 v19, 16, v68
	v_or_b32_e32 v20, 18, v68
	v_or_b32_e32 v21, 20, v68
	v_or_b32_e32 v22, 22, v68
	v_or_b32_e32 v23, 24, v68
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_or_b32_e32 v24, 26, v68
	v_or_b32_e32 v25, 28, v68
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v12, v12, s72, 1
	v_add_lshl_u32 v13, v13, s72, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[9:10], v9, s[56:59], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v14, v14, s72, 1
	v_add_lshl_u32 v15, v15, s72, 1
	v_add_lshl_u32 v26, v70, s72, 1
	v_add_lshl_u32 v27, v72, s72, 1
	v_add_lshl_u32 v28, v73, s72, 1
	v_add_lshl_u32 v29, v74, s72, 1
	v_add_lshl_u32 v30, v75, s72, 1
	v_add_lshl_u32 v31, v76, s72, 1
	v_add_lshl_u32 v32, v77, s72, 1
	v_add_lshl_u32 v33, v78, s72, 1
	v_add_lshl_u32 v34, v79, s72, 1
	v_add_lshl_u32 v35, v80, s72, 1
	v_add_lshl_u32 v36, v81, s72, 1
	v_add_lshl_u32 v37, v82, s72, 1
	v_add_lshl_u32 v38, v83, s72, 1
	v_add_lshl_u32 v39, v84, s72, 1
	v_add_lshl_u32 v40, v85, s72, 1
	v_add_lshl_u32 v41, v86, s72, 1
	v_add_lshl_u32 v42, v152, s72, 1
	v_add_lshl_u32 v16, v16, s72, 1
	v_add_lshl_u32 v17, v17, s72, 1
	v_add_lshl_u32 v18, v18, s72, 1
	v_add_lshl_u32 v19, v19, s72, 1
	v_add_lshl_u32 v20, v20, s72, 1
	v_add_lshl_u32 v21, v21, s72, 1
	v_add_lshl_u32 v22, v22, s72, 1
	v_add_lshl_u32 v23, v23, s72, 1
	v_add_lshl_u32 v24, v24, s72, 1
	v_add_lshl_u32 v25, v25, s72, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v195, s51 :: v_dual_mov_b32 v194, s50
	v_dual_mov_b32 v193, s49 :: v_dual_mov_b32 v192, s48
	v_dual_mov_b32 v191, s47 :: v_dual_mov_b32 v190, s46
	v_dual_mov_b32 v189, s45 :: v_dual_mov_b32 v188, s44
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v155, s72, v43
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s8, s76, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v155, v93
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v155, v94
	.loc	1 866 21                        ; attention.py:866:21
	s_and_b32 s6, s0, s6
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s7, s6
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v98, v[9:10]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v186, v11, s[60:63], 0 offen
	buffer_load_u16 v185, v12, s[60:63], 0 offen
	buffer_load_u16 v184, v13, s[60:63], 0 offen
	buffer_load_u16 v183, v14, s[60:63], 0 offen
	buffer_load_u16 v182, v15, s[60:63], 0 offen
	buffer_load_u16 v181, v16, s[60:63], 0 offen
	buffer_load_u16 v180, v17, s[60:63], 0 offen
	buffer_load_u16 v179, v18, s[60:63], 0 offen
	buffer_load_u16 v178, v19, s[60:63], 0 offen
	buffer_load_u16 v177, v20, s[60:63], 0 offen
	buffer_load_u16 v176, v21, s[60:63], 0 offen
	buffer_load_u16 v175, v22, s[60:63], 0 offen
	buffer_load_u16 v174, v23, s[60:63], 0 offen
	buffer_load_u16 v173, v24, s[60:63], 0 offen
	buffer_load_u16 v172, v25, s[60:63], 0 offen
	buffer_load_u16 v171, v26, s[60:63], 0 offen
	buffer_load_u16 v170, v27, s[60:63], 0 offen
	buffer_load_u16 v169, v28, s[60:63], 0 offen
	buffer_load_u16 v168, v29, s[60:63], 0 offen
	buffer_load_u16 v167, v30, s[60:63], 0 offen
	buffer_load_u16 v166, v31, s[60:63], 0 offen
	buffer_load_u16 v165, v32, s[60:63], 0 offen
	buffer_load_u16 v164, v33, s[60:63], 0 offen
	buffer_load_u16 v163, v34, s[60:63], 0 offen
	buffer_load_u16 v162, v35, s[60:63], 0 offen
	buffer_load_u16 v161, v36, s[60:63], 0 offen
	buffer_load_u16 v160, v37, s[60:63], 0 offen
	buffer_load_u16 v159, v38, s[60:63], 0 offen
	buffer_load_u16 v158, v39, s[60:63], 0 offen
	buffer_load_u16 v157, v40, s[60:63], 0 offen
	buffer_load_u16 v156, v41, s[60:63], 0 offen
	buffer_load_u16 v187, v42, s[60:63], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v87 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v90 offset1:1
	ds_load_2addr_stride64_b64 v[196:199], v87 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[200:203], v91 offset1:1
	ds_load_2addr_stride64_b64 v[204:207], v90 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[208:211], v91 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[212:215], v92 offset1:1
	ds_load_2addr_stride64_b64 v[216:219], v92 offset0:2 offset1:3
	v_mov_b16_e32 v41.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v42.l, v41.h
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[50:51], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[11:12], v[50:51], v[188:195] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[196:197], v[50:51], v[188:195] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[13:14], v[52:53], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[15:16], v[52:53], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[198:199], v[50:51], v[188:195] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[204:205], v[52:53], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[200:201], v[54:55], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[202:203], v[54:55], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[206:207], v[52:53], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[208:209], v[54:55], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[212:213], v[56:57], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[214:215], v[56:57], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[210:211], v[54:55], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[216:217], v[56:57], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[218:219], v[56:57], v[9:16] neg_lo:[1,1,0]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s7, s10
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v42, s8, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v189, 31, v42
	v_add_co_u32 v188, s6, s54, v42
	v_add_co_ci_u32_e64 v189, null, s55, v189, s6
	global_load_d16_u8 v42, v[188:189], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v155, v115
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v155, v118
	.loc	1 866 21                        ; attention.py:866:21
	s_and_b32 s6, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s7, s6
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s7, s11
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v41, s8, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v189, 31, v41
	v_add_co_u32 v188, s6, s54, v41
	v_add_co_ci_u32_e64 v189, null, s55, v189, s6
	global_load_d16_hi_u8 v41, v[188:189], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s7
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v41.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v155, v116
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v155, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v42.h, v41.l
	.loc	1 866 21                        ; attention.py:866:21
	s_and_b32 s6, s4, s6
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s7, s12
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v188, s8, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v189, 31, v188
	v_add_co_u32 v188, s6, s54, v188
	v_add_co_ci_u32_e64 v189, null, s55, v189, s6
	global_load_d16_hi_u8 v42, v[188:189], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v155, v117
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v155, v120
	.loc	1 866 21                        ; attention.py:866:21
	s_and_b32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s7, s6
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s7, s13
	s_cbranch_execz .LBB0_5
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v155, s8, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v189, 31, v155
	v_add_co_u32 v188, s6, s54, v155
	v_add_co_ci_u32_e64 v189, null, s55, v189, s6
	global_load_d16_u8 v41, v[188:189], off
	s_branch .LBB0_5
.LBB0_14:
	.loc	1 0 34                          ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v11, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v9, v8
	s_branch .LBB0_16
.LBB0_15:                               ; %._crit_edge.loopexit
.Ltmp98:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v17, v17 :: v_dual_add_f32 v9, 0, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v11, 0xff800000, v10 :: v_dual_mov_b32 v10, v63
.Ltmp99:
.LBB0_16:                               ; %._crit_edge
	.loc	1 1028 26                       ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v61
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v12, v62, 2, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp101:
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e64 s0, 0, v60
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v11, 0xff800000, v11 :: v_dual_add_nc_u32 v10, 0, v10
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s70, s70, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s1, s68, 2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v9, 0, v9, vcc_lo
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v10, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v12
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v10, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp104:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v1, 0, v1, s0
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	ds_load_b32 v10, v12
.Ltmp106:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v2
.Ltmp107:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v1
.Ltmp109:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v16, 0, v4, s0
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v13, v3
.Ltmp111:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s2, s69, s70
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v8
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v12
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v14, v11
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s2, s2, s1
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v2
.Ltmp119:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s1, exec_lo
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
	v_add_f32_e32 v3, v3, v13
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v15, v10
.Ltmp123:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v11, v11 :: v_dual_max_f32 v14, v14, v14
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp126:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v12 :: v_dual_mov_b32 v13, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v11, v1 :: v_dual_add_f32 v8, v8, v20
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v10, v10, v15 :: v_dual_max_f32 v9, v9, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v2
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v12, v10
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v8
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v3, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v15, v13 :: v_dual_add_f32 v8, v8, v20
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v21, v8 :: v_dual_add_f32 v4, v13, v15
.Ltmp136:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v11
.Ltmp137:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v11, v9
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v16
.Ltmp139:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v13, 0, v5, s0
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v3, v1
.Ltmp141:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_e32 v1, v1, v3
	v_add_f32_e32 v3, v2, v14
.Ltmp144:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v14, 0, v6, s0
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v16
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v18
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v17, v13 :: v_dual_add_f32 v14, v14, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v13
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v19, v7 :: v_dual_add_f32 v16, v13, v17
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v18, v16 :: v_dual_add_f32 v7, v7, v19
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v19, v7
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v7, v19
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v15 :: v_dual_mov_b32 v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v15, v7
	v_add_f32_e32 v7, v16, v18
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_add_f32 v16, v17, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v8, v21 :: v_dual_mov_b32 v8, v7
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v19, v16
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp160:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_18
; %bb.17:
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_add_f32 v10, v10, v12
	v_max_f32_e32 v9, v9, v9
.Ltmp162:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_lshl_b64 s[4:5], s[2:3], 2
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp164:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v11, 0
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v11, v[9:10], s[4:5]
.LBB0_18:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s1
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp165:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v14, v18 :: v_dual_lshlrev_b32 v0, 5, v0
	v_dual_add_f32 v15, v13, v15 :: v_dual_add_f32 v14, v4, v6
	v_dual_add_f32 v13, v3, v5 :: v_dual_and_b32 v4, 0xe0, v58
	v_dual_add_f32 v12, v1, v2 :: v_dual_and_b32 v3, 0xc0, v59
.Ltmp166:
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e64 s0, s68, v43
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v7, v8 :: v_dual_and_b32 v1, 28, v58
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp168:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add_nc_u32_e32 v2, 0, v3
	v_add_nc_u32_e32 v3, 0, v4
	s_and_b32 vcc_lo, vcc_lo, s0
	v_and_b32_e32 v0, 32, v0
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v17, v20 :: v_dual_add_f32 v10, v16, v19
.Ltmp170:
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v0, v2, v0, v1
	ds_store_b128 v3, v[12:15]
	ds_store_b128 v3, v[8:11] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s2, v43
	.loc	1 1038 13                       ; attention.py:1038:13
	ds_load_b32 v0, v0
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	v_lshl_add_u32 v1, v1, 2, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[52:55], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp171:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 220
		.amdhsa_next_free_sgpr 81
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 220
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10892
; TotalNumSgprs: 83
; NumVgprs: 220
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 220
; Occupancy: 6
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	5                               ; Abbreviation Code
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
	.byte	6                               ; Abbreviation Code
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
	.byte	7                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0xc5 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x9f DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x9d:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp129                        ; DW_AT_low_pc
	.long	.Ltmp130-.Ltmp129               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb3:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xc0:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     220
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
