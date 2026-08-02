	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s93, s[0:1], 0x64
	s_load_b64 s[78:79], s[0:1], 0x5c
	s_load_b64 s[80:81], s[0:1], 0x0
	s_load_b64 s[76:77], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v9, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x80
	s_load_b32 s14, s[0:1], 0x88
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v43, 2, v0
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v45, 1, v0
	s_mov_b32 s68, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v46, 15, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s93
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s93
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 2, v9
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s78, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s4
	s_mul_hi_u32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s4, s6
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s5
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s81, s81, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s16, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s93
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s15, s16, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s16, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s15, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s92, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, v3, s78, v[1:2]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s93, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s93
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 0x60, v0
	buffer_load_b32 v1, v1, s[80:83], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 2, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v43, v3, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s4, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s13, s14
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s16
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s14, s12
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s8
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s16
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s6, s92, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s6, s6, 6
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s5, s7
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s4, s4, 0x7fffffc0
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s6, s2
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s94, s6, s4
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s95, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s94, s95
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v3, s16, v46
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v1, s15, v46, 1
	.loc	1 759 0                         ; attention.py:759
	v_and_b32_e32 v4, 0x78, v0
	v_dual_mov_b32 v13, 0x5410 :: v_dual_lshlrev_b32 v10, 3, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v3
	v_dual_mov_b32 v14, 0x7632 :: v_dual_lshlrev_b32 v33, 4, v45
	v_bfe_i32 v16, v0, 3, 1
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_and_b32 v6, 24, v44
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v5, 4, v0
	v_dual_mov_b32 v133, 0xff800000 :: v_dual_and_b32 v8, 24, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v16, 0x410, v16, v2
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v18, v46, 5, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v78, 62, v5
	v_bfe_u32 v47, v0, 4, 1
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s96, s3, 11
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s9, 0xffff
	s_mov_b32 s80, s8
	s_load_b32 s8, s[0:1], 0x68
	buffer_load_u16 v11, v1, s[80:83], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v12, 16, v0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v17, s14, v3
	v_lshlrev_b32_e32 v15, 4, v9
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v19, 1, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v3, v1
	v_cmp_eq_u32_e64 s2, 0, v12
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s79, v10
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 8, v18
	v_lshlrev_b32_e32 v7, 4, v0
	v_xor_b32_e32 v21, 16, v18
	v_cndmask_b32_e64 v12, 0x1054, v13, s2
	v_xor_b32_e32 v13, v15, v4
	v_mov_b32_e32 v4, v1
	v_lshl_or_b32 v15, v2, 6, v15
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v80, 0, v18
	v_lshl_or_b32 v12, v12, 8, v12
	v_lshl_or_b32 v90, v9, 10, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v13, v16, v15
	v_xor_b32_e32 v18, 24, v18
	v_mov_b32_e32 v2, v1
	v_and_b32_e32 v12, 0x540054, v12
	v_xor_b32_e32 v79, v7, v8
	v_lshl_or_b32 v111, v9, 7, v13
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v109, 0, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v12, 4, v12
	v_mov_b32_e32 v6, v1
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v82, s13, v17
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v81, s12, v17
	v_and_b32_e32 v120, 0x5040504, v9
	v_xor_b32_e32 v17, 8, v79
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v54, 14, v47
	v_or_b32_e32 v55, 16, v47
	v_or_b32_e32 v56, 18, v47
	v_or_b32_e32 v57, 20, v47
	v_or_b32_e32 v58, 22, v47
	v_or_b32_e32 v59, 24, v47
	v_or_b32_e32 v60, 26, v47
	v_or_b32_e32 v61, 28, v47
	v_or_b32_e32 v62, 30, v47
	v_or_b32_e32 v63, 32, v47
	v_or_b32_e32 v64, 34, v47
	v_or_b32_e32 v65, 36, v47
	v_or_b32_e32 v66, 38, v47
	v_or_b32_e32 v67, 40, v47
	v_or_b32_e32 v68, 42, v47
	v_or_b32_e32 v69, 44, v47
	v_or_b32_e32 v70, 46, v47
	v_or_b32_e32 v71, 48, v47
	v_or_b32_e32 v72, 50, v47
	v_or_b32_e32 v73, 52, v47
	v_or_b32_e32 v74, 54, v47
	v_or_b32_e32 v75, 56, v47
	v_or_b32_e32 v76, 58, v47
	v_or_b32_e32 v77, 60, v47
	v_xor_b32_e32 v15, 0x120, v90
	v_xor_b32_e32 v16, 0x1b0, v90
	v_xor_b32_e32 v21, 0x3f0, v90
	v_add_nc_u32_e32 v112, 0, v17
	v_xor_b32_e32 v12, 16, v111
	v_xor_b32_e32 v13, 32, v111
	v_xor_b32_e32 v17, 48, v111
	v_xor_b32_e32 v22, 64, v111
	v_xor_b32_e32 v23, 0x50, v111
	v_xor_b32_e32 v24, 0x60, v111
	v_xor_b32_e32 v25, 0x70, v111
	v_or_b32_e32 v48, 2, v47
	v_or_b32_e32 v49, 4, v47
	v_or_b32_e32 v50, 6, v47
	v_or_b32_e32 v51, 8, v47
	v_or_b32_e32 v52, 10, v47
	v_or_b32_e32 v53, 12, v47
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s0, s78, v33
	v_or_b32_e32 v83, s96, v54
	v_or_b32_e32 v84, s96, v55
	v_or_b32_e32 v85, s96, v56
	v_or_b32_e32 v86, s96, v57
	v_or_b32_e32 v87, s96, v58
	v_or_b32_e32 v88, s96, v59
	v_or_b32_e32 v89, s96, v60
	v_or_b32_e32 v91, s96, v61
	v_or_b32_e32 v92, s96, v62
	v_or_b32_e32 v93, s96, v63
	v_or_b32_e32 v94, s96, v64
	v_or_b32_e32 v95, s96, v65
	v_or_b32_e32 v96, s96, v66
	v_or_b32_e32 v97, s96, v67
	v_or_b32_e32 v98, s96, v68
	v_or_b32_e32 v99, s96, v69
	v_or_b32_e32 v100, s96, v70
	v_or_b32_e32 v101, s96, v71
	v_or_b32_e32 v102, s96, v72
	v_or_b32_e32 v103, s96, v73
	v_or_b32_e32 v104, s96, v74
	v_or_b32_e32 v105, s96, v75
	v_or_b32_e32 v106, s96, v76
	v_or_b32_e32 v107, s96, v77
	v_add_nc_u32_e32 v114, 0, v15
	v_add_nc_u32_e32 v119, 0, v21
	v_add_nc_u32_e32 v121, 0, v12
	v_add_nc_u32_e32 v122, 0, v13
	v_add_nc_u32_e32 v123, 0, v17
	v_add_nc_u32_e32 v124, 0, v22
	v_add_nc_u32_e32 v126, 0, v23
	v_add_nc_u32_e32 v127, 0, v24
	v_add_nc_u32_e32 v128, 0, v25
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s97, s79, 1
	s_mul_i32 s98, s79, 3
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s99, 0x76543210
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	s_mov_b32 s90, s82
	s_mov_b32 s91, s83
	s_and_b32 s89, s7, 0xffff
	s_mov_b32 s84, s10
	s_mov_b32 s88, s6
	s_mov_b32 s80, s4
	s_mov_b32 s81, s5
	s_mov_b32 s85, s11
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[34:35], null, s79, v19, v[10:11]
	v_cndmask_b32_e64 v10, 0x3276, v14, s2
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s2, s8, 0x3fb8aa3b
	v_xor_b32_e32 v14, 0x90, v90
	v_xor_b32_e32 v19, 0x2d0, v90
	v_mov_b32_e32 v134, v1
	v_lshl_or_b32 v10, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v113, 0, v14
	v_and_b32_e32 v10, 0x760076, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v10, 4, v10
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v10, 16, v11
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v108, 0, v20
	v_xor_b32_e32 v20, 0x360, v90
	v_and_b32_e32 v129, 0x7060706, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v125, s2, v10
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v110, 0, v18
	v_xor_b32_e32 v18, 0x240, v90
	v_add_nc_u32_e32 v115, 0, v16
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v132, v125 :: v_dual_add_nc_u32 v117, 0, v19
	v_mov_b32_e32 v131, v125
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[35:36], v80
	ds_load_b64 v[37:38], v108
	ds_load_b64 v[39:40], v109
	ds_load_b64 v[41:42], v110
	v_add_nc_u32_e32 v116, 0, v18
	v_add_nc_u32_e32 v118, 0, v20
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v130, v125
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v18, 1, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s2, s94, s96
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s68 :: v_dual_mov_b32 v12, s71
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[19:20], null, s2, s79, v[34:35]
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v18, s2, v18
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v15, s74
	v_dual_mov_b32 v10, s69 :: v_dual_add_nc_u32 v17, 0, v79
	v_dual_mov_b32 v11, s70 :: v_dual_mov_b32 v14, s73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[20:21], null, v18, s78, v[33:34]
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v18, 1, v19
	v_add_lshl_u32 v21, v19, s79, 1
	v_add_lshl_u32 v22, v19, s97, 1
	v_add_lshl_u32 v19, v19, s98, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v13, s72 :: v_dual_mov_b32 v16, s75
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v154, 0x80000000, v18, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v212, 0x80000000, v21, s1
	v_cndmask_b32_e64 v23, 0x80000000, v19, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	v_or_b32_e32 v25, s96, v47
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[18:21], v18, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v26, s96, v48
	v_or_b32_e32 v27, s96, v49
	v_or_b32_e32 v28, s96, v50
	v_or_b32_e32 v29, s96, v51
	v_or_b32_e32 v31, s96, v52
	v_or_b32_e32 v32, s96, v53
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v203, v95, s94, 1
	v_add_lshl_u32 v204, v96, s94, 1
	v_add_lshl_u32 v206, v97, s94, 1
	v_add_lshl_u32 v207, v98, s94, 1
	v_add_lshl_u32 v30, v83, s94, 1
	v_add_lshl_u32 v137, v86, s94, 1
	v_add_lshl_u32 v164, v87, s94, 1
	v_add_lshl_u32 v208, v99, s94, 1
	v_add_lshl_u32 v25, v25, s94, 1
	v_add_lshl_u32 v26, v26, s94, 1
	v_add_lshl_u32 v27, v27, s94, 1
	v_add_lshl_u32 v31, v31, s94, 1
	v_add_lshl_u32 v32, v32, s94, 1
	v_add_lshl_u32 v135, v84, s94, 1
	v_add_lshl_u32 v136, v85, s94, 1
	v_add_lshl_u32 v173, v88, s94, 1
	v_add_lshl_u32 v200, v89, s94, 1
	v_add_lshl_u32 v201, v91, s94, 1
	v_add_lshl_u32 v202, v92, s94, 1
	v_add_lshl_u32 v205, v93, s94, 1
	v_add_lshl_u32 v209, v100, s94, 1
	v_add_lshl_u32 v210, v101, s94, 1
	v_add_lshl_u32 v211, v102, s94, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[18:19]
	ds_store_b64 v112, v[20:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[169:172], v22, s[88:91], 0 offen
	buffer_load_b128 v[17:20], v23, s[88:91], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[21:24], v80 offset1:1
	ds_load_2addr_stride64_b64 v[138:141], v80 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[150:153], v108 offset0:2 offset1:3
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[196:199], v154, s[88:91], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[21:22], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[155:162], v[140:141], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[138:139], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[188:195], v[23:24], v[35:36], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v108 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v109 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[155:162], v[152:153], v[37:38], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[150:151], v[37:38], v[179:186] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v138, v103, s94, 1
	v_add_lshl_u32 v139, v104, s94, 1
	v_add_lshl_u32 v140, v105, s94, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[9:10], v[37:38], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[188:195], v[11:12], v[37:38], v[188:195] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v109 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[155:162], v[15:16], v[39:40], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[13:14], v[39:40], v[179:186] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v110 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[9:10], v[39:40], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[188:195], v[11:12], v[39:40], v[188:195] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v110 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[13:14], v[41:42], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[188:195], v[15:16], v[41:42], v[188:195] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v16, v94, s94, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v141, v143
	v_cvt_f32_i32_e32 v143, v144
	v_cvt_f32_i32_e32 v144, v148
	v_cvt_f32_i32_e32 v168, v189
	v_cvt_f32_i32_e32 v165, v191
	v_cvt_f32_i32_e32 v163, v192
	v_cvt_f32_i32_e32 v152, v188
	v_cvt_f32_i32_e32 v174, v190
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_mul_f32_e32 v143, v131, v143
	v_mul_f32_e32 v163, v132, v163
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[155:162], v[11:12], v[41:42], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[9:10], v[41:42], v[179:186] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[9:12], v212, s[88:91], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v154, v142
	v_cvt_f32_i32_e32 v142, v145
	v_cvt_f32_i32_e32 v151, v160
	v_cvt_f32_i32_e32 v13, v162
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v160, v28, s94, 1
	v_add_lshl_u32 v162, v29, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v145, v149
	v_cvt_f32_i32_e32 v176, v155
	v_cvt_f32_i32_e32 v148, v158
	v_cvt_f32_i32_e32 v149, v159
	v_cvt_f32_i32_e32 v167, v157
	v_cvt_f32_i32_e32 v159, v179
	v_cvt_f32_i32_e32 v153, v181
	v_cvt_f32_i32_e32 v175, v182
	v_cvt_f32_i32_e32 v177, v183
	v_cvt_f32_i32_e32 v187, v184
	v_cvt_f32_i32_e32 v179, v185
	v_cvt_f32_i32_e32 v178, v186
	v_cvt_f32_i32_e32 v155, v180
	v_cvt_f32_i32_e32 v157, v193
	v_cvt_f32_i32_e32 v166, v156
	v_mul_f32_e32 v174, v130, v174
	v_cvt_f32_i32_e32 v150, v161
	v_cvt_f32_i32_e32 v161, v195
	v_cvt_f32_i32_e32 v156, v194
	v_mul_f32_e32 v166, v132, v166
	v_mul_f32_e32 v154, v125, v154
	v_dual_mul_f32 v142, v132, v142 :: v_dual_mul_f32 v149, v130, v149
	v_dual_mul_f32 v144, v131, v144 :: v_dual_mul_f32 v13, v132, v13
	v_mul_f32_e32 v147, v130, v147
	v_mul_f32_e32 v151, v131, v151
	v_dual_mul_f32 v141, v130, v141 :: v_dual_mul_f32 v168, v125, v168
	v_mul_f32_e32 v165, v131, v165
	v_dual_mul_f32 v159, v132, v159 :: v_dual_mul_f32 v156, v130, v156
	v_mul_f32_e32 v155, v130, v155
	v_mul_f32_e32 v145, v132, v145
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v191.l, v169.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v191.h, v17.l
	v_mov_b16_e64 v17.l, v169.h
	v_mov_b16_e64 v24.l, v170.l
	v_mov_b16_e32 v24.h, v18.l
	v_mov_b16_e64 v18.l, v170.h
	v_mov_b16_e64 v22.l, v171.l
	v_mov_b16_e32 v22.h, v19.l
	v_mov_b16_e32 v15.h, v20.l
	v_mov_b16_e64 v20.l, v172.h
	v_mov_b16_e64 v19.l, v171.h
	v_mov_b16_e64 v15.l, v172.l
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1c
	buffer_load_u16 v192, v203, s[84:87], 0 offen
	buffer_load_u16 v193, v204, s[84:87], 0 offen
	buffer_load_u16 v189, v206, s[84:87], 0 offen
	buffer_load_u16 v188, v207, s[84:87], 0 offen
	buffer_load_u16 v186, v208, s[84:87], 0 offen
	buffer_load_u16 v185, v209, s[84:87], 0 offen
	buffer_load_u16 v184, v210, s[84:87], 0 offen
	buffer_load_u16 v158, v25, s[84:87], 0 offen
	buffer_load_u16 v28, v26, s[84:87], 0 offen
	buffer_load_u16 v27, v27, s[84:87], 0 offen
	buffer_load_u16 v29, v160, s[84:87], 0 offen
	buffer_load_u16 v25, v162, s[84:87], 0 offen
	buffer_load_u16 v26, v31, s[84:87], 0 offen
	buffer_load_u16 v31, v32, s[84:87], 0 offen
	buffer_load_u16 v32, v30, s[84:87], 0 offen
	buffer_load_u16 v183, v211, s[84:87], 0 offen
	buffer_load_u16 v30, v135, s[84:87], 0 offen
	buffer_load_u16 v181, v136, s[84:87], 0 offen
	buffer_load_u16 v180, v137, s[84:87], 0 offen
	buffer_load_u16 v172, v164, s[84:87], 0 offen
	buffer_load_u16 v171, v173, s[84:87], 0 offen
	buffer_load_u16 v164, v200, s[84:87], 0 offen
	buffer_load_u16 v162, v201, s[84:87], 0 offen
	buffer_load_u16 v170, v202, s[84:87], 0 offen
	buffer_load_u16 v182, v138, s[84:87], 0 offen
	buffer_load_u16 v169, v205, s[84:87], 0 offen
	buffer_load_u16 v160, v16, s[84:87], 0 offen
	buffer_load_u16 v137, v139, s[84:87], 0 offen
	buffer_load_u16 v138, v140, s[84:87], 0 offen
	v_add_lshl_u32 v16, v106, s94, 1
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(30)
	v_mov_b16_e64 v190.l, v196.l
	v_add_nc_u32_e32 v135, 0, v90
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v167, v131, v167
	v_mul_f32_e32 v161, v131, v161
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v139, v16, s[84:87], 0 offen
	v_add_lshl_u32 v16, v107, s94, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v157, v125, v157
	v_mul_f32_e32 v152, v125, v152
	v_mul_f32_e32 v146, v125, v146
	v_mul_f32_e32 v148, v125, v148
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v140, v16, s[84:87], 0 offen
	v_add_lshl_u32 v16, s2, v78, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v150, v132, v150
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v23.l, v197.l
	v_mov_b16_e64 v21.l, v198.l
	v_mov_b16_e64 v14.l, v199.l
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v16, v16, s[84:87], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(32)
	v_mov_b16_e64 v190.h, v9.l
	v_mov_b16_e64 v9.l, v196.h
	v_mov_b16_e32 v23.h, v10.l
	v_mov_b16_e64 v10.l, v197.h
	v_mov_b16_e32 v21.h, v11.l
	ds_store_b64 v135, v[190:191]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v73
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v11.l, v198.h
	v_mov_b16_e32 v14.h, v12.l
	v_mov_b16_e64 v12.l, v199.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v72
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s2, s4
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v71
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, vcc_lo, s4
	s_and_b32 s100, s5, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v70
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s7, s8
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v69
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s6, s9, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v68
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s7, s11, s12
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s14, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v67
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s8, s13, s14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s16, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v66
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, vcc_lo, s8
	s_and_b32 s8, vcc_lo, s100
	s_and_b32 s10, s15, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v65
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s11, s17, s18
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v64
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s12, s19, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v63
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s13, s21, s22
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v62
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s14, s23, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v61
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s15, s25, s26
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v60
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, vcc_lo, s15
	s_and_b32 s18, s27, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v59
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s16, s29, s30
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v58
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, vcc_lo, s16
	s_and_b32 s17, s31, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v57
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, vcc_lo, s17
	s_and_b32 s19, s34, s35
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s37, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v56
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s20, s36, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s38, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s39, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v55
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s21, s38, s39
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s40, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s41, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v54
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, vcc_lo, s21
	s_and_b32 s35, s40, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s42, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s43, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v53
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s37, s42, s43
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s44, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s45, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v52
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s38, s44, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s46, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s47, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v51
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s46, s47
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s48, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s49, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v50
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s48, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s50, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s51, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v49
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, vcc_lo, s22
	s_and_b32 s23, s50, s51
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s52, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s53, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v48
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, vcc_lo, s23
	s_and_b32 s25, s52, s53
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s54, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s55, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v47
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, vcc_lo, s25
	s_and_b32 s25, vcc_lo, s35
	s_and_b32 s26, s54, s55
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s56, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s57, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v78
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, vcc_lo, s26
	s_and_b32 s26, vcc_lo, s24
	s_and_b32 s24, vcc_lo, s37
	s_and_b32 s28, s56, s57
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s58, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s59, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v77
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, vcc_lo, s28
	s_and_b32 s28, vcc_lo, s38
	s_and_b32 s31, s58, s59
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s60, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s61, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v76
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v136, 16, v192
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, vcc_lo, s31
	s_and_b32 s2, s60, s61
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s62, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s63, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v75
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v27, 16, v27
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s64, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s65, v135, v82
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v135, s94, v74
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v158, v154, v158 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v181, 16, v181
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s66, v135, v81
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s67, v135, v82
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v135, v125, v153
	v_mov_b32_e32 v153, v133
	v_mul_f32_e32 v133, v130, v175
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v181, v168, v181 :: v_dual_lshlrev_b32 v180, 16, v180
	v_dual_mul_f32 v173, v135, v136 :: v_dual_lshlrev_b32 v136, 16, v189
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v135, 16, v193
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v182, 16, v182
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v180, v174, v180 :: v_dual_lshlrev_b32 v183, 16, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v175, v133, v135 :: v_dual_lshlrev_b32 v172, 16, v172
	v_mul_f32_e32 v133, v131, v177
	v_dual_mul_f32 v182, v167, v182 :: v_dual_mul_f32 v183, v166, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v172, v165, v172 :: v_dual_lshlrev_b32 v171, 16, v171
	v_dual_mul_f32 v177, v133, v136 :: v_dual_mov_b32 v136, v134
	v_dual_mul_f32 v134, v132, v187 :: v_dual_lshlrev_b32 v187, 16, v188
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v171, v163, v171 :: v_dual_lshlrev_b32 v170, 16, v170
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v162, 16, v162
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v188, v134, v187 :: v_dual_lshlrev_b32 v169, 16, v169
	v_mul_f32_e32 v170, v161, v170
	v_dual_mul_f32 v134, v125, v179 :: v_dual_lshlrev_b32 v179, 16, v186
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v164, v157, v164 :: v_dual_mul_f32 v169, v159, v169
	v_mul_f32_e32 v162, v156, v162
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v186, v134, v179
	v_mul_f32_e32 v134, v130, v178
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v178, 16, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v160, v155, v160 :: v_dual_add_nc_u32 v133, 0, v111
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v32, 16, v32
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v185, v134, v178 :: v_dual_mul_f32 v134, v131, v176
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v176, 16, v184
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v137, 16, v137
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v25, v146, v25 :: v_dual_lshlrev_b32 v138, 16, v138
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v139, 16, v139
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v184, 16, v16
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v16, v9 :: v_dual_mul_f32 v27, v143, v27
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v9, v141, v28 :: v_dual_lshlrev_b32 v26, 16, v26
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v140, 16, v140
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v28, v142, v29 :: v_dual_mul_f32 v29, v144, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v31, v145, v32 :: v_dual_mul_f32 v26, v147, v26
	v_dual_mul_f32 v30, v152, v30 :: v_dual_mul_f32 v139, v151, v139
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v113, v[16:17]
	ds_store_b64 v114, v[23:24]
	v_mov_b32_e32 v17, v10
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v164, s16
	v_cndmask_b32_e64 v164, 0xff800000, v172, s19
	v_cndmask_b32_e64 v172, 0xff800000, v9, s29
	v_cndmask_b32_e64 v158, 0xff800000, v158, s30
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v32, v148, v137 :: v_dual_mul_f32 v137, v149, v138
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, s64, s65
	s_and_b32 s36, s66, s67
	s_and_b32 s35, vcc_lo, s34
	s_and_b32 s36, vcc_lo, s36
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v176, v134, v176
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, 0xff800000, v169, s14
	v_cndmask_b32_e64 v160, 0xff800000, v160, s13
	v_cndmask_b32_e64 v169, 0xff800000, v180, s20
	v_cndmask_b32_e64 v171, 0xff800000, v171, s17
	v_cndmask_b32_e64 v25, 0xff800000, v25, s22
	v_cndmask_b32_e64 v28, 0xff800000, v28, s23
	v_cndmask_b32_e64 v27, 0xff800000, v27, s27
	v_cndmask_b32_e64 v137, 0xff800000, v137, s35
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v115, v[17:18]
	ds_store_b64 v116, v[21:22]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v158, v172
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, 0xff800000, v32, s36
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v138, v150, v140
	v_dual_mul_f32 v140, v13, v184 :: v_dual_mov_b32 v13, v20
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, 0xff800000, v162, s18
	v_cndmask_b32_e64 v162, 0xff800000, v170, s15
	v_cndmask_b32_e64 v170, 0xff800000, v181, s21
	v_cndmask_b32_e64 v26, 0xff800000, v26, s26
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, vcc_lo, s2
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, 0xff800000, v183, s8
	v_cndmask_b32_e64 v142, 0xff800000, v176, s5
	v_cndmask_b32_e64 v143, 0xff800000, v185, s6
	v_cndmask_b32_e64 v144, 0xff800000, v186, s7
	v_cndmask_b32_e64 v145, 0xff800000, v177, s10
	v_cndmask_b32_e64 v146, 0xff800000, v175, s11
	v_cndmask_b32_e64 v147, 0xff800000, v173, s12
	v_cndmask_b32_e64 v148, 0xff800000, v188, s9
	v_cndmask_b32_e64 v149, 0xff800000, v182, s4
	v_cndmask_b32_e64 v30, 0xff800000, v30, s25
	v_cndmask_b32_e64 v31, 0xff800000, v31, s24
	v_cndmask_b32_e64 v29, 0xff800000, v29, s28
	v_cndmask_b32_e64 v140, 0xff800000, v140, s31
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v16, v162, v152, v160
	v_max3_f32 v17, v170, v169, v164
	v_max3_f32 v20, v171, v151, v150
	v_max3_f32 v22, v28, v25, v26
	v_max_f32_e32 v23, v32, v137
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v138, s34
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s62, s63
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v18, v11
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, vcc_lo, s33
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v9, v147, v146, v145
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v139, s33
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v148, v144, v143
	v_max3_f32 v11, v142, v141, v149
	v_max_f32_e32 v24, v138, v140
	v_max3_f32 v173, v29, v31, v30
	v_max3_f32 v175, v17, v20, v16
	v_max3_f32 v176, v21, v27, v22
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v117, v[18:19]
	ds_store_b64 v118, v[14:15]
	ds_store_b64 v119, v[12:13]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v177, v9, v10, v11
	v_max3_f32 v180, v23, v139, v24
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v133
	ds_load_b128 v[13:16], v121
	ds_load_b128 v[17:20], v122
	ds_load_b128 v[21:24], v123
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v133, v176, v173, v175
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v135.h, 0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v153
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s94, s94, 64
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v133, v133, v177, v180
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.h, v135.h
	v_mov_b16_e64 v159.h, v135.h
	v_mov_b16_e64 v179.h, v135.h
	v_mov_b16_e64 v155.h, v135.h
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v173, v133, s99, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v163.h, v135.h
	v_mov_b16_e64 v178.h, v135.h
	v_mov_b16_e64 v187.h, v135.h
	v_mov_b16_e64 v134.h, v135.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v133, v153, v133, v173
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.h, v135.h
	v_mov_b16_e64 v174.h, v135.h
	v_mov_b16_e64 v165.h, v135.h
	v_mov_b16_e64 v157.h, v135.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v27, v27, v133
	v_sub_f32_e32 v160, v160, v133
	v_sub_f32_e32 v147, v147, v133
	v_sub_f32_e32 v137, v137, v133
	v_sub_f32_e32 v164, v164, v133
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v27, v27
	v_exp_f32_e32 v160, v160
	v_exp_f32_e32 v175, v147
	v_exp_f32_e32 v137, v137
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v146, v146, v133
	v_sub_f32_e32 v144, v144, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v164, v164
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v143, v143, v133
	v_sub_f32_e32 v25, v25, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v176, v146
	v_exp_f32_e32 v181, v144
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v27, s27
	v_cndmask_b32_e64 v144, 0, v160, s13
	v_cndmask_b32_e64 v160, 0, v175, s12
	v_cndmask_b32_e64 v175, 0, v137, s35
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v182, v143
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v164, s19
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v171, v171, v133
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v179.l, v27.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v141, v141, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.l, v175.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v142, v142, v133
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v25, v25
	v_exp_f32_e32 v171, v171
	v_exp_f32_e32 v184, v141
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v176, s11
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v155, 1, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v183, v142
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v173, v153, v133
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v140, v140, v133
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v182, s6
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v182, v160, v143
.Ltmp18:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v152, v152, v133
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v25, s22
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v158, v158, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v188, v140
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v171, s17
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v152, v152
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v171, 0, v183, s5
	v_cndmask_b32_e64 v140, 0, v184, s8
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v170, v170, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v153, v158
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v29, v133
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v163.l, v160.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v148, v148, v133
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v170, v170
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v32, v32, v133
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v152, s14
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v30, v30, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v163, 1, v163
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v180, v148
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v153, s30
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v31, v31, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v170, s21
	v_cndmask_b32_e64 v170, 0, v181, s7
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v181, v152, v144
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v30, v30
	v_exp_f32_e32 v31, v31
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v190, 0, v29, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v178.l, v25.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v149, v149, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v187.l, v153.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v162, v162, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v190.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v139, v139, v133 :: v_dual_and_b32 v178, 1, v178
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v191, 0, v30, s25
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v172, v172, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v185, v149
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v31, s24
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v162, v162
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v31, v191, v148
.Ltmp22:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v145, v145, v133 :: v_dual_and_b32 v134, 1, v134
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v186, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v32, s36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v151, v151, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v177, v145
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v138, v138, v133
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v180, s9
	v_cndmask_b32_e64 v145, 0, v162, s15
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v151, v151
	v_exp_f32_e32 v158, v172
	v_exp_f32_e32 v138, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v186, s33
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v173, v173
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.l, v170.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v177, s10
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v28, v28, v133
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v154.h, v135.h
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v184, v170, v141
.Ltmp24:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v151, s16
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v26, v26, v133
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v183, v162, v142
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v28, v28
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v158, s29
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v177, v164, v146
.Ltmp28:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v26, v26
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v176, 0, v138, s34
	v_cndmask_b32_e64 v138, 0, v188, s31
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v150, v150, v133
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v173, 0, v173, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v135.l, v158.h
	v_mov_b16_e64 v165.l, v152.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v189, 0, v28, s23
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v172, v150
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v157.l, v171.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v26, s26
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v26, v153, v158
	v_add_f32_e32 v28, v27, v189
.Ltmp30:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v169, v169, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.l, v176.h
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v29, v25, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v186, v26, v28 :: v_dual_and_b32 v159, 1, v159
.Ltmp32:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v169, v169
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v172, s18
	v_cndmask_b32_e64 v172, 0, v185, s4
.Ltmp33:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v185, v171, v140
	v_add_f32_e32 v28, v175, v137
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v158, v158
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v180, v151, v145
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.l, v172.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v7, v7, v173 :: v_dual_add_f32 v26, v172, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v169, 0, v169, s20
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v177, v177, v180
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v156, 1, v156
	v_cmp_o_f32_e64 s30, v172, v172
	v_mov_b16_e64 v174.l, v151.h
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v32, v169, v147
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v153, v153
	v_add3_u32 v156, v172, v156, 0x7fff
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v180, v183, v184
.Ltmp42:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v5, v5, v173 :: v_dual_and_b32 v174, 1, v174
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v192, v31, v32 :: v_dual_and_b32 v31, 1, v187
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v32, 1, v179
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v179, v181, v182
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v181, v185, v26 :: v_dual_add_f32 v172, v192, v177
	v_add_f32_e32 v30, v190, v149
.Ltmp46:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v153, v153, v31, 0x7fff
	v_cmp_o_f32_e64 s26, v170, v170
	v_and_b32_e32 v157, 1, v157
	v_and_b32_e32 v154, 1, v154
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v188, v29, v30
	v_dual_add_f32 v29, v176, v138 :: v_dual_and_b32 v30, 1, v135
.Ltmp48:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v135.l, v189.h
	v_add3_u32 v159, v170, v159, 0x7fff
	v_mov_b16_e64 v161.h, v135.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v182, v28, v29
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v158, v158, v30, 0x7fff
	v_and_b32_e32 v165, 1, v165
	v_and_b32_e32 v170, 1, v135
	v_mov_b16_e64 v135.l, v150.h
	v_cmp_o_f32_e64 s11, v151, v151
	v_cmp_o_f32_e64 s12, v152, v152
	v_mov_b16_e64 v161.l, v162.h
	v_add3_u32 v151, v151, v174, 0x7fff
	v_cmp_o_f32_e64 s28, v171, v171
	v_cmp_o_f32_e64 s33, v175, v175
	v_cmp_o_f32_e64 s35, v176, v176
	v_add3_u32 v157, v171, v157, 0x7fff
	v_add3_u32 v155, v175, v155, 0x7fff
	v_add3_u32 v154, v176, v154, 0x7fff
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v171, v186, v188
	v_dual_add_f32 v175, v179, v180 :: v_dual_add_f32 v176, v181, v182
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v152, v152, v165, 0x7fff
	v_cndmask_b16 v158.h, 0x7fff, v158.h, s4
	v_cndmask_b16 v158.l, 0x7fff, v153.h, s5
	v_and_b32_e32 v153, 1, v135
	v_mov_b16_e64 v135.l, v149.h
	v_add3_u32 v183, v27, v32, 0x7fff
	v_add3_u32 v174, v160, v163, 0x7fff
	v_add3_u32 v170, v189, v170, 0x7fff
	v_cmp_o_f32_e64 s7, v25, v25
	v_add3_u32 v178, v25, v178, 0x7fff
	v_and_b32_e32 v161, 1, v161
	v_cmp_o_f32_e64 s16, v150, v150
	v_cndmask_b16 v170.l, 0x7fff, v151.h, s11
	v_cndmask_b16 v174.l, 0x7fff, v152.h, s12
	v_cndmask_b16 v181.l, 0x7fff, v156.h, s30
	v_cndmask_b16 v183.l, 0x7fff, v154.h, s35
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v151, v171, v172
	v_add_f32_e32 v152, v175, v176
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v154, v158, s99, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v153, v150, v153, 0x7fff
	v_and_b32_e32 v156, 1, v135
	v_mov_b16_e64 v135.l, v148.h
	v_mov_b16_e64 v168.h, v135.h
	v_cmp_o_f32_e64 s6, v27, v27
	v_cmp_o_f32_e64 s13, v190, v190
	v_mov_b16_e64 v168.l, v164.h
	v_add3_u32 v134, v190, v134, 0x7fff
	v_cmp_o_f32_e64 s2, v189, v189
	v_cmp_o_f32_e64 s17, v149, v149
	v_cndmask_b16 v155.l, 0x7fff, v178.h, s7
	v_cndmask_b16 v182.l, 0x7fff, v155.h, s33
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v171, v151, v152
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v150, v154, v158, v120
	v_perm_b32 v151, v154, v158, v129
	v_cndmask_b16 v155.h, 0x7fff, v153.h, s16
	v_add3_u32 v149, v149, v156, 0x7fff
	v_and_b32_e32 v154, 1, v135
	v_mov_b16_e64 v135.l, v147.h
	v_mov_b16_e64 v167.l, v169.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v3, v3, v173 :: v_dual_and_b32 v168, 1, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s18, v148, v148
	v_cndmask_b16 v134.l, 0x7fff, v183.h, s6
	v_cndmask_b16 v157.l, 0x7fff, v134.h, s13
	v_cndmask_b16 v180.l, 0x7fff, v157.h, s28
	v_cndmask_b16 v134.h, 0x7fff, v170.h, s2
	v_cndmask_b16 v157.h, 0x7fff, v149.h, s17
	v_permlanex16_b32 v149, v155, s99, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v148, v148, v154, 0x7fff
	v_and_b32_e32 v158, 1, v135
	v_mov_b16_e64 v135.l, v146.h
	v_and_b32_e32 v167, 1, v167
	v_mov_b16_e64 v166.h, v135.h
	v_mov_b16_e64 v166.l, v191.h
	v_cmp_o_f32_e64 s10, v164, v164
	v_add3_u32 v168, v164, v168, 0x7fff
	v_cmp_o_f32_e64 s19, v147, v147
	v_cndmask_b16 v179.l, 0x7fff, v159.h, s26
	v_permlanex16_b32 v172, v134, s99, 0xfedcba98 op_sel:[1,0]
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v156, v171, s99, 0xfedcba98 op_sel:[1,0]
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v154, v149, v155, v120
	v_perm_b32 v155, v149, v155, v129
	v_permlanex16_b32 v149, v157, s99, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v159.h, 0x7fff, v148.h, s18
	v_add3_u32 v147, v147, v158, 0x7fff
	v_and_b32_e32 v148, 1, v135
	v_mov_b16_e64 v135.l, v145.h
	v_cmp_o_f32_e64 s9, v169, v169
	v_add3_u32 v169, v169, v167, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v1, v1, v173 :: v_dual_and_b32 v166, 1, v166
	v_mul_f32_e32 v2, v2, v173
	v_mul_f32_e32 v4, v4, v173
	v_mul_f32_e32 v6, v6, v173
	v_mul_f32_e32 v8, v8, v173
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v169.l, 0x7fff, v168.h, s10
	v_perm_b32 v152, v172, v134, v120
	v_perm_b32 v153, v172, v134, v129
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v134, v171, v156
.Ltmp60:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v156, v149, v157, v120
	v_perm_b32 v157, v149, v157, v129
	v_cndmask_b16 v168.h, 0x7fff, v147.h, s19
	v_and_b32_e32 v147, 1, v135
	v_mov_b16_e64 v135.l, v144.h
	v_cmp_o_f32_e64 s8, v191, v191
	v_add3_u32 v184, v191, v166, 0x7fff
	v_cmp_o_f32_e64 s20, v146, v146
	v_cmp_o_f32_e64 s21, v145, v145
	v_add3_u32 v146, v146, v148, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[150:157], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v13, v145, v147, 0x7fff
	v_and_b32_e32 v14, 1, v135
	v_mov_b16_e64 v135.l, v143.h
	v_cmp_o_f32_e64 s22, v144, v144
	v_cndmask_b16 v159.l, 0x7fff, v184.h, s8
	v_cndmask_b16 v168.l, 0x7fff, v169.h, s9
	v_cndmask_b16 v169.h, 0x7fff, v146.h, s20
	v_cndmask_b16 v170.h, 0x7fff, v13.h, s21
	v_add3_u32 v16, v144, v14, 0x7fff
	v_and_b32_e32 v144, 1, v135
	v_mov_b16_e64 v135.l, v142.h
	v_cmp_o_f32_e64 s14, v160, v160
	v_cmp_o_f32_e64 s23, v143, v143
	v_permlanex16_b32 v149, v159, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v168, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v169, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v145, v170, s99, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v143, v143, v144, 0x7fff
	v_and_b32_e32 v144, 1, v135
	v_mov_b16_e64 v135.l, v141.h
	v_cndmask_b16 v177.l, 0x7fff, v174.h, s14
	v_perm_b32 v9, v149, v159, v120
	v_perm_b32 v10, v149, v159, v129
	v_perm_b32 v11, v12, v168, v120
	v_perm_b32 v12, v12, v168, v129
	v_perm_b32 v13, v15, v169, v120
	v_perm_b32 v14, v15, v169, v129
	v_cndmask_b16 v174.h, 0x7fff, v16.h, s22
	v_perm_b32 v15, v145, v170, v120
	v_perm_b32 v16, v145, v170, v129
	v_cndmask_b16 v177.h, 0x7fff, v143.h, s23
	v_and_b32_e32 v143, 1, v135
	v_mov_b16_e64 v135.l, v140.h
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[25:28], v124
	ds_load_b128 v[29:32], v126
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[9:16], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v162, v162
	v_add3_u32 v185, v162, v161, 0x7fff
	v_and_b32_e32 v14, 1, v135
	v_mov_b16_e64 v135.l, v139.h
	v_cmp_o_f32_e64 s24, v142, v142
	v_cmp_o_f32_e64 s25, v141, v141
	v_cmp_o_f32_e64 s27, v140, v140
	v_add3_u32 v142, v142, v144, 0x7fff
	v_and_b32_e32 v16, 1, v135
	v_mov_b16_e64 v135.l, v137.h
	v_add3_u32 v13, v141, v143, 0x7fff
	v_add3_u32 v17, v140, v14, 0x7fff
	v_cmp_o_f32_e64 s29, v139, v139
	v_cndmask_b16 v178.l, 0x7fff, v185.h, s15
	v_and_b32_e32 v19, 1, v135
	v_mov_b16_e64 v135.l, v138.h
	v_cndmask_b16 v178.h, 0x7fff, v142.h, s24
	v_cndmask_b16 v179.h, 0x7fff, v13.h, s25
	v_cndmask_b16 v180.h, 0x7fff, v17.h, s27
	v_add3_u32 v17, v139, v16, 0x7fff
	v_and_b32_e32 v20, 1, v135
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[160:163], v127
	ds_load_b128 v[164:167], v128
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v137, v137
	v_cmp_o_f32_e64 s34, v138, v138
	v_permlanex16_b32 v145, v174, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v177, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v178, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v179, s99, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v19, v137, v19, 0x7fff
	v_cndmask_b16 v181.h, 0x7fff, v17.h, s29
	v_add3_u32 v17, v138, v20, 0x7fff
	v_perm_b32 v9, v145, v174, v120
	v_perm_b32 v10, v145, v174, v129
	v_perm_b32 v11, v12, v177, v120
	v_perm_b32 v12, v12, v177, v129
	v_perm_b32 v13, v15, v178, v120
	v_perm_b32 v14, v15, v178, v129
	v_perm_b32 v15, v18, v179, v120
	v_perm_b32 v16, v18, v179, v129
	v_cndmask_b16 v182.h, 0x7fff, v19.h, s31
	v_cndmask_b16 v183.h, 0x7fff, v17.h, s34
	v_permlanex16_b32 v18, v180, s99, 0xfedcba98 op_sel:[1,0]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v134, v136, v173
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[9:16], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_permlanex16_b32 v12, v181, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v182, s99, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v183, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v18, v180, v120
	v_perm_b32 v10, v18, v180, v129
	v_perm_b32 v11, v12, v181, v120
	v_perm_b32 v12, v12, v181, v129
	v_perm_b32 v13, v14, v182, v120
	v_perm_b32 v14, v14, v182, v129
	v_perm_b32 v15, v16, v183, v120
	v_perm_b32 v16, v16, v183, v129
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s94, s95
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[160:167], v[9:16], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v133, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v134, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v46
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s93, s93, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s79, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s92, s93
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v133 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v134, vcc_lo
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp62:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp68:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp77:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp78:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp80:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp81:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp86:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp95:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp96:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp110:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v15, v11
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v16 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	v_add_f32_e32 v11, v11, v15
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v18, v13
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v12
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp128:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp130:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp131:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp132:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s76, s4
	s_addc_u32 s5, s77, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp133:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp134:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v43
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v44
.Ltmp136:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v44
	v_lshlrev_b32_e32 v2, 5, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp138:
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s79, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s77, s77, 0xffff
	s_mov_b32 s79, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s78, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[76:79], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp139:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 213
		.amdhsa_next_free_sgpr 101
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 213
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 101
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8900
; TotalNumSgprs: 103
; NumVgprs: 213
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 103
; NumVGPRsForWavesPerEU: 213
; Occupancy: 7
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
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
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp65-.Lfunc_begin0
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
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     213
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
