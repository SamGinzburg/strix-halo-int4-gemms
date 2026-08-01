	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
	v_and_b32_e32 v40, 15, v0
	v_lshrrev_b32_e32 v9, 4, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x7c
	s_load_b32 s19, s[0:1], 0x84
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 1, v40
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v35, 0xc0, v0
	v_lshlrev_b32_e32 v36, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v38, 31, v0
	v_and_b32_e32 v41, 0xf0, v0
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v42, 7, v0
	v_lshrrev_b32_e32 v43, 3, v0
	v_lshlrev_b32_e32 v37, 2, v0
	v_lshlrev_b32_e32 v39, 5, v0
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
	v_lshrrev_b32_e32 v4, 3, v35
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s4, s4, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v4, v36, v4, 0
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
	v_or_b32_e32 v3, s18, v40
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s12, v40, 1
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	v_and_b32_e32 v12, 30, v0
	v_lshlrev_b32_e32 v15, 3, v38
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e64 s2, 1, v3
	v_and_b32_e32 v17, 16, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v20, 0x7632 :: v_dual_lshlrev_b32 v21, 2, v40
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	v_dual_mov_b32 v19, 0x5410 :: v_dual_add_nc_u32 v4, s19, v1
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v16, 3, v40
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_and_b32 v5, 24, v36
	v_lshrrev_b32_e32 v18, 1, v41
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v10, v3, s[56:59], 0 offen
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v3, 3, v42
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v46, s16, v4
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v47, s17, v4
	v_lshl_or_b32 v48, v40, 8, v15
	v_cmp_eq_u32_e64 s2, 0, v17
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[23:24], null, s43, v43, v[3:4]
	v_mov_b32_e32 v4, v1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s43, v3
	v_mov_b32_e32 v3, v1
	v_lshl_or_b32 v15, v41, 4, v16
	v_lshrrev_b32_e32 v6, 1, v0
	v_and_b32_e32 v7, 0xe0, v0
	v_dual_mov_b32 v133, 0xff800000 :: v_dual_lshlrev_b32 v8, 1, v35
	v_lshlrev_b32_e32 v25, 4, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v27, v40, 5, v5
	v_cndmask_b32_e64 v16, 0x1054, v19, s2
	v_xor_b32_e32 v15, v15, v18
	v_cndmask_b32_e64 v18, 0x3276, v20, s2
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s2, s12, 0x3fb8aa3b
	.loc	1 822 49                        ; attention.py:822:49
	v_lshlrev_b32_e32 v11, 3, v0
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v26, 0x60, v0
	v_dual_mov_b32 v17, v1 :: v_dual_and_b32 v28, 24, v6
	v_lshl_or_b32 v32, v38, 2, v8
	v_add_nc_u32_e32 v50, 0, v25
	v_mov_b32_e32 v6, v1
	v_lshrrev_b32_e32 v29, 3, v7
	v_lshrrev_b32_e32 v31, 4, v7
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v24, 16, v27
	v_xor_b32_e32 v25, 24, v27
	v_xor_b32_e32 v19, 8, v27
	v_dual_mov_b32 v135, 0xff800000 :: v_dual_lshlrev_b32 v14, 6, v0
	v_add3_u32 v49, 0, v2, v26
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v7, v1 :: v_dual_and_b32 v22, 24, v11
	v_add_nc_u32_e32 v78, 0, v27
	v_xor_b32_e32 v11, v11, v28
	v_xor_b32_e32 v79, v37, v29
	v_xor_b32_e32 v81, v32, v31
	v_xor_b32_e32 v26, 32, v48
	v_xor_b32_e32 v27, 40, v48
	v_xor_b32_e32 v28, 48, v48
	v_xor_b32_e32 v29, 56, v48
	v_xor_b32_e32 v31, 0x48, v48
	v_add_nc_u32_e32 v84, 0, v24
	v_add_nc_u32_e32 v85, 0, v25
	v_add_nc_u32_e32 v83, 0, v19
	v_dual_mov_b32 v8, v1 :: v_dual_and_b32 v13, 0x380, v39
	v_and_b32_e32 v14, 64, v14
	v_add_nc_u32_e32 v90, 0, v26
	v_add_nc_u32_e32 v91, 0, v27
	v_add_nc_u32_e32 v92, 0, v28
	v_add_nc_u32_e32 v93, 0, v29
	v_add_nc_u32_e32 v95, 0, v31
	v_or3_b32 v82, v14, v13, v12
	v_lshl_or_b32 v16, v16, 8, v16
	v_lshl_or_b32 v18, v18, 8, v18
	v_xor_b32_e32 v32, 0x50, v48
	v_xor_b32_e32 v33, 0x58, v48
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s73, s3, 11
	v_and_b32_e32 v16, 0x540054, v16
	v_and_or_b32 v44, v9, 1, s73
	v_add_nc_u32_e32 v96, 0, v32
	v_add_nc_u32_e32 v97, 0, v33
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[32:33], null, s15, v9, v[21:22]
	v_or3_b32 v45, s73, v9, 62
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s9, s1, -8
	v_xor_b32_e32 v13, 16, v48
	v_xor_b32_e32 v14, 24, v48
	v_xor_b32_e32 v98, 0x60, v48
	v_xor_b32_e32 v99, 0x68, v48
	v_xor_b32_e32 v100, 0x70, v48
	v_xor_b32_e32 v101, 0x78, v48
	v_xor_b32_e32 v19, 0x420, v79
	v_xor_b32_e32 v119, 0x210, v81
	v_xor_b32_e32 v120, 4, v82
	v_xor_b32_e32 v121, 8, v82
	v_xor_b32_e32 v122, 12, v82
	v_xor_b32_e32 v123, 16, v82
	v_xor_b32_e32 v124, 20, v82
	v_xor_b32_e32 v125, 24, v82
	v_xor_b32_e32 v126, 28, v82
	v_add_nc_u32_e32 v86, 0, v11
	v_lshl_or_b32 v11, v16, 4, v16
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s1, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s9, s3, s9
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s13, s8
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s9, s14, s9
	v_or_b32_e32 v51, 8, v44
	v_or_b32_e32 v52, 10, v44
	v_or_b32_e32 v53, 12, v44
	v_or_b32_e32 v54, 14, v44
	v_or_b32_e32 v55, 16, v44
	v_or_b32_e32 v56, 18, v44
	v_or_b32_e32 v57, 20, v44
	v_or_b32_e32 v58, 22, v44
	v_or_b32_e32 v59, 24, v44
	v_or_b32_e32 v60, 26, v44
	v_or_b32_e32 v61, 28, v44
	v_or_b32_e32 v62, 30, v44
	v_or_b32_e32 v63, 32, v44
	v_or_b32_e32 v64, 34, v44
	v_or_b32_e32 v65, 36, v44
	v_or_b32_e32 v66, 38, v44
	v_or_b32_e32 v67, 40, v44
	v_or_b32_e32 v68, 42, v44
	v_or_b32_e32 v69, 44, v44
	v_or_b32_e32 v70, 46, v44
	v_or_b32_e32 v71, 48, v44
	v_or_b32_e32 v72, 50, v44
	v_or_b32_e32 v73, 52, v44
	v_or_b32_e32 v74, 54, v44
	v_or_b32_e32 v75, 56, v44
	v_or_b32_e32 v76, 58, v44
	v_or_b32_e32 v77, 60, v44
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s1, s42, v22
	v_add_nc_u32_e32 v88, 0, v13
	v_add_nc_u32_e32 v89, 0, v14
	v_add_nc_u32_e32 v98, 0, v98
	v_add_nc_u32_e32 v99, 0, v99
	v_add_nc_u32_e32 v100, 0, v100
	v_add_nc_u32_e32 v101, 0, v101
	v_add_nc_u32_e32 v102, 0, v15
	v_add_nc_u32_e32 v103, 0, v19
	v_add_nc_u32_e32 v119, 0, v119
	v_add_nc_u32_e32 v120, 0, v120
	v_add_nc_u32_e32 v121, 0, v121
	v_add_nc_u32_e32 v122, 0, v122
	v_add_nc_u32_e32 v123, 0, v123
	v_add_nc_u32_e32 v124, 0, v124
	v_add_nc_u32_e32 v125, 0, v125
	v_add_nc_u32_e32 v126, 0, v126
	v_and_b32_e32 v127, 0x5040504, v11
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v128, 1, v32
	v_add_nc_u32_e32 v129, 2, v32
	v_add_nc_u32_e32 v132, 3, v32
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
	v_lshlrev_b32_e32 v30, 1, v12
	v_xor_b32_e32 v12, 8, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v131, s2, v10
	v_lshl_or_b32 v80, v38, 6, v30
	v_xor_b32_e32 v30, 64, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v87, 0, v12
	v_and_b32_e32 v12, 0x760076, v18
	v_xor_b32_e32 v24, 8, v80
	v_xor_b32_e32 v25, 12, v80
	v_add_nc_u32_e32 v94, 0, v30
	v_xor_b32_e32 v20, 4, v80
	v_xor_b32_e32 v107, 16, v80
	v_add_nc_u32_e32 v105, 0, v24
	v_add_nc_u32_e32 v106, 0, v25
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[24:25], v78
	ds_load_b64 v[26:27], v83
	ds_load_b64 v[28:29], v84
	ds_load_b64 v[30:31], v85
	v_xor_b32_e32 v108, 20, v80
	v_xor_b32_e32 v109, 24, v80
	v_xor_b32_e32 v110, 28, v80
	v_xor_b32_e32 v111, 32, v80
	v_xor_b32_e32 v112, 36, v80
	v_xor_b32_e32 v113, 40, v80
	v_xor_b32_e32 v114, 44, v80
	v_xor_b32_e32 v115, 48, v80
	v_xor_b32_e32 v116, 52, v80
	v_xor_b32_e32 v117, 56, v80
	v_xor_b32_e32 v118, 60, v80
	v_lshl_or_b32 v9, v12, 4, v12
	v_add_nc_u32_e32 v104, 0, v20
	v_add_nc_u32_e32 v107, 0, v107
	v_add_nc_u32_e32 v108, 0, v108
	v_add_nc_u32_e32 v109, 0, v109
	v_add_nc_u32_e32 v110, 0, v110
	v_add_nc_u32_e32 v111, 0, v111
	v_add_nc_u32_e32 v112, 0, v112
	v_add_nc_u32_e32 v113, 0, v113
	v_add_nc_u32_e32 v114, 0, v114
	v_add_nc_u32_e32 v115, 0, v115
	v_add_nc_u32_e32 v116, 0, v116
	v_add_nc_u32_e32 v117, 0, v117
	v_add_nc_u32_e32 v118, 0, v118
	v_and_b32_e32 v130, 0x7060706, v9
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v18, 2, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s11, s55, s73
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v33, 2, v21
	v_or_b32_e32 v138, 1, v21
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v134, s55, v21
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v18, s11, v18
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v139, 3, v21
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s55, v33
	v_or_b32_e32 v138, s55, v138
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v134, v46
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[18:19], null, v18, s42, v[22:23]
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v134, v47
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v139, s55, v139
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v33, v46
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v33, v47
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v138, v46
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v138, v47
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s12, s76, s55
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s2, s4
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v139, v46
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v139, v47
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[18:19], v18, s[56:59], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v139, s12, v129, 1
	v_add_lshl_u32 v138, s12, v128, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s2, s5, s6
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v33, s12, v32, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s9, s10
	s_and_b32 s2, vcc_lo, s2
	s_and_b32 s6, vcc_lo, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s6
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s44 :: v_dual_mov_b32 v10, s45
	v_dual_mov_b32 v11, s46 :: v_dual_mov_b32 v12, s47
	v_dual_mov_b32 v13, s48 :: v_dual_mov_b32 v14, s49
	v_dual_mov_b32 v15, s50 :: v_dual_mov_b32 v16, s51
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s7, s8
	v_or_b32_e32 v175, 2, v44
	v_or_b32_e32 v176, 6, v44
	s_and_b32 s5, vcc_lo, s5
	v_or_b32_e32 v196, 4, v44
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v174, s55, v44, 1
	v_add_lshl_u32 v177, v52, s55, 1
	v_add_lshl_u32 v179, v56, s55, 1
	v_add_lshl_u32 v191, v60, s55, 1
	v_add_lshl_u32 v193, v64, s55, 1
	v_add_lshl_u32 v194, v66, s55, 1
	v_add_lshl_u32 v195, v68, s55, 1
	v_add_lshl_u32 v197, v70, s55, 1
	v_add_lshl_u32 v178, v54, s55, 1
	v_add_lshl_u32 v181, v58, s55, 1
	v_add_lshl_u32 v192, v62, s55, 1
	v_add_lshl_u32 v198, v51, s55, 1
	v_add_lshl_u32 v199, v72, s55, 1
	v_add_lshl_u32 v200, v53, s55, 1
	v_add_lshl_u32 v201, v74, s55, 1
	v_add_lshl_u32 v202, v55, s55, 1
	v_add_lshl_u32 v203, v57, s55, 1
	v_add_lshl_u32 v204, v76, s55, 1
	v_add_lshl_u32 v205, v59, s55, 1
	v_add_lshl_u32 v206, s55, v45, 1
	v_add_lshl_u32 v207, v61, s55, 1
	v_add_lshl_u32 v208, v63, s55, 1
	v_add_lshl_u32 v209, v65, s55, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, 0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v133
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v135, v135, v135
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v86, v[18:19]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x2
	buffer_load_u16 v139, v139, s[60:63], 0 offen
	buffer_load_u16 v138, v138, s[60:63], 0 offen
	buffer_load_u16 v33, v33, s[60:63], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[154:157], v78 offset1:1
	ds_load_2addr_stride64_b64 v[158:161], v78 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[162:165], v83 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[140:147], v[154:155], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[148:155], v[156:157], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[158:159], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[160:161], v[24:25], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v83 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v84 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[140:147], v[162:163], v[26:27], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[148:155], v[164:165], v[26:27], v[148:155] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v156, v67, s55, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[9:10], v[26:27], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[11:12], v[26:27], v[183:190] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v84 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[140:147], v[13:14], v[28:29], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[148:155], v[15:16], v[28:29], v[148:155] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v85 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[9:10], v[28:29], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[11:12], v[28:29], v[183:190] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v85 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[148:155], v[15:16], v[30:31], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[13:14], v[30:31], v[140:147] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v16, v154
	v_cvt_f32_i32_e32 v154, v155
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v15, v152
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v152, v176, s55, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v164, v140
	v_cvt_f32_i32_e32 v182, v142
	v_cvt_f32_i32_e32 v142, v143
	v_cvt_f32_i32_e32 v180, v144
	v_cvt_f32_i32_e32 v210, v145
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v140, v69, s55, 1
	v_add_lshl_u32 v145, v71, s55, 1
	v_add_lshl_u32 v144, v73, s55, 1
	v_add_lshl_u32 v143, v75, s55, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v165, v146
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[9:10], v[30:31], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[11:12], v[30:31], v[183:190] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v146, v147
	v_cvt_f32_i32_e32 v147, v149
	v_cvt_f32_i32_e32 v211, v153
	v_cvt_f32_i32_e32 v18, v166
	v_cvt_f32_i32_e32 v166, v167
	v_cvt_f32_i32_e32 v19, v168
	v_cvt_f32_i32_e32 v13, v172
	v_cvt_f32_i32_e32 v214, v173
	v_cvt_f32_i32_e32 v137, v183
	v_cvt_f32_i32_e32 v136, v185
	v_cvt_f32_i32_e32 v9, v186
	v_cvt_f32_i32_e32 v12, v187
	v_cvt_f32_i32_e32 v11, v189
	v_cvt_f32_i32_e32 v185, v190
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v149, v77, s55, 1
	v_add_lshl_u32 v153, v196, s55, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v157, v148
	v_cvt_f32_i32_e32 v14, v150
	v_cvt_f32_i32_e32 v148, v151
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v150, 0, v79
	v_add_nc_u32_e32 v151, 0, v80
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v215, v184
	v_cvt_f32_i32_e32 v10, v188
	v_cvt_f32_i32_e32 v212, v169
	v_cvt_f32_i32_e32 v20, v170
	v_cvt_f32_i32_e32 v213, v171
	v_mul_f32_e32 v9, v131, v9
	v_mul_f32_e32 v19, v131, v19
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v155.h, 0xff80, v139.l, s2
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v139, v175, s55, 1
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v155.l, 0xff80, v33.l, s4
	v_add_lshl_u32 v33, s12, v132, 1
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s55, s55, 64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v134.h, v155.l
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	buffer_load_u16 v167, v33, s[60:63], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v168, v174, s[64:67], 0 offen
	buffer_load_u16 v139, v139, s[64:67], 0 offen
	buffer_load_u16 v152, v152, s[64:67], 0 offen
	buffer_load_u16 v172, v177, s[64:67], 0 offen
	buffer_load_u16 v173, v178, s[64:67], 0 offen
	buffer_load_u16 v174, v179, s[64:67], 0 offen
	buffer_load_u16 v175, v181, s[64:67], 0 offen
	buffer_load_u16 v176, v191, s[64:67], 0 offen
	buffer_load_u16 v186, v192, s[64:67], 0 offen
	buffer_load_u16 v193, v193, s[64:67], 0 offen
	buffer_load_u16 v194, v194, s[64:67], 0 offen
	buffer_load_u16 v195, v195, s[64:67], 0 offen
	buffer_load_u16 v196, v197, s[64:67], 0 offen
	buffer_load_u16 v197, v199, s[64:67], 0 offen
	buffer_load_u16 v189, v201, s[64:67], 0 offen
	buffer_load_u16 v190, v204, s[64:67], 0 offen
	buffer_load_u16 v191, v206, s[64:67], 0 offen
	buffer_load_u16 v179, v200, s[64:67], 0 offen
	buffer_load_u16 v183, v198, s[64:67], 0 offen
	buffer_load_u16 v187, v153, s[64:67], 0 offen
	buffer_load_u16 v158, v207, s[64:67], 0 offen
	buffer_load_u16 v159, v205, s[64:67], 0 offen
	buffer_load_u16 v161, v203, s[64:67], 0 offen
	buffer_load_u16 v177, v202, s[64:67], 0 offen
	buffer_load_u16 v33, v140, s[64:67], 0 offen
	buffer_load_u16 v160, v156, s[64:67], 0 offen
	buffer_load_u16 v162, v209, s[64:67], 0 offen
	buffer_load_u16 v163, v208, s[64:67], 0 offen
	buffer_load_u16 v140, v149, s[64:67], 0 offen
	buffer_load_u16 v143, v143, s[64:67], 0 offen
	buffer_load_u16 v144, v144, s[64:67], 0 offen
	buffer_load_u16 v145, v145, s[64:67], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v192.l, 0xff80, v138.l, s6
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v153, v131, v164
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v134
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v134.h, v192.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v156, v131, v166
	v_mul_f32_e32 v18, v131, v18
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s4, s4, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v134
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, s6, s7
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(32)
	v_cndmask_b16 v192.h, 0xff80, v167.l, s5
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b32 v150, v155
	ds_store_b32 v103, v192
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v150, v151
	ds_load_b32 v188, v104
	ds_load_b32 v184, v105
	ds_load_b32 v181, v106
	ds_load_b32 v178, v107
	ds_load_b32 v169, v108
	ds_load_b32 v170, v109
	ds_load_b32 v171, v110
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v139, 16, v139
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v155.l, v134.l
	v_mov_b16_e64 v192.l, v134.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v155
	v_mov_b32_e32 v155, v17
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v10, v131, v10 :: v_dual_lshlrev_b32 v17, 16, v189
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v190, 16, v190
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v192
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s2, s2, s9
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(3)
	v_and_b32_e32 v164, 0xffff0000, v178
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v150.l
	v_lshlrev_b32_e32 v138, 16, v168
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s5, s5, s10
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v164, 0x3fb8aa3b, v164 :: v_dual_lshlrev_b32 v163, 16, v163
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v149, 0x3fb8aa3b, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v188.l
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s55, s72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v149, v153, v138 :: v_dual_mul_f32 v138, v131, v141
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v141, 0xffff0000, v150
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v150, 0x3fb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v150, v138, v139 :: v_dual_and_b32 v141, 0xffff0000, v188
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v138, v131, v142 :: v_dual_lshlrev_b32 v139, 16, v152
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v151, 0x3fb8aa3b, v141
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v142, v131, v154 :: v_dual_and_b32 v141, 0xffff0000, v184
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v154, 16, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v151, v138, v139 :: v_dual_lshlrev_b32 v186, 16, v193
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v152, 0x3fb8aa3b, v141
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v138, v131, v210 :: v_dual_lshlrev_b32 v139, 16, v172
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v152, v138, v139 :: v_dual_add_nc_u32 v193, 0, v82
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v138, v131, v146
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v146, 16, v174
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v141, 0xffff0000, v181
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v139, 16, v173
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b32 v174, v111
	v_mul_f32_e32 v153, 0x3fb8aa3b, v141
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v141, v131, v211
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v153, v138, v139
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v138, v131, v147
	v_mul_f32_e32 v139, v131, v148
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v148, 16, v176
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b32 v176, v113
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v164, v138, v146
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt lgkmcnt(4)
	v_and_b32_e32 v138, 0xffff0000, v169
	v_lshlrev_b32_e32 v147, 16, v175
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b32 v175, v112
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v169.h, v134.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v166, 0x3fb8aa3b, v138
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(4)
	v_and_b32_e32 v138, 0xffff0000, v170
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v170.h, v134.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v167, 0x3fb8aa3b, v138
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(3)
	v_and_b32_e32 v138, 0xffff0000, v171
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v171.h, v134.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v167, v141, v148 :: v_dual_mul_f32 v168, 0x3fb8aa3b, v138
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(2)
	v_and_b32_e32 v138, 0xffff0000, v174
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v166, v139, v147
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v139, v131, v212
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v141, 16, v194
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v174.h, v134.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v173, 0x3fb8aa3b, v138
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v173, v156, v186 :: v_dual_and_b32 v138, 0xffff0000, v175
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v138, 0x3fb8aa3b, v138
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v156, 16, v196
	v_lshlrev_b32_e32 v186, 16, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v138, v139, v141 :: v_dual_and_b32 v139, 0xffff0000, v176
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v141, v131, v213
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v139, 0x3fb8aa3b, v139 :: v_dual_fmac_f32 v168, v142, v154
	ds_load_b32 v172, v114
	ds_load_b32 v154, v115
	ds_load_b32 v148, v116
	ds_load_b32 v147, v117
	ds_load_b32 v146, v118
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v142, 16, v195
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v139, v141, v142
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v142, v131, v214 :: v_dual_and_b32 v141, 0xffff0000, v172
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.h, v134.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v141, 0x3fb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v141, v142, v156 :: v_dual_and_b32 v142, 0xffff0000, v154
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v156, v131, v215
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.h, v134.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v142, 0x3fb8aa3b, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v142, v156, v186
	v_mov_b32_e32 v156, v34
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v34, v131, v185 :: v_dual_and_b32 v185, 0xffff0000, v148
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v186, 0, v48
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.h, v134.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v185, 0x3fb8aa3b, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v185, v9, v17
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v17, 0xffff0000, v147
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v9, 0, 1, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v147.h, v134.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v189, 0x3fb8aa3b, v17
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v17, 0, 1, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v9.l, 8, v9.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v189, v10, v190
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v10, 0, 1, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v17.h, v10.l, v9.l
	v_cndmask_b32_e64 v10, 0, 1, s6
	v_lshlrev_b16 v9.l, 8, v17.l
	v_or_b16 v17.l, v10.l, v9.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v9, 0xffff0000, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.h, v134.l
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b16 v119, v17
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v190, 0x3fb8aa3b, v9
	v_mad_u64_u32 v[9:10], null, s11, s43, v[23:24]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, 0x3fb8aa3b, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v184.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v190, v34, v191
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v131, v182
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v182, 16, v187
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v10, v34, v182
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v131, v180
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v182, 16, v183
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v180, 0x3fb8aa3b, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v181.l
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v194, 0, v81
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v181, 16, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v160.h, v134.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v180, v34, v182
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v131, v165 :: v_dual_lshlrev_b32 v165, 16, v179
	v_mul_f32_e32 v179, 0x3fb8aa3b, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v178.l
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b16_d16_hi v194, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v179, v34, v165
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v131, v157
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v157, 16, v177
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v177, 0x3fb8aa3b, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v169.l
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v169, v123 offset:32
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v194, v9, s74, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v165.h, v134.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v177, v34, v157 :: v_dual_mul_f32 v34, v131, v14
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v14, v124
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v157, v131, v15
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v15, 16, v161
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v17, 0x3fb8aa3b, v134 :: v_dual_mul_f32 v16, v131, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v170.l
	v_lshlrev_b32_e32 v161, 16, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.h, v134.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v17, v34, v15
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v14, v125
	ds_load_u16_d16 v15, v193 offset:32
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, 0x3fb8aa3b, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v171.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v182, 0x3fb8aa3b, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v174.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v20, v131, v20
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v15.h, 1, v14.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v183, 0x3fb8aa3b, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v178, 16, v162
	v_mov_b16_e64 v134.h, v175.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v34, v157, v159
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16_hi v159, v123
	ds_load_u16_d16 v162, v126 offset:32
	v_cmp_eq_u16_e64 s8, 1, v15.h
	v_and_b16 v15.h, 1, v14.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v183, v18, v163
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v175, 0x3fb8aa3b, v134 :: v_dual_fmac_f32 v182, v16, v161
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16 v159, v121 offset:32
	ds_load_u16_d16 v160, v120 offset:32
	ds_load_u16_d16 v161, v193
	v_cmp_eq_u16_e64 s9, 1, v15.h
	v_lshrrev_b16 v15.h, 8, v15.l
	ds_load_u16_d16 v157, v120
	ds_load_u16_d16 v158, v122 offset:32
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v175, v19, v178
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v178, v131, v13
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v13.l, 8, v14.l
	v_and_b16 v15.h, 1, v15.h
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v193, 1, v9
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v163, v125 offset:32
	ds_load_u16_d16 v165, v124 offset:32
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v176.l
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v13.l, 1, v13.l
	v_cmp_eq_u16_e64 s7, 1, v15.h
	s_waitcnt lgkmcnt(6)
	v_lshrrev_b16 v15.h, 8, v159.h
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v163, v121
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v176, 0x3fb8aa3b, v134
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s11, 1, v13.l
	v_lshrrev_b16 v13.l, 8, v14.h
	v_and_b16 v15.h, 1, v15.h
	v_lshrrev_b16 v9.l, 8, v160.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v172.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v176, v20, v181
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v13.l, 1, v13.l
	v_cmp_eq_u16_e64 s10, 1, v15.h
	ds_load_u16_d16_hi v15, v126
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v14, 0xff800000, v166, s11
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s12, 1, v13.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v20, 0xff800000, v173, s7
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.h, 1, v158.l
	v_cmp_eq_u16_e64 s29, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v159.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v16, 0xff800000, v167, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.h, v134.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s34, 1, v9.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v187, 0xff800000, v138, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.h, v134.l
	v_mov_b16_e64 v162.h, v134.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s30, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v158.l
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v13.l, 8, v15.h
	v_and_b16 v15.h, 1, v15.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v139, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b16 v13.l, 1, v13.l
	v_cmp_eq_u16_e64 s14, 1, v15.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s23, 1, v9.l
	v_cmp_eq_u16_e64 s13, 1, v13.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v13, 0xff800000, v17, s8
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v17.l, 1, v15.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v15, 0xff800000, v34, s9
	v_cndmask_b32_e64 v34, 0xff800000, v164, s10
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v164, 0x3fb8aa3b, v134
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16_hi v134, v122
	v_lshrrev_b16 v9.l, 8, v169.l
	v_cmp_eq_u16_e64 s15, 1, v17.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v18, 0xff800000, v168, s13
	v_cndmask_b32_e64 v17, 0xff800000, v182, s14
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v166, v34, v13, v14
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v19, 0xff800000, v183, s15
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v164, v178, v33
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v15, v16, v17
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s24, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v165.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v167, v18, v19, v20
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	v_cndmask_b32_e64 v192, 0xff800000, v141, s23
	v_cndmask_b32_e64 v142, 0xff800000, v142, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v168, v166, v33, v167
.Ltmp8:
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v161.l
	v_lshrrev_b16 v161.l, 8, v161.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s25, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v163.l
	v_cmp_eq_u16_e64 s21, 1, v33.l
	v_and_b16 v33.l, 1, v157.l
	v_lshrrev_b16 v157.l, 8, v157.l
	v_and_b16 v161.l, 1, v161.l
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v166, 0xff800000, v149, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s19, 1, v33.l
	v_and_b16 v33.l, 1, v163.h
	v_and_b16 v157.l, 1, v157.l
	v_cmp_eq_u16_e64 s26, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v162.l
	v_cmp_eq_u16_e64 s28, 1, v161.l
	v_cmp_eq_u16_e64 s17, 1, v33.l
	v_and_b16 v33.l, 1, v134.h
	v_cmp_eq_u16_e64 s20, 1, v157.l
	v_and_b16 v9.l, 1, v9.l
	v_lshrrev_b16 v157.l, 8, v163.h
	v_lshrrev_b16 v134.h, 8, v134.h
	v_cmp_eq_u16_e64 s18, 1, v33.l
	v_and_b16 v33.l, 1, v159.h
	v_cmp_eq_u16_e64 s27, 1, v9.l
	v_and_b16 v9.l, 1, v160.l
	v_and_b16 v157.l, 1, v157.l
	v_and_b16 v134.h, 1, v134.h
	v_cmp_eq_u16_e64 s16, 1, v33.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v167, 0xff800000, v150, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s35, 1, v9.l
	v_and_b16 v9.l, 1, v159.l
	v_cmp_eq_u16_e64 s31, 1, v157.l
	v_cmp_eq_u16_e64 s22, 1, v134.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v154.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v177, s16
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s33, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v177, 0xff800000, v10, s19
	v_cndmask_b32_e64 v178, 0xff800000, v151, s20
	v_cndmask_b32_e64 v180, 0xff800000, v180, s17
	v_cndmask_b32_e64 v181, 0xff800000, v152, s31
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v173, 0x3fb8aa3b, v134
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v176, s33
	v_cndmask_b32_e64 v176, 0xff800000, v185, s25
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v131, v137
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v137, 16, v145
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v182, 0xff800000, v179, s18
	v_cndmask_b32_e64 v183, 0xff800000, v153, s22
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v148.l
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b64 v186, v[166:167]
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v173, v10, v137
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v166, v167
	v_max3_f32 v137, v178, v180, v181
.Ltmp10:
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v179, 0x3fb8aa3b, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v147.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v186, 0xff800000, v175, s35
	v_cndmask_b32_e64 v185, 0xff800000, v189, s26
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v10, v177, v137
	v_max3_f32 v137, v182, v183, v33
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v189, 0xff800000, v190, s27
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v9, v186, v187, v138
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b64 v87, v[177:178]
	ds_store_b64 v88, v[180:181]
	ds_store_b64 v89, v[182:183]
	ds_store_b64 v90, v[33:34]
	ds_store_b64 v91, v[13:14]
	ds_store_b64 v92, v[15:16]
	ds_store_b64 v93, v[17:18]
	ds_store_b64 v94, v[19:20]
	ds_store_b64 v95, v[186:187]
	ds_store_b64 v96, v[138:139]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.h, v134.l
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v168, v10, v137, v168
.Ltmp16:
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v131, v136
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v136, 16, v144
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v163.h, v134.l
	v_mov_b16_e64 v149.h, v134.l
	v_mov_b16_e64 v153.h, v134.l
	v_mov_b16_e64 v137.h, v134.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v179, v10, v136
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v131, v12
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v12, 16, v143
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v136, 0x3fb8aa3b, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v134.h, v146.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v145.h, v134.l
	v_mov_b16_e64 v143.h, v134.l
	v_mov_b16_e64 v150.h, v134.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v136, v10, v12
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v10, v131, v11 :: v_dual_lshlrev_b32 v11, 16, v140
	v_mul_f32_e32 v12, 0x3fb8aa3b, v134
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v191, 0xff800000, v164, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.h, v134.l
	v_mov_b16_e64 v140.h, v134.l
	v_mov_b16_e64 v152.h, v134.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v12, v10, v11
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v10.l, 1, v169.l
	v_and_b16 v10.h, 1, v165.l
	v_and_b16 v11.l, 1, v163.l
	v_and_b16 v11.h, 1, v162.l
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b64 v97, v[191:192]
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s36, 1, v10.l
	v_cmp_eq_u16_e64 s37, 1, v10.h
	v_cmp_eq_u16_e64 s38, 1, v11.l
	v_cmp_eq_u16_e64 s39, 1, v11.h
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v139, v191, v192
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, 0xff800000, v173, s36
	v_cndmask_b32_e64 v175, 0xff800000, v179, s37
	v_cndmask_b32_e64 v184, 0xff800000, v136, s38
	v_cndmask_b32_e64 v188, 0xff800000, v12, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.h, v134.l
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b64 v98, v[141:142]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v136, v141, v142, v175
.Ltmp20:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b64 v99, v[175:176]
	ds_store_b64 v100, v[184:185]
	ds_store_b64 v101, v[188:189]
	s_waitcnt lgkmcnt(0)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v136, v9, v10, v136
	v_max_f32_e32 v9, v176, v184
	v_max_f32_e32 v10, v188, v189
.Ltmp22:
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.h, v134.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v164, v9, v185, v10
.Ltmp24:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[9:12], v102 offset1:16
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v136, v168, v136, v164
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v164, v136, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v136, v133, v136, v164
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v173, v177, v136
	v_sub_f32_e32 v177, v181, v136
	v_sub_f32_e32 v179, v183, v136
	v_sub_f32_e32 v183, v14, v136
	v_sub_f32_e32 v195, v16, v136
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v14, v133, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v16, v177
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v164, v11, v11
.Ltmp29:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v196, v15, v136
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v173
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v14, v14
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v167, v167, v136
	v_sub_f32_e32 v181, v34, v136
	v_sub_f32_e32 v200, v19, v136
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v173, v195
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v16, s31
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v15, 0, v15, s19
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v14, 0, v14, s40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v171.l, v16.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v199, v20, v136
	v_sub_f32_e32 v189, v189, v136
	v_dual_sub_f32 v166, v166, v136 :: v_dual_mul_f32 v7, v7, v14
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v14
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v20, 1, v171
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v171, v183
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v197, v18, v136 :: v_dual_mul_f32 v8, v8, v14
	v_dual_sub_f32 v187, v187, v136 :: v_dual_mul_f32 v6, v6, v14
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v14
	v_mul_f32_e32 v2, v2, v14
	v_mul_f32_e32 v3, v3, v14
	v_mul_f32_e32 v5, v5, v14
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v170.l, v15.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v171, 0, v171, s11
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v177, v197
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v173, 0, v173, s12
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v16, v16
	v_and_b32_e32 v19, 1, v170
	v_mov_b16_e64 v157.l, v171.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v190, v13, v136
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v9, v9
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.l, v173.h
	v_cmp_o_f32_e64 s11, v173, v173
	v_and_b32_e32 v157, 1, v157
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v177, 0, v177, s13
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v13, v13, v164
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v159, 1, v159
	v_mov_b16_e64 v164.h, v134.l
	v_add3_u32 v157, v171, v157, 0x7fff
	v_mov_b16_e64 v161.l, v177.h
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v13, v13, v10, v12
.Ltmp35:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v201, v139, v136
	v_sub_f32_e32 v198, v17, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v159, v173, v159, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v14, v13 :: v_dual_and_b32 v161, 1, v161
.Ltmp37:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v17, 0x80000000, v194, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v183, v201
	v_exp_f32_e32 v189, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v177, v177
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v191, v191, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v161, v177, v161, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v14, v14, v14
.Ltmp41:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v168, v178, v136
	v_sub_f32_e32 v178, v180, v136
	v_sub_f32_e32 v180, v182, v136
	v_sub_f32_e32 v182, v33, v136
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v13, v14
.Ltmp43:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v167
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v156, v156
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v183, 0, v183, s30
	v_cndmask_b32_e64 v189, 0, v189, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.l, v183.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v169.l, v13.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v203, v142, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v13, v13
	v_mov_b16_e64 v142.h, v134.l
	v_mov_b16_e64 v142.l, v189.h
	v_and_b32_e32 v14, 1, v169
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v169, v181
	v_exp_f32_e32 v181, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v142, 1, v142
	v_add3_u32 v133, v13, v14, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v166
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v166, v16, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_add3_u32 v142, v189, v142, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v169, 0, v169, s10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v181, 0, v181, s29
	v_cndmask_b32_e64 v13, 0, v13, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v147.l, v169.h
	v_mov_b16_e64 v137.l, v181.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v202, v138, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.h, v134.l
	v_mov_b16_e64 v154.l, v13.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v175, v175, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v147, 1, v147
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v170, v182
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v137, 1, v137
	v_and_b32_e32 v14, 1, v154
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v175, v175
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v147, v169, v147, 0x7fff
	v_cmp_o_f32_e64 s21, v13, v13
	v_add3_u32 v137, v181, v137, 0x7fff
	v_add3_u32 v139, v13, v14, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v14, v168
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v13, 0x80000000, v193, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v170, 0, v170, s16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v175, 0, v175, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.l, v170.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v14, 0, v14, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v153.l, v175.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v184, v184, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v15, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e64 v146.l, v14.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v185, v185, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v153, 1, v153
	v_cmp_o_f32_e64 s19, v14, v14
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v184, v184
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v18, 1, v146
	v_add3_u32 v146, v15, v19, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v179
	v_exp_f32_e32 v179, v199
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v153, v175, v153, 0x7fff
	v_add3_u32 v154, v14, v18, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v18, v178
	v_exp_f32_e32 v178, v198
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[13:16], v13, s[68:71], 0 offen
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v184, 0, v184, s38
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v185, v185
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s38, v189, v189
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v19, 0, v19, s22
	v_cndmask_b32_e64 v179, 0, v179, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v169, v169
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v169, v33
.Ltmp45:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v18, 0, v18, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v165.l, v19.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v178, 0, v178, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v163.l, v179.h
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v169, v169 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.l, v18.h
	v_and_b32_e32 v165, 1, v165
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v20, v180
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.l, v178.h
	v_and_b32_e32 v163, 1, v163
	v_and_b32_e32 v167, 1, v172
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v172, v190
	v_exp_f32_e32 v180, v200
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v162, 1, v162
	v_cmp_o_f32_e64 s14, v178, v178
	v_cmp_o_f32_e64 s17, v18, v18
	v_add3_u32 v165, v19, v165, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v20, 0, v20, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v162, v178, v162, 0x7fff
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v178, v169, v169
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v148, 1, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v172, 0, v172, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v174.l, v20.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v180, 0, v180, s15
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v178
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v170, v170
	v_mov_b16_e64 v158.l, v172.h
	v_and_b32_e32 v168, 1, v174
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v174, v196
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v149.l, v180.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v186, v186, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v158, 1, v158
	v_cmp_o_f32_e64 s10, v172, v172
	v_add3_u32 v148, v170, v148, 0x7fff
	v_and_b32_e32 v149, 1, v149
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v182, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v158, v172, v158, 0x7fff
	v_add3_u32 v167, v18, v167, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v174, 0, v174, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v171, v171
	v_cndmask_b16 v166.l, 0x7fff, v148.h, s8
	v_cndmask_b16 v148.l, 0x7fff, v158.h, s10
	v_cndmask_b16 v146.l, 0x7fff, v167.h, s17
	v_mov_b16_e64 v160.l, v174.h
	v_cndmask_b16 v148.h, 0x7fff, v157.h, s9
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v182, 0, v182, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v175, v175
	v_cmp_o_f32_e64 s12, v174, v174
	v_and_b32_e32 v160, 1, v160
	v_cndmask_b16 v167.h, 0x7fff, v159.h, s11
	v_cmp_o_f32_e64 s18, v19, v19
	v_cndmask_b16 v137.l, 0x7fff, v153.h, s35
	v_permlanex16_b32 v153, v148, s75, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v160, v174, v160, 0x7fff
	v_cmp_o_f32_e64 s22, v20, v20
	v_mov_b16_e64 v145.l, v182.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v192, v192, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v159, v153, v148, v127
	v_cndmask_b16 v167.l, 0x7fff, v160.h, s12
	v_perm_b32 v160, v153, v148, v130
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v148, v33 :: v_dual_and_b32 v145, 1, v145
.Ltmp53:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v187, v192
	v_exp_f32_e32 v190, v191
	v_exp_f32_e32 v186, v202
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v148, v148 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v191, v203
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v185, 0, v185, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v180, v180
	v_cmp_o_f32_e64 s37, v184, v184
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v148, v148, v148
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v149, v180, v149, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v187, 0, v187, s23
	v_cndmask_b32_e64 v190, 0, v190, s34
	v_cndmask_b32_e64 v186, 0, v186, s33
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v148
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v168, v20, v168, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[17:20], v17, s[68:71], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.l, v187.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v204, v141, v136
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v148, v33
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v190.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v176, v176, v136 :: v_dual_and_b32 v143, 1, v143
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v192, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v148, v148 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v151, 1, v151
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v176, v176
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.h, v134.l
	v_mov_b16_e64 v141.l, v184.h
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v148, v148, v148
.Ltmp65:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v188, v188, v136
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v192, 0, v192, s36
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v148
.Ltmp67:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v141, 1, v141
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v176, 0, v176, s25
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v188, v188
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v140.l, v192.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v135, v135, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.l, v186.h
	v_mov_b16_e64 v152.l, v176.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v191, 0, v191, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.l, v185.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v9, v9, v135
	v_sub_f32_e32 v11, v11, v135
	v_sub_f32_e32 v10, v10, v135
	v_sub_f32_e32 v12, v12, v135
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v188, 0, v188, s39
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v12, v12
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v164.l, v188.h
	v_mov_b16_e64 v134.l, v191.h
	v_cmp_o_f32_e64 s23, v181, v181
	v_cmp_o_f32_e64 s24, v182, v182
	v_cmp_o_f32_e64 s25, v183, v183
	v_cmp_o_f32_e64 s26, v186, v186
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s4
	v_cndmask_b32_e64 v11, 0, v11, s6
	v_cndmask_b32_e64 v10, 0, v10, s2
	v_cndmask_b32_e64 v12, 0, v12, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v150, 1, v150
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v156
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v9, v9, v11 :: v_dual_and_b32 v134, 1, v134
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v10, v10, v12
.Ltmp69:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v140, 1, v140
	v_cmp_o_f32_e64 s27, v187, v187
	v_cmp_o_f32_e64 s29, v190, v190
	v_cmp_o_f32_e64 s30, v191, v191
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp71:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v192, v192
	v_cmp_o_f32_e64 s36, v185, v185
	v_cmp_o_f32_e64 s39, v188, v188
	v_add3_u32 v145, v182, v145, 0x7fff
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp73:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v150, v183, v150, 0x7fff
	v_add3_u32 v143, v187, v143, 0x7fff
	v_add3_u32 v151, v190, v151, 0x7fff
	v_add3_u32 v134, v191, v134, 0x7fff
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v152, 1, v152
	v_add3_u32 v140, v192, v140, 0x7fff
	v_add3_u32 v141, v184, v141, 0x7fff
	v_cndmask_b16 v170.h, 0x7fff, v133.h, s28
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp77:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v170.l, 0x7fff, v139.h, s21
	v_cndmask_b16 v154.h, 0x7fff, v154.h, s19
	v_cndmask_b16 v154.l, 0x7fff, v146.h, s20
	v_cndmask_b16 v146.h, 0x7fff, v166.h, s31
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp79:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v165.h, 0x7fff, v165.h, s18
	v_cndmask_b16 v165.l, 0x7fff, v168.h, s22
	v_cndmask_b16 v166.h, 0x7fff, v147.h, s7
	v_cndmask_b16 v149.l, 0x7fff, v145.h, s24
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v164, 1, v164
	v_cndmask_b16 v172.h, 0x7fff, v143.h, s27
	v_cndmask_b16 v134.l, 0x7fff, v141.h, s37
	v_permlanex16_b32 v141, v170, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp83:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v164, v188, v164, 0x7fff
	v_permlanex16_b32 v143, v154, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v145, v146, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v147, v165, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp85:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v151.l, 0x7fff, v140.h, s33
	v_cndmask_b16 v133.h, 0x7fff, v142.h, s38
	v_perm_b32 v140, v141, v170, v127
	v_perm_b32 v141, v141, v170, v130
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v142, v143, v154, v127
	v_perm_b32 v143, v143, v154, v130
	v_cmp_o_f32_e64 s15, v179, v179
	v_cmp_o_f32_e64 s34, v176, v176
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v148, v9, v10
.Ltmp89:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v163, v179, v163, 0x7fff
	v_add3_u32 v152, v176, v152, 0x7fff
	v_cndmask_b16 v168.h, 0x7fff, v161.h, s13
	v_cndmask_b16 v168.l, 0x7fff, v162.h, s14
	v_cndmask_b16 v171.l, 0x7fff, v149.h, s16
	v_cndmask_b16 v171.h, 0x7fff, v163.h, s15
	v_cndmask_b16 v149.h, 0x7fff, v137.h, s23
	v_cndmask_b16 v150.h, 0x7fff, v150.h, s25
	v_cndmask_b16 v172.l, 0x7fff, v151.h, s29
	v_cndmask_b16 v137.h, 0x7fff, v152.h, s34
	v_cndmask_b16 v133.l, 0x7fff, v164.h, s39
	v_permlanex16_b32 v152, v166, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v162, v167, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v164, v168, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v151.h, 0x7fff, v134.h, s30
	v_permlanex16_b32 v173, v171, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v174, v149, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v176, v172, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v157, v152, v166, v127
	v_perm_b32 v158, v152, v166, v130
	v_perm_b32 v161, v162, v167, v127
	v_perm_b32 v162, v162, v167, v130
	v_perm_b32 v163, v164, v168, v127
	v_perm_b32 v164, v164, v168, v130
	v_permlanex16_b32 v177, v151, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v139, v137, s75, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v196, v133, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v166, v173, v171, v130
	v_perm_b32 v167, v174, v149, v127
	v_perm_b32 v168, v174, v149, v130
	v_perm_b32 v174, v177, v151, v130
	v_perm_b32 v179, v196, v133, v127
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v50, v[13:16]
	s_waitcnt vmcnt(0)
	ds_store_b128 v50, v[17:20] offset:4096
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v18, v148
.Ltmp91:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v34, v33
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v33, v156, v34 :: v_dual_and_b32 v144, 1, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v144, v186, v144, 0x7fff
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v17, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v150.l, 0x7fff, v144.h, s26
	v_perm_b32 v144, v145, v146, v127
	v_perm_b32 v145, v145, v146, v130
	v_perm_b32 v146, v147, v165, v127
	v_perm_b32 v147, v147, v165, v130
	v_permlanex16_b32 v175, v150, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v165, v173, v171, v127
	v_perm_b32 v171, v176, v172, v127
	v_perm_b32 v172, v176, v172, v130
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v19, 0, v17, s2
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v17, v148, v18
.Ltmp95:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v138, 1, v138
	v_perm_b32 v169, v175, v150, v127
	v_perm_b32 v170, v175, v150, v130
	v_perm_b32 v173, v177, v151, v127
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v17, v155, v19
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v138, v185, v138, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v9, v49
	ds_load_u16_d16 v10, v49 offset:256
	ds_load_u16_d16 v11, v49 offset:512
	ds_load_u16_d16 v12, v49 offset:768
	ds_load_u16_d16 v13, v49 offset:1024
	ds_load_u16_d16 v14, v49 offset:1280
	ds_load_u16_d16 v15, v49 offset:1536
	ds_load_u16_d16 v16, v49 offset:1792
	ds_load_u16_d16 v180, v49 offset:2048
	ds_load_u16_d16 v181, v49 offset:2304
	ds_load_u16_d16 v182, v49 offset:2560
	ds_load_u16_d16 v183, v49 offset:2816
	ds_load_u16_d16 v184, v49 offset:3072
	ds_load_u16_d16 v185, v49 offset:3328
	ds_load_u16_d16 v186, v49 offset:3584
	ds_load_u16_d16 v187, v49 offset:3840
	ds_load_u16_d16 v188, v49 offset:4096
	ds_load_u16_d16 v189, v49 offset:4352
	ds_load_u16_d16 v190, v49 offset:4608
	ds_load_u16_d16 v191, v49 offset:4864
	ds_load_u16_d16 v192, v49 offset:5120
	ds_load_u16_d16 v193, v49 offset:5376
	ds_load_u16_d16 v194, v49 offset:5632
	ds_load_u16_d16 v195, v49 offset:5888
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v9, v49 offset:128
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v10, v49 offset:384
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v11, v49 offset:640
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v12, v49 offset:896
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v13, v49 offset:1152
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v14, v49 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v15, v49 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v16, v49 offset:1920
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v134.h, 0x7fff, v138.h, s36
	v_perm_b32 v175, v139, v137, v127
	v_perm_b32 v176, v139, v137, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v138, v134, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v177, v138, v134, v127
	v_perm_b32 v178, v138, v134, v130
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[140:147], v[1:8]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v9, v49 offset:6144
	ds_load_u16_d16 v10, v49 offset:6400
	ds_load_u16_d16 v11, v49 offset:6656
	ds_load_u16_d16 v12, v49 offset:6912
	ds_load_u16_d16 v13, v49 offset:7168
	ds_load_u16_d16 v14, v49 offset:7424
	ds_load_u16_d16 v15, v49 offset:7680
	ds_load_u16_d16 v16, v49 offset:7936
	ds_load_u16_d16_hi v180, v49 offset:2176
	ds_load_u16_d16_hi v181, v49 offset:2432
	ds_load_u16_d16_hi v182, v49 offset:2688
	ds_load_u16_d16_hi v183, v49 offset:2944
	ds_load_u16_d16_hi v184, v49 offset:3200
	ds_load_u16_d16_hi v185, v49 offset:3456
	ds_load_u16_d16_hi v186, v49 offset:3712
	ds_load_u16_d16_hi v187, v49 offset:3968
	ds_load_u16_d16_hi v188, v49 offset:4224
	ds_load_u16_d16_hi v189, v49 offset:4480
	ds_load_u16_d16_hi v190, v49 offset:4736
	ds_load_u16_d16_hi v191, v49 offset:4992
	ds_load_u16_d16_hi v192, v49 offset:5248
	ds_load_u16_d16_hi v193, v49 offset:5504
	ds_load_u16_d16_hi v194, v49 offset:5760
	ds_load_u16_d16_hi v195, v49 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v9, v49 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v10, v49 offset:6528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v11, v49 offset:6784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v12, v49 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v13, v49 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v14, v49 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v15, v49 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v16, v49 offset:8064
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[180:187], v[157:164], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v180, v196, v133, v130
	v_mov_b32_e32 v133, v136
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[188:195], v[165:172], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[173:180], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
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
	v_cmp_eq_u32_e32 vcc_lo, 0, v41
	s_mov_b32 s1, 0x76543210
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp97:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v34 :: v_dual_cndmask_b32 v12, 0, v17
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v40
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s54, s54, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v21, v38
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v10, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v11, 28, v43
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v2, 0, v2
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_add_nc_u32 v11, 0, v11
.Ltmp102:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_max_f32 v9, v9, v10
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v10, v42, 2, 0
.Ltmp105:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s41, s54
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v11, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v10
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v12
.Ltmp108:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_cndmask_b32 v13, 0, v5
	v_mov_b32_e32 v6, v3
.Ltmp110:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v10
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v2 :: v_dual_mov_b32 v16, v12
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	1 1025 30 is_stmt 1             ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v15, 0, v7, vcc_lo
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v4
	v_dual_add_f32 v3, v3, v6 :: v_dual_max_f32 v4, v9, v9
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v7, v9 :: v_dual_add_f32 v2, v2, v5
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v11, v3
.Ltmp118:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v16
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v9, v2 :: v_dual_max_f32 v6, v7, v7
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v16, v12
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v4, v4, v6 :: v_dual_mov_b32 v5, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp125:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v20
	v_add_f32_e32 v12, v12, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp128:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v5, v10, v5 :: v_dual_add_f32 v10, v3, v11
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v7, v1 :: v_dual_max_f32 v6, v6, v6
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v18, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v9
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v3, v5
.Ltmp136:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v7 :: v_dual_mov_b32 v16, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v4, v10, v18
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp138:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v11, v1 :: v_dual_mov_b32 v18, v14
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v6, v4 :: v_dual_add_f32 v7, v5, v3
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v10, v7 :: v_dual_add_f32 v1, v1, v11
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v2
.Ltmp141:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v18 :: v_dual_mov_b32 v19, v15
.Ltmp142:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v11, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp144:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v18, v14
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v2, v17
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v15 :: v_dual_add_f32 v14, v14, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v13
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
	v_dual_add_f32 v17, v8, v20 :: v_dual_add_f32 v14, v14, v19
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v12, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v12, v8
	v_dual_add_f32 v17, v17, v22 :: v_dual_mov_b32 v18, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v13
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp160:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp162:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp164:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp165:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v6, v4, v6 :: v_dual_add_f32 v5, v3, v5
.Ltmp166:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v37
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v8, v12 :: v_dual_add_f32 v4, v1, v2
.Ltmp168:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v8, 0xe0, v36
	v_and_b32_e32 v1, 28, v36
	v_and_b32_e32 v2, 32, v39
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_nc_u32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v19, v15, v19 :: v_dual_add_nc_u32 v8, 0, v8
	v_dual_add_f32 v18, v14, v18 :: v_dual_add_f32 v17, v13, v16
.Ltmp170:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v0, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[17:20] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v0
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e64 s0, 0, v35
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
.Ltmp171:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 216
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 216
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11036
; TotalNumSgprs: 79
; NumVgprs: 216
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 79
; NumVGPRsForWavesPerEU: 216
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
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     216
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
