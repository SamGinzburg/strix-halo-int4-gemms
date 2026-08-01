	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s54, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v69, 15, v0
	v_lshrrev_b32_e32 v9, 4, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x7c
	s_load_b32 s19, s[0:1], 0x84
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 1, v69
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v65, 0xc0, v0
	v_lshlrev_b32_e32 v66, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v67, 31, v0
	v_and_b32_e32 v70, 0xf0, v0
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v71, 7, v0
	v_lshrrev_b32_e32 v72, 3, v0
	v_lshlrev_b32_e32 v68, 5, v0
	s_mov_b32 s44, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s54
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s54
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_and_b32 s57, s57, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s42, v2
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s54
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s18, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s18, v9
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s12, v9
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s41, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, v3, s42, v[2:3]
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v4, 3, v65
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s4, s4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v4, v66, v4, 0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s54, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s54
	s_abs_i32 s4, s4
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_u16 v3, v3, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s17, s19
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s18
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s19, s16
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s8
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s18
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s6, s41, s2
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
	s_max_i32 s55, s6, s4
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s72, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s55, s72
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v3, s18, v69
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s12, v69, 1
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	v_lshlrev_b32_e32 v8, 3, v67
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e64 s2, 1, v3
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v20, 0x7632 :: v_dual_lshlrev_b32 v21, 2, v69
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_and_b32 v5, 24, v66
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	v_dual_mov_b32 v19, 0x5410 :: v_dual_add_nc_u32 v4, s19, v1
	v_mov_b32_e32 v1, 0
	v_lshlrev_b32_e32 v13, 1, v65
	v_and_b32_e32 v18, 16, v0
	v_dual_mov_b32 v139, 0xff800000 :: v_dual_and_b32 v14, 14, v9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	v_lshlrev_b32_e32 v17, 6, v0
	buffer_load_u16 v10, v3, s[56:59], 0 offen
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v3, 3, v71
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v75, s16, v4
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v76, s17, v4
	v_lshl_or_b32 v77, v69, 8, v8
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[23:24], null, s43, v72, v[3:4]
	v_mov_b32_e32 v4, v1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s43, v3
	v_mov_b32_e32 v3, v1
	v_cmp_eq_u32_e64 s2, 0, v18
	v_mov_b32_e32 v8, v1
	v_lshl_or_b32 v13, v67, 2, v13
	v_lshrrev_b32_e32 v6, 1, v0
	v_lshlrev_b32_e32 v7, 3, v69
	v_and_b32_e32 v15, 0x380, v68
	v_dual_mov_b32 v35, 0xff800000 :: v_dual_and_b32 v16, 30, v0
	v_lshlrev_b32_e32 v25, 4, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v27, v69, 5, v5
	v_cndmask_b32_e64 v18, 0x1054, v19, s2
	v_xor_b32_e32 v103, v13, v14
	v_cndmask_b32_e64 v13, 0x3276, v20, s2
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s2, s12, 0x3fb8aa3b
	.loc	1 822 49                        ; attention.py:822:49
	v_lshlrev_b32_e32 v11, 3, v0
	v_lshrrev_b32_e32 v12, 1, v70
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v26, 0x60, v0
	v_and_b32_e32 v28, 24, v6
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v79, 0, v25
	v_lshl_or_b32 v29, v70, 4, v7
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v24, 16, v27
	v_xor_b32_e32 v25, 24, v27
	v_xor_b32_e32 v19, 8, v27
	v_add3_u32 v78, 0, v2, v26
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v7, v1 :: v_dual_and_b32 v22, 24, v11
	v_add_nc_u32_e32 v102, 0, v27
	v_xor_b32_e32 v11, v11, v28
	v_xor_b32_e32 v12, v29, v12
	v_xor_b32_e32 v26, 8, v77
	v_xor_b32_e32 v27, 16, v77
	v_xor_b32_e32 v28, 24, v77
	v_xor_b32_e32 v29, 32, v77
	v_xor_b32_e32 v31, 40, v77
	v_add_nc_u32_e32 v106, 0, v24
	v_add_nc_u32_e32 v107, 0, v25
	v_add_nc_u32_e32 v105, 0, v19
	v_add_nc_u32_e32 v110, 0, v26
	v_add_nc_u32_e32 v111, 0, v27
	v_add_nc_u32_e32 v112, 0, v28
	v_add_nc_u32_e32 v113, 0, v29
	v_add_nc_u32_e32 v114, 0, v31
	v_lshl_or_b32 v14, v18, 8, v18
	v_lshl_or_b32 v13, v13, 8, v13
	v_xor_b32_e32 v32, 48, v77
	v_xor_b32_e32 v33, 56, v77
	v_add_nc_u32_e32 v109, 0, v12
	v_and_b32_e32 v14, 0x540054, v14
	v_and_b32_e32 v12, 0x760076, v13
	v_add_nc_u32_e32 v115, 0, v32
	v_add_nc_u32_e32 v116, 0, v33
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[32:33], null, s15, v9, v[21:22]
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s73, s3, 11
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s1, 3
	v_and_or_b32 v73, v9, 1, s73
	v_or3_b32 v74, s73, v9, 62
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s1, -8
	v_xor_b32_e32 v36, 64, v77
	v_xor_b32_e32 v37, 0x48, v77
	v_xor_b32_e32 v38, 0x50, v77
	v_xor_b32_e32 v39, 0x58, v77
	v_xor_b32_e32 v40, 0x60, v77
	v_xor_b32_e32 v41, 0x68, v77
	v_xor_b32_e32 v42, 0x70, v77
	v_xor_b32_e32 v43, 0x78, v77
	v_add_nc_u32_e32 v108, 0, v11
	v_lshl_or_b32 v11, v14, 4, v14
	v_lshl_or_b32 v9, v12, 4, v12
	s_sub_i32 s9, s3, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s13, s8
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s9, s14, s9
	v_or_b32_e32 v80, 18, v73
	v_or_b32_e32 v81, 20, v73
	v_or_b32_e32 v82, 22, v73
	v_or_b32_e32 v83, 24, v73
	v_or_b32_e32 v84, 26, v73
	v_or_b32_e32 v85, 28, v73
	v_or_b32_e32 v86, 30, v73
	v_or_b32_e32 v87, 32, v73
	v_or_b32_e32 v88, 34, v73
	v_or_b32_e32 v89, 36, v73
	v_or_b32_e32 v90, 38, v73
	v_or_b32_e32 v91, 40, v73
	v_or_b32_e32 v92, 42, v73
	v_or_b32_e32 v93, 44, v73
	v_or_b32_e32 v94, 46, v73
	v_or_b32_e32 v95, 48, v73
	v_or_b32_e32 v96, 50, v73
	v_or_b32_e32 v97, 52, v73
	v_or_b32_e32 v98, 54, v73
	v_or_b32_e32 v99, 56, v73
	v_or_b32_e32 v100, 58, v73
	v_or_b32_e32 v101, 60, v73
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s1, s42, v22
	v_add_nc_u32_e32 v117, 0, v36
	v_add_nc_u32_e32 v118, 0, v37
	v_add_nc_u32_e32 v119, 0, v38
	v_add_nc_u32_e32 v120, 0, v39
	v_add_nc_u32_e32 v121, 0, v40
	v_add_nc_u32_e32 v122, 0, v41
	v_add_nc_u32_e32 v123, 0, v42
	v_add_nc_u32_e32 v124, 0, v43
	v_and_b32_e32 v133, 0x5040504, v11
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v134, 1, v32
	v_add_nc_u32_e32 v135, 2, v32
	v_and_b32_e32 v136, 0x7060706, v9
	v_add_nc_u32_e32 v138, 3, v32
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s18, s18, s15
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s76, s9, s8
	s_lshl_b32 s74, s43, 5
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s75, 0x76543210
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s70, s58
	s_mov_b32 s71, s59
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s64, s10
	s_mov_b32 s68, s6
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s65, s11
	s_add_i32 s76, s76, s18
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	v_and_b32_e32 v30, 64, v17
	v_mov_b32_e32 v17, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v137, s2, v10
	v_or3_b32 v104, v15, v16, v30
	v_xor_b32_e32 v15, 0x210, v103
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v24, 20, v104
	v_xor_b32_e32 v25, 24, v104
	v_xor_b32_e32 v30, 28, v104
	v_xor_b32_e32 v16, 4, v104
	v_xor_b32_e32 v18, 8, v104
	v_add_nc_u32_e32 v130, 0, v24
	v_add_nc_u32_e32 v131, 0, v25
	v_add_nc_u32_e32 v132, 0, v30
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[24:25], v102
	ds_load_b64 v[26:27], v105
	ds_load_b64 v[28:29], v106
	ds_load_b64 v[30:31], v107
	v_xor_b32_e32 v19, 12, v104
	v_xor_b32_e32 v20, 16, v104
	v_add_nc_u32_e32 v125, 0, v15
	v_add_nc_u32_e32 v126, 0, v16
	v_add_nc_u32_e32 v127, 0, v18
	v_add_nc_u32_e32 v128, 0, v19
	v_add_nc_u32_e32 v129, 0, v20
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v18, 2, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s11, s55, s73
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s44 :: v_dual_mov_b32 v10, s45
	v_dual_mov_b32 v11, s46 :: v_dual_mov_b32 v12, s47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v18, s11, v18
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v13, s48 :: v_dual_mov_b32 v14, s49
	v_dual_mov_b32 v15, s50 :: v_dual_mov_b32 v16, s51
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[18:19], null, v18, s42, v[22:23]
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v142, 1, v21
	v_or_b32_e32 v168, 2, v21
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v140, s55, v21
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v169, 3, v21
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s9, s76, s55
	v_or_b32_e32 v59, 2, v73
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v140, v75
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v140, v76
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v140, s55, v169
	v_or_b32_e32 v60, 4, v73
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[18:19], v18, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s2, s4
	.loc	1 867 30 is_stmt 0              ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v140, v76
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, vcc_lo, s2
	v_or_b32_e32 v61, 6, v73
	v_or_b32_e32 v62, 8, v73
	v_or_b32_e32 v63, 10, v73
	v_or_b32_e32 v64, 12, v73
	v_or_b32_e32 v141, 14, v73
	v_or_b32_e32 v170, 16, v73
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_add_lshl_u32 v58, s55, v73, 1
	v_add_lshl_u32 v59, v59, s55, 1
	v_add_lshl_u32 v60, v60, s55, 1
	v_add_lshl_u32 v61, v61, s55, 1
	v_add_lshl_u32 v62, v62, s55, 1
	v_add_lshl_u32 v63, v63, s55, 1
	v_add_lshl_u32 v64, v64, s55, 1
	v_add_lshl_u32 v141, v141, s55, 1
	v_add_lshl_u32 v171, v80, s55, 1
	v_add_lshl_u32 v172, v81, s55, 1
	v_add_lshl_u32 v173, v82, s55, 1
	v_add_lshl_u32 v174, v83, s55, 1
	v_add_lshl_u32 v175, v84, s55, 1
	v_add_lshl_u32 v176, v85, s55, 1
	v_add_lshl_u32 v177, v86, s55, 1
	v_add_lshl_u32 v178, v87, s55, 1
	v_add_lshl_u32 v179, v88, s55, 1
	v_add_lshl_u32 v180, v89, s55, 1
	v_add_lshl_u32 v181, v90, s55, 1
	v_add_lshl_u32 v182, v91, s55, 1
	v_add_lshl_u32 v183, v92, s55, 1
	v_add_lshl_u32 v184, v93, s55, 1
	v_add_lshl_u32 v185, v94, s55, 1
	v_add_lshl_u32 v186, v95, s55, 1
	v_add_lshl_u32 v189, v99, s55, 1
	v_add_lshl_u32 v190, v100, s55, 1
	v_add_lshl_u32 v191, v101, s55, 1
	v_add_lshl_u32 v192, s55, v74, 1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v139
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v108, v[18:19]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[44:47], v102 offset1:1
	ds_load_2addr_stride64_b64 v[48:51], v102 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[52:55], v105 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[46:47], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[152:159], v[48:49], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[50:51], v[24:25], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v105 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v106 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[52:53], v[26:27], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[54:55], v[26:27], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[152:159], v[9:10], v[26:27], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[11:12], v[26:27], v[160:167] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v106 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[13:14], v[28:29], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[15:16], v[28:29], v[144:151] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v107 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[152:159], v[9:10], v[28:29], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[11:12], v[28:29], v[160:167] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v107 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[13:14], v[30:31], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[15:16], v[30:31], v[144:151] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v13, v96, s55, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v14, v36
	v_cvt_f32_i32_e32 v187, v37
	v_cvt_f32_i32_e32 v188, v38
	v_cvt_f32_i32_e32 v143, v39
	v_cvt_f32_i32_e32 v53, v40
	v_cvt_f32_i32_e32 v54, v41
	v_cvt_f32_i32_e32 v55, v42
	v_cvt_f32_i32_e32 v56, v43
	v_cvt_f32_i32_e32 v57, v144
	v_cvt_f32_i32_e32 v52, v145
	v_cvt_f32_i32_e32 v51, v146
	v_cvt_f32_i32_e32 v50, v147
	v_cvt_f32_i32_e32 v45, v148
	v_cvt_f32_i32_e32 v46, v149
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[160:167], v[11:12], v[30:31], v[160:167] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v11, s55, v142
	v_or_b32_e32 v12, s55, v168
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[152:159], v[9:10], v[30:31], v[152:159] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v9, s9, v32, 2
	v_add_lshl_u32 v10, s9, v134, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v11, v75
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v11, v76
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v12, v75
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v12, v76
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v11, s9, v135, 2
	v_add_lshl_u32 v12, s9, v138, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v140, v75
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s5, s6
	s_and_b32 s5, s7, s8
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s7, s9, s4
	s_and_b32 s4, vcc_lo, s5
	s_and_b32 s5, vcc_lo, s7
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	s_clause 0x3
	buffer_load_b32 v9, v9, s[60:63], 0 offen
	buffer_load_b32 v11, v11, s[60:63], 0 offen
	buffer_load_b32 v12, v12, s[60:63], 0 offen
	buffer_load_b32 v140, v10, s[60:63], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v142, v170, s55, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v150
	v_cvt_f32_i32_e32 v48, v151
	v_cvt_f32_i32_e32 v49, v152
	v_cvt_f32_i32_e32 v44, v153
	v_cvt_f32_i32_e32 v43, v154
	v_cvt_f32_i32_e32 v42, v155
	v_cvt_f32_i32_e32 v37, v156
	v_cvt_f32_i32_e32 v38, v157
	v_cvt_f32_i32_e32 v39, v158
	v_cvt_f32_i32_e32 v40, v159
	v_cvt_f32_i32_e32 v41, v160
	v_cvt_f32_i32_e32 v15, v161
	v_cvt_f32_i32_e32 v16, v162
	v_cvt_f32_i32_e32 v18, v163
	v_cvt_f32_i32_e32 v19, v164
	v_cvt_f32_i32_e32 v20, v165
	v_cvt_f32_i32_e32 v33, v166
	v_cvt_f32_i32_e32 v36, v167
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v165, v97, s55, 1
	v_add_lshl_u32 v167, v98, s55, 1
	s_clause 0x1f
	buffer_load_u16 v58, v58, s[64:67], 0 offen
	buffer_load_u16 v169, v59, s[64:67], 0 offen
	buffer_load_u16 v170, v60, s[64:67], 0 offen
	buffer_load_u16 v166, v61, s[64:67], 0 offen
	buffer_load_u16 v160, v62, s[64:67], 0 offen
	buffer_load_u16 v161, v63, s[64:67], 0 offen
	buffer_load_u16 v162, v64, s[64:67], 0 offen
	buffer_load_u16 v163, v141, s[64:67], 0 offen
	buffer_load_u16 v164, v142, s[64:67], 0 offen
	buffer_load_u16 v159, v171, s[64:67], 0 offen
	buffer_load_u16 v158, v172, s[64:67], 0 offen
	buffer_load_u16 v157, v173, s[64:67], 0 offen
	buffer_load_u16 v152, v174, s[64:67], 0 offen
	buffer_load_u16 v153, v175, s[64:67], 0 offen
	buffer_load_u16 v154, v176, s[64:67], 0 offen
	buffer_load_u16 v155, v177, s[64:67], 0 offen
	buffer_load_u16 v156, v178, s[64:67], 0 offen
	buffer_load_u16 v151, v179, s[64:67], 0 offen
	buffer_load_u16 v150, v180, s[64:67], 0 offen
	buffer_load_u16 v149, v181, s[64:67], 0 offen
	buffer_load_u16 v144, v182, s[64:67], 0 offen
	buffer_load_u16 v145, v183, s[64:67], 0 offen
	buffer_load_u16 v146, v184, s[64:67], 0 offen
	buffer_load_u16 v147, v185, s[64:67], 0 offen
	buffer_load_u16 v148, v186, s[64:67], 0 offen
	buffer_load_u16 v60, v13, s[64:67], 0 offen
	buffer_load_u16 v61, v165, s[64:67], 0 offen
	buffer_load_u16 v62, v167, s[64:67], 0 offen
	buffer_load_u16 v63, v189, s[64:67], 0 offen
	buffer_load_u16 v64, v190, s[64:67], 0 offen
	buffer_load_u16 v141, v191, s[64:67], 0 offen
	buffer_load_u16 v142, v192, s[64:67], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v143, v137, v143
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s55, s55, 64
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v165, v137, v14
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v166, 16, v166
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v9, 0xff800000, v9, s2
	v_cndmask_b32_e64 v10, 0xff800000, v11, s4
	v_cndmask_b32_e64 v12, 0xff800000, v12, s5
	v_cndmask_b32_e64 v11, 0xff800000, v140, s6
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v140, 0, v77
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v9
	v_cmp_neq_f32_e64 s8, 0xff800000, v10
	v_cmp_neq_f32_e64 s10, 0xff800000, v12
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v109, v[9:10], v[11:12] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[167:168], v140
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v11
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[13:14], v110
	ds_load_b64 v[9:10], v111
	ds_load_b64 v[11:12], v112
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v58, 16, v58
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, s2, s7
	s_and_b32 s2, s4, s8
	s_and_b32 s4, s5, s10
	s_and_b32 s6, s6, s9
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s55, s72
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v59, 0x3fb8aa3b, v167
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v13, 0x3fb8aa3b, v13 :: v_dual_mul_f32 v14, 0x3fb8aa3b, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v167, 16, v169
	v_mov_b32_e32 v169, v17
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v59, v165, v58 :: v_dual_mul_f32 v58, 0x3fb8aa3b, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v165, v137, v187 :: v_dual_fmac_f32 v14, v143, v166
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v168, v35, v35
	v_dual_mov_b32 v166, v34 :: v_dual_mul_f32 v17, v137, v53
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v58, v165, v167 :: v_dual_lshlrev_b32 v167, 16, v170
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v165, v137, v188
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v53, v137, v54 :: v_dual_mul_f32 v170, 0x3fb8aa3b, v12
	v_mul_f32_e32 v54, v137, v55
	v_mul_f32_e32 v55, v137, v56
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v13, v165, v167
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v56, v137, v57 :: v_dual_add_nc_u32 v165, 0, v103
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v167, 0, v104
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v34, 16, v160
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v57, 16, v161
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v160, 16, v162
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v162, 16, v164
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v164, 0x3fb8aa3b, v10 :: v_dual_lshlrev_b32 v161, 16, v163
	v_mul_f32_e32 v163, 0x3fb8aa3b, v9
	ds_load_b64 v[9:10], v114
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.h, 0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v164, v53, v57
	v_dual_fmac_f32 v170, v55, v161 :: v_dual_fmac_f32 v163, v17, v34
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[34:35], v113
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v17, v137, v52
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v57, 0x3fb8aa3b, v11
	ds_load_b64 v[11:12], v116
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.h, v143.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v57, v54, v160
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[53:54], v115
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v160.h, v143.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v52, 0x3fb8aa3b, v10
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v10, 16, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.h, v143.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v171, 0x3fb8aa3b, v34 :: v_dual_lshlrev_b32 v34, 16, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.h, v143.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v172, 0x3fb8aa3b, v11 :: v_dual_mul_f32 v173, 0x3fb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v171, v56, v162
	v_mad_u64_u32 v[55:56], null, s11, s43, v[23:24]
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v56, 0x3fb8aa3b, v35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v54, 0x3fb8aa3b, v54
	ds_load_b64 v[11:12], v120
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v162.h, v143.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v56, v17, v34
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v17, v137, v51 :: v_dual_lshlrev_b32 v34, 16, v158
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v51, 0x3fb8aa3b, v9
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v9, v137, v50 :: v_dual_lshlrev_b32 v50, 16, v156
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.h, v143.h
	v_mov_b16_e64 v156.h, v143.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v52, v9, v10
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v9, v137, v45
	v_dual_mul_f32 v45, v137, v47 :: v_dual_lshlrev_b32 v10, 16, v152
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v51, v17, v34 :: v_dual_lshlrev_b32 v34, 16, v153
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v17, v137, v46
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v53 :: v_dual_lshlrev_b32 v46, 16, v154
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v153.h, v143.h
	v_mov_b16_e64 v152.h, v143.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v54, v17, v34
	v_fmac_f32_e32 v53, v9, v10
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[9:10], v117
	ds_load_b64 v[34:35], v118
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v172, v45, v46
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[45:46], v119
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v47, v137, v48
	v_mul_f32_e32 v48, v137, v49
	v_mul_f32_e32 v17, v137, v38
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v41, v137, v41 :: v_dual_lshlrev_b32 v38, 16, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.h, v143.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v174, 0x3fb8aa3b, v9 :: v_dual_lshlrev_b32 v49, 16, v155
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v175, 0x3fb8aa3b, v10 :: v_dual_mul_f32 v176, 0x3fb8aa3b, v35
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v9, v137, v44 :: v_dual_mul_f32 v44, 0x3fb8aa3b, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v10, 16, v151
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v174, v48, v50 :: v_dual_fmac_f32 v173, v47, v49
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v34, 16, v145
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v48, 0x3fb8aa3b, v45 :: v_dual_fmac_f32 v175, v9, v10
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v9, v137, v43 :: v_dual_lshlrev_b32 v10, 16, v150
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v146, 0x3fb8aa3b, v46
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v46, 0x3fb8aa3b, v11 :: v_dual_lshlrev_b32 v11, 16, v60
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v44, v9, v10 :: v_dual_lshlrev_b32 v43, 16, v64
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v9, v137, v42 :: v_dual_lshlrev_b32 v10, 16, v149
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v42, 16, v148
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v47, 16, v142
	v_lshlrev_b32_e32 v45, 16, v141
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v141, v166, v166
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v176, v9, v10
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v9, v137, v37
	v_mul_f32_e32 v37, v137, v39
	v_mul_f32_e32 v39, v137, v40
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v10, 16, v144
	v_lshlrev_b32_e32 v40, 16, v147
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v146, v17, v34
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[34:35], v122
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v46, v37, v38
	v_fmac_f32_e32 v48, v9, v10
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[9:10], v121
	ds_load_b64 v[37:38], v123
	v_mul_f32_e32 v147, 0x3fb8aa3b, v12
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v12, v137, v16
	v_mul_f32_e32 v16, v137, v19
	v_dual_mul_f32 v19, v137, v36 :: v_dual_lshlrev_b32 v36, 16, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v147, v39, v40
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[39:40], v124
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v17, v137, v20 :: v_dual_lshlrev_b32 v20, 16, v61
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.h, v143.h
	v_mov_b16_e64 v149.h, v143.h
	v_mov_b16_e64 v151.h, v143.h
	v_mov_b16_e64 v155.h, v143.h
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v34, 0x3fb8aa3b, v34
	v_mul_f32_e32 v64, 0x3fb8aa3b, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v145.h, v143.h
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v50, 0x3fb8aa3b, v9 :: v_dual_mul_f32 v9, v137, v15
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v15, v137, v18
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v35, 0x3fb8aa3b, v37
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v18, v137, v33 :: v_dual_lshlrev_b32 v33, 16, v62
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v62, 0x3fb8aa3b, v10
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v10, 0, 1, s2
	v_cndmask_b32_e64 v37, 0, 1, s4
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v148, 0x3fb8aa3b, v40
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v50, v41, v42
	v_fmac_f32_e32 v62, v9, v11
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v11, 0, 1, s7
	v_mov_b16_e32 v9.l, v10.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v148, v19, v47
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v60, 0x3fb8aa3b, v39
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v34, v12, v20
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_mov_b16_e32 v10.l, v11.l
	v_lshlrev_b16 v9.l, 8, v9.l
	v_cndmask_b32_e64 v11, 0, 1, s6
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v64, v15, v33 :: v_dual_fmac_f32 v35, v16, v36
	v_fmac_f32_e32 v60, v18, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v9.l, v10.l, v9.l
	v_mov_b16_e32 v10.l, v37.l
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v41, 1, v55
	v_add_lshl_u32 v42, v55, s74, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.h, v143.h
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v9.h, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v9.h, v11.l, v9.h
	ds_store_b16 v165, v9
	ds_store_b16_d16_hi v125, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v167
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v165, 0x80000000, v41, s0
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v19.l, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s12, 1, v19.l
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v59, s12
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v142, 0x3fb8aa3b, v38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s31, 1, v9.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v142, v17, v43
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16_hi v9, v167 offset:32
	ds_load_u16_d16 v10, v126
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v126 offset:32
	ds_load_u16_d16 v11, v127
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v11, v127 offset:32
	ds_load_u16_d16 v12, v128
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v12, v128 offset:32
	ds_load_u16_d16 v15, v129
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v15, v129 offset:32
	ds_load_u16_d16 v16, v130
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v16, v130 offset:32
	ds_load_u16_d16 v17, v131
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v17, v131 offset:32
	ds_load_u16_d16 v18, v132
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v18, v132 offset:32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v58, s31
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v167, 0x80000000, v42, s0
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v19.l, 1, v9.h
	v_lshrrev_b16 v9.h, 8, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s5, 1, v19.l
	v_and_b16 v19.l, 1, v10.l
	v_and_b16 v9.h, 1, v9.h
	v_lshrrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u16_e64 s15, 1, v19.l
	v_and_b16 v19.l, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v10.h
	v_cmp_eq_u16_e64 s39, 1, v9.h
	v_and_b16 v10.l, 1, v10.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v13, s15
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s8, 1, v19.l
	v_and_b16 v19.l, 1, v11.l
	v_and_b16 v10.h, 1, v10.h
	v_lshrrev_b16 v11.l, 8, v11.l
	v_cmp_eq_u16_e64 s24, 1, v10.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, 0xff800000, v44, s8
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s17, 1, v19.l
	v_and_b16 v19.l, 1, v11.h
	v_lshrrev_b16 v11.h, 8, v11.h
	v_cmp_eq_u16_e64 s33, 1, v10.h
	v_and_b16 v11.l, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v14, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s9, 1, v19.l
	v_and_b16 v19.l, 1, v12.l
	v_and_b16 v11.h, 1, v11.h
	v_lshrrev_b16 v12.l, 8, v12.l
	v_cmp_eq_u16_e64 s25, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v163, s17
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s18, 1, v19.l
	v_and_b16 v19.l, 1, v12.h
	v_lshrrev_b16 v12.h, 8, v12.h
	v_cmp_eq_u16_e64 s34, 1, v11.h
	v_and_b16 v12.l, 1, v12.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v57, s18
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s10, 1, v19.l
	v_and_b16 v19.l, 1, v15.l
	v_lshrrev_b16 v15.l, 8, v15.l
	v_and_b16 v12.h, 1, v12.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v57, 0xff800000, v48, s9
	v_cndmask_b32_e64 v59, 0xff800000, v46, s10
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s19, 1, v19.l
	v_and_b16 v19.l, 1, v15.h
	v_lshrrev_b16 v15.h, 8, v15.h
	v_and_b16 v15.l, 1, v15.l
	v_cmp_eq_u16_e64 s35, 1, v12.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v58, 0xff800000, v146, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s11, 1, v19.l
	v_and_b16 v19.l, 1, v16.l
	v_lshrrev_b16 v16.l, 8, v16.l
	v_and_b16 v15.h, 1, v15.h
	v_cmp_eq_u16_e64 s27, 1, v15.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v61, 0xff800000, v50, s11
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s21, 1, v19.l
	v_and_b16 v19.l, 1, v16.h
	v_and_b16 v16.l, 1, v16.l
	v_lshrrev_b16 v16.h, 8, v16.h
	v_cmp_eq_u16_e64 s36, 1, v15.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v51, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s13, 1, v19.l
	v_and_b16 v19.l, 1, v17.l
	v_lshrrev_b16 v17.l, 8, v17.l
	v_cmp_eq_u16_e64 s28, 1, v16.l
	v_and_b16 v16.h, 1, v16.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v46, 0xff800000, v56, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s20, 1, v19.l
	v_and_b16 v19.l, 1, v17.h
	v_and_b16 v17.l, 1, v17.l
	v_lshrrev_b16 v17.h, 8, v17.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, 0xff800000, v52, s28
	v_cndmask_b32_e64 v49, 0xff800000, v53, s20
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s16, 1, v19.l
	v_and_b16 v19.l, 1, v18.l
	v_lshrrev_b16 v18.l, 8, v18.l
	v_cmp_eq_u16_e64 s29, 1, v17.l
	v_and_b16 v17.h, 1, v17.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, 0xff800000, v174, s5
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s22, 1, v19.l
	v_and_b16 v18.l, 1, v18.l
	v_and_b16 v19.l, 1, v18.h
	v_lshrrev_b16 v18.h, 8, v18.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, 0xff800000, v54, s29
	v_cndmask_b32_e64 v51, 0xff800000, v172, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s30, 1, v18.l
	v_cmp_eq_u16_e64 s14, 1, v19.l
	v_and_b16 v18.h, 1, v18.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v54, 0xff800000, v175, s39
	v_cndmask_b32_e64 v63, 0xff800000, v34, s13
	v_cndmask_b32_e64 v52, 0xff800000, v173, s30
	v_cndmask_b32_e64 v33, 0xff800000, v60, s14
	v_cndmask_b32_e64 v56, 0xff800000, v176, s33
	v_cndmask_b32_e64 v60, 0xff800000, v147, s35
	v_cndmask_b32_e64 v62, 0xff800000, v62, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s26, 1, v12.l
	v_cmp_eq_u16_e64 s37, 1, v16.h
	v_cmp_eq_u16_e64 s38, 1, v17.h
	v_cmp_eq_u16_e64 s23, 1, v18.h
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v9, v46, v47, v48
	v_max3_f32 v10, v49, v50, v51
	v_max3_f32 v11, v52, v53, v54
	v_max3_f32 v13, v55, v56, v57
	v_max3_f32 v14, v58, v59, v60
	v_max3_f32 v15, v61, v62, v63
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v164, s25
	v_cndmask_b32_e64 v44, 0xff800000, v170, s26
	v_cndmask_b32_e64 v45, 0xff800000, v171, s19
	v_cndmask_b32_e64 v35, 0xff800000, v35, s16
	v_cndmask_b32_e64 v64, 0xff800000, v64, s37
	v_cndmask_b32_e64 v36, 0xff800000, v142, s38
	v_cndmask_b32_e64 v34, 0xff800000, v148, s23
	ds_store_b64 v140, v[37:38]
	ds_store_b64 v110, v[39:40]
	ds_store_b64 v111, v[41:42]
	ds_store_b64 v112, v[43:44]
	ds_store_b64 v113, v[45:46]
	ds_store_b64 v114, v[47:48]
	ds_store_b64 v115, v[49:50]
	ds_store_b64 v116, v[51:52]
	ds_store_b64 v117, v[53:54]
	ds_store_b64 v118, v[55:56]
	ds_store_b64 v119, v[57:58]
	ds_store_b64 v120, v[59:60]
	ds_store_b64 v121, v[61:62]
	ds_store_b64 v122, v[63:64]
	ds_store_b64 v123, v[35:36]
	ds_store_b64 v124, v[33:34]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v163, v9, v10, v11
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[9:12], v165, s[68:71], 0 offen
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v164, v13, v14, v15
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[13:16], v167, s[68:71], 0 offen
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v140, v37, v38
	v_max3_f32 v142, v40, v41, v42
	v_max3_f32 v146, v43, v44, v45
	v_dual_max_f32 v147, v64, v35 :: v_dual_max_f32 v148, v33, v34
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[17:20], v109 offset1:16
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v140, v140, v39, v142
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v142, v147, v36, v148
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v79, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v79, v[13:16] offset:4096
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v140, v140, v146, v163
	v_max_f32_e32 v147, v17, v17
.Ltmp14:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v140, v140, v164, v142
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v142, v140, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v140, v139, v140, v142
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v146, v19, v19 :: v_dual_sub_f32 v53, v53, v140
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v142, v147, v146 :: v_dual_sub_f32 v57, v57, v140
.Ltmp19:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v146, v139, v140
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v140
	v_sub_f32_e32 v45, v45, v140
	v_sub_f32_e32 v37, v37, v140
	v_sub_f32_e32 v41, v41, v140
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v146, v146
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v43, v140
	v_sub_f32_e32 v47, v47, v140
	v_sub_f32_e32 v49, v49, v140
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v142, v142, v18, v20
.Ltmp21:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v45, v45
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v140
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
.Ltmp22:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v139, v142
.Ltmp23:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v146, 0, v146, s40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v51, v140
	v_sub_f32_e32 v38, v38, v140
	v_sub_f32_e32 v40, v40, v140
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v146
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v49, v49
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v146
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v42, v42, v140 :: v_dual_mul_f32 v5, v5, v146
	v_sub_f32_e32 v36, v36, v140
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
.Ltmp24:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v139, v139 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s15
	v_cndmask_b32_e64 v45, 0, v45, s19
	v_cndmask_b32_e64 v51, 0, v51, s22
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v146
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v44, v44, v140 :: v_dual_mul_f32 v7, v7, v146
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s31
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v139, v139, v139
.Ltmp27:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s12
	v_cndmask_b32_e64 v41, 0, v41, s17
	v_cndmask_b32_e64 v43, 0, v43, s18
	v_cndmask_b32_e64 v47, 0, v47, s21
	v_cndmask_b32_e64 v49, 0, v49, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.l, v39.h
	v_mov_b16_e64 v162.l, v45.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v46, v140
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v153.l, v51.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v50, v140
	v_sub_f32_e32 v63, v63, v140
	v_sub_f32_e32 v33, v33, v140
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s24
	v_cndmask_b32_e64 v148, 0, v34, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v143.l, v38.h
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v142, v139
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v160.l, v37.h
	v_mov_b16_e64 v158.l, v41.h
	v_mov_b16_e64 v161.l, v43.h
	v_mov_b16_e64 v157.l, v47.h
	v_mov_b16_e64 v152.l, v49.h
	v_and_b32_e32 v142, 1, v159
	v_and_b32_e32 v159, 1, v162
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v153, 1, v153
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v48, v48, v140 :: v_dual_and_b32 v157, 1, v157
	v_dual_sub_f32 v55, v55, v140 :: v_dual_mul_f32 v4, v4, v146
	v_dual_sub_f32 v59, v59, v140 :: v_dual_mul_f32 v6, v6, v146
	v_dual_sub_f32 v61, v61, v140 :: v_dual_mul_f32 v8, v8, v146
	v_sub_f32_e32 v35, v35, v140
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s25
	v_cndmask_b32_e64 v147, 0, v36, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v36, 1, v143
	v_and_b32_e32 v139, 1, v160
	v_and_b32_e32 v146, 1, v158
	v_and_b32_e32 v158, 1, v161
	v_mov_b16_e64 v143.l, v40.h
	v_and_b32_e32 v152, 1, v152
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v60, v60, v140
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s26
	v_cndmask_b32_e64 v46, 0, v46, s27
	v_cndmask_b32_e64 v50, 0, v50, s29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v38, v38
	v_cmp_o_f32_e64 s22, v37, v37
	v_cmp_o_f32_e64 s23, v39, v39
	v_cmp_o_f32_e64 s24, v41, v41
	v_cmp_o_f32_e64 s25, v43, v43
	v_cmp_o_f32_e64 s26, v45, v45
	v_cmp_o_f32_e64 s27, v47, v47
	v_cmp_o_f32_e64 s29, v49, v49
	v_add3_u32 v36, v38, v36, 0x7fff
	v_add3_u32 v37, v37, v139, 0x7fff
	v_add3_u32 v38, v39, v142, 0x7fff
	v_add3_u32 v39, v41, v146, 0x7fff
	v_add3_u32 v41, v43, v158, 0x7fff
	v_add3_u32 v43, v45, v159, 0x7fff
	v_add3_u32 v45, v47, v157, 0x7fff
	v_add3_u32 v47, v49, v152, 0x7fff
	v_and_b32_e32 v49, 1, v143
	v_mov_b16_e64 v143.l, v42.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v62, v140
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v139.l, 0x7fff, v37.h, s22
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v48, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v37, 1, v143
	v_mov_b16_e64 v143.l, v44.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v40, v40
	v_cmp_o_f32_e64 s20, v42, v42
	v_cndmask_b16 v139.h, 0x7fff, v36.h, s21
	v_add3_u32 v36, v40, v49, 0x7fff
	v_add3_u32 v40, v42, v37, 0x7fff
	v_and_b32_e32 v42, 1, v143
	v_mov_b16_e64 v143.l, v46.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v63, 0, v63, s13
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v144.l, v35.h
	v_cndmask_b16 v43.l, 0x7fff, v41.h, s25
	v_cndmask_b16 v41.h, 0x7fff, v40.h, s20
	v_add3_u32 v40, v44, v42, 0x7fff
	v_and_b32_e32 v42, 1, v143
	v_mov_b16_e64 v143.l, v48.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v64, v140
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v59, v59
.Ltmp30:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v160, v34
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v149.l, v63.h
	v_and_b32_e32 v144, 1, v144
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s8
.Ltmp32:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v160, v160 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v56, v56, v140 :: v_dual_and_b32 v149, 1, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s38, v35, v35
	v_add3_u32 v35, v35, v144, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v59, s10
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v151.l, v55.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v52, v140
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v35.l, 0x7fff, v38.h, s23
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v160, v160
.Ltmp35:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s37, v63, v63
	v_add3_u32 v63, v63, v149, 0x7fff
	v_mov_b16_e64 v155.l, v59.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v54, v54, v140 :: v_dual_and_b32 v151, 1, v151
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v39.h, s24
	v_cndmask_b16 v63.l, 0x7fff, v35.h, s38
	v_permlanex16_b32 v39, v139, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s28
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v38
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v44, v44
	v_and_b32_e32 v155, 1, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v54
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v36, v39, v139, v133
	v_perm_b32 v37, v39, v139, v136
	v_permlanex16_b32 v39, v35, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v44, v34
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s30
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s18, v46, v46
	v_mov_b16_e64 v145.l, v33.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v58, v58, v140
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v38, v39, v35, v133
	v_perm_b32 v39, v39, v35, v136
	v_permlanex16_b32 v35, v41, s75, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v139, 1, v143
	v_mov_b16_e64 v143.l, v50.h
	v_add3_u32 v42, v46, v42, 0x7fff
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v54, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v48, v48
	v_and_b32_e32 v145, 1, v145
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v58, v58
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v45.l, 0x7fff, v43.h, s26
	v_cndmask_b16 v47.l, 0x7fff, v45.h, s27
	v_cndmask_b16 v43.h, 0x7fff, v40.h, s19
	v_perm_b32 v40, v35, v41, v133
	v_add3_u32 v48, v48, v139, 0x7fff
	v_and_b32_e32 v139, 1, v143
	v_mov_b16_e64 v143.l, v52.h
	v_perm_b32 v41, v35, v41, v136
	v_cndmask_b16 v45.h, 0x7fff, v42.h, s18
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v44, v44
.Ltmp43:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v56, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v50, v50
	v_cndmask_b16 v49.l, 0x7fff, v47.h, s29
	v_permlanex16_b32 v46, v43, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v47.h, 0x7fff, v48.h, s17
	v_and_b32_e32 v48, 1, v143
	v_mov_b16_e64 v143.l, v54.h
	v_add3_u32 v44, v50, v139, 0x7fff
	v_permlanex16_b32 v50, v45, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v35
.Ltmp45:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s9
	v_cndmask_b32_e64 v58, 0, v58, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v42, v46, v43, v133
	v_perm_b32 v43, v46, v43, v136
	v_permlanex16_b32 v35, v47, s75, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v46, 1, v143
	v_cndmask_b16 v49.h, 0x7fff, v44.h, s16
	v_perm_b32 v44, v50, v45, v133
	v_perm_b32 v45, v50, v45, v136
	v_mov_b16_e64 v143.l, v56.h
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v50, v34
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v51, v51
	v_cmp_o_f32_e64 s14, v52, v52
	v_cmp_o_f32_e64 s13, v54, v54
	v_mov_b16_e64 v150.l, v57.h
	v_add3_u32 v51, v51, v153, 0x7fff
	v_add3_u32 v48, v52, v48, 0x7fff
	v_add3_u32 v52, v54, v46, 0x7fff
	v_perm_b32 v46, v35, v47, v133
	v_permlanex16_b32 v54, v49, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v47, v35, v47, v136
	v_and_b32_e32 v35, 1, v143
	v_mov_b16_e64 v143.l, v58.h
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v55, v55
	v_cmp_o_f32_e64 s15, v56, v56
	v_and_b32_e32 v150, 1, v150
	v_add3_u32 v55, v55, v151, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s30
	v_cndmask_b16 v51.h, 0x7fff, v48.h, s14
	v_perm_b32 v48, v54, v49, v133
	v_perm_b32 v49, v54, v49, v136
	v_add3_u32 v35, v56, v35, 0x7fff
	v_and_b32_e32 v54, 1, v143
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v56, v50, v50
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v57, v57
	v_cmp_o_f32_e64 s12, v58, v58
	v_add3_u32 v57, v57, v150, 0x7fff
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s33
	v_cndmask_b16 v55.h, 0x7fff, v35.h, s15
	v_add3_u32 v35, v58, v54, 0x7fff
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v56
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s34
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v61, v61
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v57.h, 0x7fff, v35.h, s12
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v168, v34
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v62, v62
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v64, v64
	v_cmp_o_f32_e64 s39, v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v17, v35
	v_sub_f32_e32 v19, v19, v35
	v_sub_f32_e32 v18, v18, v35
	v_sub_f32_e32 v20, v20, v35
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s5
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v20, v20
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v61, 0, v61, s11
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v154.l, v53.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v60, 0, v60, s35
	v_cndmask_b32_e64 v62, 0, v62, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v59, v59
	v_mov_b16_e64 v156.l, v61.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s7
	v_cndmask_b32_e64 v19, 0, v19, s6
	v_cndmask_b32_e64 v18, 0, v18, s2
	v_cndmask_b32_e64 v20, 0, v20, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v154, 1, v154
	v_mov_b16_e64 v143.l, v60.h
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v17, v17, v19
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v60, v60
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v18, v18, v20
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v156, 1, v156
	v_and_b32_e32 v54, 1, v143
	v_mov_b16_e64 v143.l, v62.h
	v_add3_u32 v59, v59, v155, 0x7fff
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v17, v17, v18
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v145, 0x7fff
	v_add3_u32 v58, v60, v54, 0x7fff
	v_and_b32_e32 v60, 1, v143
	v_mov_b16_e64 v143.l, v64.h
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v18, v17
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s35
	v_cndmask_b16 v59.h, 0x7fff, v58.h, s11
	v_add3_u32 v58, v62, v60, 0x7fff
	v_and_b32_e32 v60, 1, v143
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.l, v147.h
	v_cndmask_b16 v162.l, 0x7fff, v33.h, s39
	v_cmp_o_f32_e64 s31, v53, v53
	v_add3_u32 v60, v64, v60, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v17, v17, v18 :: v_dual_and_b32 v64, 1, v143
.Ltmp65:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.l, v148.h
	v_cmp_o_f32_e64 s36, v61, v61
	v_cndmask_b16 v33.h, 0x7fff, v60.h, s9
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v18, v17
.Ltmp67:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v147, v147
	v_and_b32_e32 v60, 1, v143
	v_cmp_o_f32_e64 s5, v148, v148
	v_add3_u32 v53, v53, v154, 0x7fff
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v61, v61, v156, 0x7fff
	v_add3_u32 v64, v147, v64, 0x7fff
	v_add3_u32 v60, v148, v60, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v9, v78
	ds_load_u16_d16 v10, v78 offset:256
	ds_load_u16_d16 v11, v78 offset:512
	ds_load_u16_d16 v12, v78 offset:768
	ds_load_u16_d16 v13, v78 offset:1024
	ds_load_u16_d16 v14, v78 offset:1280
	ds_load_u16_d16 v15, v78 offset:1536
	ds_load_u16_d16 v16, v78 offset:1792
	ds_load_u16_d16 v146, v78 offset:2048
	ds_load_u16_d16 v147, v78 offset:2304
	ds_load_u16_d16 v148, v78 offset:2560
	ds_load_u16_d16 v149, v78 offset:2816
	ds_load_u16_d16 v150, v78 offset:3072
	ds_load_u16_d16 v151, v78 offset:3328
	ds_load_u16_d16 v152, v78 offset:3584
	ds_load_u16_d16 v153, v78 offset:3840
	ds_load_u16_d16 v154, v78 offset:4096
	ds_load_u16_d16 v155, v78 offset:4352
	ds_load_u16_d16 v156, v78 offset:4608
	ds_load_u16_d16 v157, v78 offset:4864
	ds_load_u16_d16 v158, v78 offset:5120
	ds_load_u16_d16 v159, v78 offset:5376
	ds_load_u16_d16 v160, v78 offset:5632
	ds_load_u16_d16 v161, v78 offset:5888
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v17, v17, v18
.Ltmp71:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v9, v78 offset:128
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v10, v78 offset:384
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v11, v78 offset:640
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v12, v78 offset:896
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v13, v78 offset:1152
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v14, v78 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v15, v78 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v16, v78 offset:1920
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s31
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v18, v17
.Ltmp73:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v53.h, 0x7fff, v52.h, s13
	v_cmp_o_f32_e64 s10, v62, v62
	v_permlanex16_b32 v52, v51, s75, 0xfedcba98 op_sel:[1,0]
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v141, v34
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v139, v53, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v61.l, 0x7fff, v61.h, s36
	v_perm_b32 v50, v52, v51, v133
	v_perm_b32 v51, v52, v51, v136
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v17, v17, v18
.Ltmp77:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v52, v139, v53, v133
	v_perm_b32 v53, v139, v53, v136
	v_permlanex16_b32 v56, v55, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v139, v57, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v19, v17 :: v_dual_sub_f32 v62, v166, v34
.Ltmp79:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v61.h, 0x7fff, v58.h, s10
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[36:43], v[1:8]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v9, v78 offset:6144
	ds_load_u16_d16 v10, v78 offset:6400
	ds_load_u16_d16 v11, v78 offset:6656
	ds_load_u16_d16 v12, v78 offset:6912
	ds_load_u16_d16 v13, v78 offset:7168
	ds_load_u16_d16 v14, v78 offset:7424
	ds_load_u16_d16 v15, v78 offset:7680
	ds_load_u16_d16 v16, v78 offset:7936
	ds_load_u16_d16_hi v146, v78 offset:2176
	ds_load_u16_d16_hi v147, v78 offset:2432
	ds_load_u16_d16_hi v148, v78 offset:2688
	ds_load_u16_d16_hi v149, v78 offset:2944
	ds_load_u16_d16_hi v150, v78 offset:3200
	ds_load_u16_d16_hi v151, v78 offset:3456
	ds_load_u16_d16_hi v152, v78 offset:3712
	ds_load_u16_d16_hi v153, v78 offset:3968
	ds_load_u16_d16_hi v154, v78 offset:4224
	ds_load_u16_d16_hi v155, v78 offset:4480
	ds_load_u16_d16_hi v156, v78 offset:4736
	ds_load_u16_d16_hi v157, v78 offset:4992
	ds_load_u16_d16_hi v158, v78 offset:5248
	ds_load_u16_d16_hi v159, v78 offset:5504
	ds_load_u16_d16_hi v160, v78 offset:5760
	ds_load_u16_d16_hi v161, v78 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v9, v78 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v10, v78 offset:6528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v11, v78 offset:6784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v12, v78 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v13, v78 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v14, v78 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v15, v78 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v16, v78 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v33.l, 0x7fff, v63.h, s37
	v_perm_b32 v54, v56, v55, v133
	v_perm_b32 v55, v56, v55, v136
	v_perm_b32 v56, v139, v57, v133
	v_permlanex16_b32 v141, v59, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v57, v139, v57, v136
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v62, v62
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v139, v61, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v63.h, 0x7fff, v64.h, s8
	v_cndmask_b16 v162.h, 0x7fff, v60.h, s5
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v166
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v58, v141, v59, v133
	v_perm_b32 v59, v141, v59, v136
	v_perm_b32 v141, v139, v61, v133
	v_perm_b32 v142, v139, v61, v136
	v_permlanex16_b32 v61, v33, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v63, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v162, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[146:153], v[44:51], v[1:8]
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v62, 0, v62, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v143, v61, v33, v133
	v_perm_b32 v144, v61, v33, v136
	v_perm_b32 v145, v18, v63, v133
	v_perm_b32 v146, v18, v63, v136
	v_perm_b32 v147, v20, v162, v133
	v_perm_b32 v148, v20, v162, v136
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v17, v17, v19
.Ltmp83:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[154:161], v[52:59], v[1:8]
	v_mov_b32_e32 v139, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v17, v169, v62
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[141:148], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v17, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v70
	s_mov_b32 s1, 0x76543210
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp85:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v34 :: v_dual_cndmask_b32 v12, 0, v17
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v69
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s54, s54, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v21, v67
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v10, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v11, 28, v72
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v2, 0, v2
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_add_nc_u32 v11, 0, v11
.Ltmp90:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_max_f32 v9, v9, v10
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v10, v71, 2, 0
.Ltmp93:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s41, s54
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v11, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v10
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v12
.Ltmp96:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_cndmask_b32 v13, 0, v5
	v_dual_mov_b32 v6, v3 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_barrier
	ds_load_b32 v10, v10
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e32 v15, 0, v7, vcc_lo
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v4
	v_add_f32_e32 v3, v3, v6
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v9
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v7, v9 :: v_dual_add_f32 v2, v2, v5
.Ltmp107:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v2
	v_mov_b32_e32 v18, v14
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v16
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v8
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v7, v7
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v7, v1
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v19, v15 :: v_dual_max_f32 v4, v4, v6
.Ltmp114:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, v10
.Ltmp115:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v9
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v18
.Ltmp118:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp121:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v3
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v5, v10, v5 :: v_dual_mov_b32 v16, v12
.Ltmp124:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp125:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v11
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v11, v2 :: v_dual_mov_b32 v20, v8
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v18 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v3
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v16
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v7, v5 :: v_dual_add_f32 v2, v2, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp138:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_add_f32 v4, v3, v17
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp140:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v13
.Ltmp142:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v7
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v10 :: v_dual_mov_b32 v10, v7
	v_dual_add_f32 v13, v13, v17 :: v_dual_mov_b32 v16, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp148:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_add_f32 v18, v8, v20
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v22, v18
.Ltmp150:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v12, v16 :: v_dual_add_f32 v13, v13, v17
	v_add_f32_e32 v17, v15, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v12, v8 :: v_dual_mov_b32 v15, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v15
	v_add_f32_e32 v16, v17, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v18, v22
	v_add_f32_e32 v15, v14, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v16 :: v_dual_mov_b32 v20, v17
	v_mov_b32_e32 v18, v15
	v_mov_b32_e32 v14, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp156:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp158:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp160:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp161:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v13, v14 :: v_dual_lshlrev_b32 v9, 2, v0
	v_add_f32_e32 v15, v15, v18
	v_dual_add_f32 v6, v4, v6 :: v_dual_add_f32 v5, v2, v5
	v_dual_add_f32 v7, v8, v12 :: v_dual_and_b32 v2, 0xc0, v9
.Ltmp162:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v8, 0xe0, v66
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v1, v3 :: v_dual_and_b32 v1, 28, v66
.Ltmp164:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 32, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 0, v2
	v_add_nc_u32_e32 v8, 0, v8
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v17, v20 :: v_dual_add_f32 v16, v16, v19
.Ltmp166:
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v0, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v2, v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[14:17] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v0
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e64 s0, 0, v65
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[52:55], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp167:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 193
		.amdhsa_next_free_sgpr 77
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 193
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10308
; TotalNumSgprs: 79
; NumVgprs: 193
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 79
; NumVGPRsForWavesPerEU: 193
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
	.short	1031                            ; DW_AT_call_line
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
	.short	1032                            ; DW_AT_call_line
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
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
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     193
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
