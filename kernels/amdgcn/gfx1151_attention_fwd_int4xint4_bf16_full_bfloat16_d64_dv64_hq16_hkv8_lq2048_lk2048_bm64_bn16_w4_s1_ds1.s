	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x60
	s_load_b256 s[24:31], s[0:1], 0x0
	v_dual_mov_b32 v47, 0x7632 :: v_dual_and_b32 v38, 1, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v39, 1, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s4, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s2, s3, 11
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v46, 0x5410 :: v_dual_lshlrev_b32 v37, 4, v38
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s5, s4, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v40, s4, v39
	.loc	1 584 26                        ; attention.py:584:26
	v_or_b32_e32 v1, s5, v39
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v43, 0x60, v0
	s_mov_b32 s43, 0x31027000
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v40
	s_mov_b32 s42, 0x7ffffffe
	v_dual_mov_b32 v49, 0x7531 :: v_dual_and_b32 v44, 15, v0
	s_load_b256 s[16:23], s[0:1], 0x20
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[1:2], null, s36, v1, v[37:38]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s2, s36, v37
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v53, v0, 4, 1
	v_dual_mov_b32 v25, v24 :: v_dual_lshlrev_b32 v56, 1, v0
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s2, vcc_lo, s2
	v_dual_mov_b32 v84, 0xff800000 :: v_dual_lshlrev_b32 v59, 7, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_i32 v51, v0, 0, 1
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v58, 0x70, v0
	v_dual_mov_b32 v29, v24 :: v_dual_lshlrev_b32 v60, 5, v0
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[33:36], v1, s[40:43], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v43
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s41, s31, 0xffff
	s_mov_b32 s40, s30
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v71, 3, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v1, v44
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v62, v56, 30, v53
	v_dual_mov_b32 v48, 0x6420 :: v_dual_and_b32 v55, 16, v0
	v_bfe_i32 v61, v0, 2, 1
	.loc	1 591 17                        ; attention.py:591:17
	v_or_b32_e32 v54, s5, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s4, v1
	v_mov_b32_e32 v87, 0xff800000
	s_load_b64 s[4:5], s[0:1], 0x70
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 590 31                        ; attention.py:590:31
	v_lshlrev_b32_e32 v2, 1, v54
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v63, 24, v56
	s_add_i32 s0, s3, s0
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -16
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v59, 0x700, v59
	s_sub_i32 s6, s3, s1
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v45, v1, s[40:43], 0 offen
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s1, 0, v38
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v60, 0x160, v60
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v51, 0x90, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v38, 0x7632, v46, s1
	v_dual_mov_b32 v19, v24 :: v_dual_lshlrev_b32 v56, 2, v62
	v_lshrrev_b32_e32 v58, 2, v58
	v_cndmask_b32_e64 v62, 0x5410, v47, s1
	v_lshl_or_b32 v38, v38, 8, v38
	v_dual_mov_b32 v32, 0 :: v_dual_lshlrev_b32 v57, 2, v0
	v_dual_mov_b32 v26, v24 :: v_dual_lshlrev_b32 v41, 2, v44
	v_mov_b32_e32 v20, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v21, v24 :: v_dual_and_b32 v38, 0x760032, v38
	v_lshrrev_b32_e32 v43, 2, v43
	v_lshl_or_b32 v44, v44, 5, v63
	v_cndmask_b32_e64 v48, 0x7531, v48, s1
	v_cndmask_b32_e64 v49, 0x6420, v49, s1
	v_and_or_b32 v37, v39, 15, v37
	v_xor_b32_e32 v39, v51, v58
	v_add_nc_u32_e32 v51, 0, v59
	v_and_or_b32 v63, 0x90, v61, v60
	v_lshl_or_b32 v64, v62, 8, v62
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s3, s6, 0x10007
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v42, 28, v57
	s_add_i32 s3, s6, s3
	v_dual_mov_b32 v23, v24 :: v_dual_lshlrev_b32 v58, 2, v37
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v61, v51, v39
	v_mov_b32_e32 v13, v24
	v_xor_b32_e32 v43, v57, v43
	s_bfe_i32 s3, s3, 0x80000
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v57, 4, v56
	v_lshl_or_b32 v48, v48, 8, v48
	v_lshl_or_b32 v49, v49, 8, v49
	v_xor_b32_e32 v37, 16, v63
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v39, s5, v40
	v_lshl_or_b32 v38, v38, 4, v38
	v_and_b32_e32 v40, 0x760032, v64
	.loc	1 569 19                        ; attention.py:569:19
	s_sext_i32_i16 s3, s3
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s0, 4
	.loc	1 569 19                        ; attention.py:569:19
	s_ashr_i32 s3, s3, 1
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v59, 0, v43
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v60, 0, v44
	v_dual_mov_b32 v10, v24 :: v_dual_and_b32 v43, 0x750031, v48
	v_mov_b32_e32 v15, v24
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v68, 0, v37
	v_dual_mov_b32 v5, v24 :: v_dual_and_b32 v72, 0x7060302, v38
	v_xor_b32_e32 v65, 8, v44
	v_xor_b32_e32 v66, 16, v44
	v_xor_b32_e32 v67, 24, v44
	v_and_b32_e32 v44, 0x750031, v49
	v_lshl_or_b32 v37, v40, 4, v40
	.loc	1 710 33                        ; attention.py:710:33
	s_lshl3_add_u32 s7, s0, s3
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s0, s39, s0
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s6, s4, s6
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v7, v24 :: v_dual_and_b32 v80, 0x7060302, v37
	s_add_i32 s6, s6, s0
	v_lshl_or_b32 v40, v44, 4, v44
	v_add3_u32 v71, s6, v71, v39
	v_lshl_or_b32 v39, v43, 4, v43
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s0, 0, v55
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v50, 3, v0
	v_lshrrev_b32_e32 v52, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v0, v24 :: v_dual_and_b32 v81, 0x7050301, v39
	v_and_b32_e32 v82, 0x7050301, v40
	v_cndmask_b32_e64 v44, 0x1054, v46, s0
	v_cndmask_b32_e64 v46, 0x3276, v47, s0
	v_mov_b32_e32 v2, v24
	.loc	1 710 32                        ; attention.py:710:32
	s_lshl_b32 s5, s7, 11
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v62, 0, v63
	v_lshl_or_b32 v44, v44, 8, v44
	v_lshl_or_b32 v46, v46, 8, v46
	v_mov_b32_e32 v4, v24
	v_or_b32_e32 v70, s5, v53
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v65, 0, v65
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v67, 0, v67
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v66, 0, v66
	v_dual_mov_b32 v86, v24 :: v_dual_mov_b32 v85, 0xff800000
	.loc	1 714 31                        ; attention.py:714:31
	v_cmp_gt_i32_e64 s3, s36, v42
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s4, s37, v41
	v_lshl_or_b32 v63, s7, 10, v52
	v_xor_b32_e32 v64, 64, v58
	v_or_b32_e32 v69, s5, v50
	v_or_b32_e32 v73, 2, v70
	v_or_b32_e32 v74, 4, v70
	v_or_b32_e32 v75, 6, v70
	v_or_b32_e32 v76, 8, v70
	v_or_b32_e32 v77, 10, v70
	v_or_b32_e32 v78, 12, v70
	v_or_b32_e32 v79, 14, v70
	v_mov_b16_e32 v53.l, 0
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s35, s38, 0x3fb8aa3b
	s_and_b32 s27, s27, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s33, 0
	s_mov_b32 s34, 0x76543210
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s50, s42
	s_mov_b32 s51, s43
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s44, s16
	s_mov_b32 s48, s20
	s_mov_b32 s24, s18
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s38, s7, 7
	s_mov_b32 s45, s17
	s_mov_b32 s49, s21
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	s_mov_b32 s40, s26
	s_mov_b32 s41, s27
	s_mov_b32 s25, s19
	s_mov_b32 s26, s42
	s_mov_b32 s27, s43
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v38, v56, v33
	ds_bpermute_b32 v33, v57, v33
	ds_bpermute_b32 v37, v56, v34
	ds_bpermute_b32 v34, v57, v34
	ds_bpermute_b32 v39, v56, v35
	ds_bpermute_b32 v35, v57, v35
	ds_bpermute_b32 v40, v56, v36
	ds_bpermute_b32 v36, v57, v36
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v43, v33, v38, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v47, v35, v39, s0
	v_cndmask_b32_e64 v49, v39, v35, s0
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v83, 16, v45
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v45, v38, v33, s0
	v_and_b32_e32 v33, 0x540054, v44
	v_and_b32_e32 v38, 0x760076, v46
	v_cndmask_b32_e64 v44, v34, v37, s0
	v_cndmask_b32_e64 v46, v37, v34, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v48, v36, v40, s0
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v38, 4, v38
	v_mov_b32_e32 v6, v24
	v_cndmask_b32_e64 v50, v40, v36, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v51, 0x5040504, v33
	v_and_b32_e32 v52, 0x7060706, v34
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 717 33                        ; attention.py:717:33
	v_dual_mov_b32 v34, v32 :: v_dual_add_nc_u32 v95, s33, v69
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s5, s33, 1
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v39, v32
	v_dual_mov_b32 v33, v32 :: v_dual_add_nc_u32 v106, s5, v63
	v_mov_b32_e32 v35, v32
	v_mov_b32_e32 v37, v32
	v_mov_b32_e32 v38, v32
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v105, v71, s33, 1
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v36, v32
	.loc	1 711 32                        ; attention.py:711:32
	v_mad_u64_u32 v[103:104], null, v95, s36, v[42:43]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 717 33                        ; attention.py:717:33
	v_dual_mov_b32 v102, v39 :: v_dual_mov_b32 v101, v38
	v_dual_mov_b32 v100, v37 :: v_dual_mov_b32 v99, v36
	v_dual_mov_b32 v98, v35 :: v_dual_mov_b32 v97, v34
	v_dual_mov_b32 v96, v33 :: v_dual_mov_b32 v95, v32
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[36:37], null, v106, s37, v[41:42]
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e64 v37, 0x80000000, v103, s3
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s6, s33, 4
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e32 v33, 0x80000000, v105, vcc_lo
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s6, s6, s38
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v92, s33, v70, 1
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s5, s6, s37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v108, 0x80000000, v36, s4
	.loc	1 712 32                        ; attention.py:712:32
	buffer_load_b32 v36, v37, s[40:43], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v38, s5, v41, 1
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v93, s33, v73, 1
	v_add_lshl_u32 v94, s33, v74, 1
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v107, 0x80000000, v38, s4
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v40, s33, v75, 1
	v_add_lshl_u32 v88, s33, v76, 1
	v_add_lshl_u32 v89, s33, v77, 1
	v_add_lshl_u32 v90, s33, v78, 1
	v_add_lshl_u32 v91, s33, v79, 1
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v34.h, v53.l
	v_mov_b16_e32 v35.h, v53.l
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 787 39                        ; attention.py:787:39
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v84, v84, v84
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v59, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[36:37], v60
	ds_load_b64 v[38:39], v65
	ds_load_b64 v[103:104], v66
	ds_load_b64 v[105:106], v67
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[36:37], v[43:44], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[38:39], v[47:48], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[103:104], v[45:46], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[105:106], v[49:50], v[95:102] neg_lo:[1,1,0]
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v110, v100
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v111, v101
	.loc	1 761 36                        ; attention.py:761:36
	buffer_load_b128 v[36:39], v33, s[48:51], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[100:101], v107, s[24:27], 0 offen
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v106, v98
	v_cvt_f32_i32_e32 v109, v99
	v_cvt_f32_i32_e32 v103, v95
	v_cvt_f32_i32_e32 v105, v97
	v_cvt_f32_i32_e32 v104, v96
	v_cvt_f32_i32_e32 v102, v102
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v102, v83, v102
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v98, 0xff80ff80, v36 :: v_dual_cndmask_b32 v99, 0xff80ff80, v37
	v_dual_cndmask_b32 v95, 0xff80ff80, v38 :: v_dual_cndmask_b32 v96, 0xff80ff80, v39
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v97, 0xffff0000, v100
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e32 v53.h, v98.l
	v_and_b32_e32 v33, 0xffff0000, v98
	v_and_b32_e32 v36, 0xffff0000, v99
	v_and_b32_e32 v37, 0xffff0000, v95
	v_and_b32_e32 v38, 0xffff0000, v96
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v53
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e32 v53.h, v99.l
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v33
	v_cmp_neq_f32_e64 s7, 0xff800000, v36
	v_cmp_neq_f32_e64 s8, 0xff800000, v37
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	s_and_b32 s6, vcc_lo, s6
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v53
	.loc	1 761 36 is_stmt 1              ; attention.py:761:36
	v_mov_b16_e32 v53.h, v95.l
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s7, vcc_lo, s7
	v_cndmask_b32_e64 v33, 0, 1, s5
	v_cndmask_b32_e64 v36, 0, 1, s6
	.loc	1 763 34 is_stmt 0              ; attention.py:763:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v53
	.loc	1 761 36 is_stmt 1              ; attention.py:761:36
	v_mov_b16_e32 v53.h, v96.l
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v37, 0, 1, s7
	.loc	1 763 34 is_stmt 0              ; attention.py:763:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v38
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s10, vcc_lo, s10
	v_mov_b16_e32 v34.l, v36.l
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v53
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	v_mov_b16_e32 v53.h, v100.l
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x2
	buffer_load_u16 v92, v92, s[44:47], 0 offen
	buffer_load_u16 v93, v93, s[44:47], 0 offen
	buffer_load_u16 v94, v94, s[44:47], 0 offen
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v100, v108, s[28:31], 0 offen
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x4
	buffer_load_u16 v40, v40, s[44:47], 0 offen
	buffer_load_u16 v88, v88, s[44:47], 0 offen
	buffer_load_u16 v89, v89, s[44:47], 0 offen
	buffer_load_u16 v90, v90, s[44:47], 0 offen
	buffer_load_u16 v91, v91, s[44:47], 0 offen
	.loc	1 763 25                        ; attention.py:763:25
	v_mov_b16_e32 v35.l, v37.l
	v_lshlrev_b16 v33.l, 8, v33.l
	v_cndmask_b32_e64 v37, 0, 1, s10
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s9, vcc_lo, s9
	v_cndmask_b32_e64 v38, 0, 1, s8
	v_or_b16 v36.l, v34.l, v33.l
	v_lshlrev_b16 v33.l, 8, v35.l
	v_mov_b16_e32 v34.l, v37.l
	v_cndmask_b32_e64 v37, 0, 1, s9
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s12, vcc_lo, s12
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v39.h, v101.l
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v36.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v38.l
	v_mov_b16_e32 v34.l, v37.l
	v_cndmask_b32_e64 v37, 0, 1, s11
	v_cndmask_b32_e64 v38, 0, 1, s12
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v108, v83, v111
	.loc	1 763 25                        ; attention.py:763:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_lshlrev_b16 v33.h, 8, v34.l
	v_mov_b16_e32 v34.l, v37.l
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v37.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v38.l
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v38, 0xffff0000, v101
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v101, v83, v103
	v_mul_f32_e32 v103, v83, v104
	v_mul_f32_e32 v104, v83, v105
	v_mul_f32_e32 v105, v83, v106
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v37.h, v33.l, v33.h
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v106, v83, v109
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v33.h, v53.l
	.loc	1 732 30                        ; attention.py:732:30
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v107, v83, v110 :: v_dual_lshlrev_b32 v92, 16, v92
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v94, 16, v94
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(5)
	v_and_b16 v33.l, v100.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v34.l, 4, v100.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v92, v101, v92
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v101, v100, 0, 8
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v94, v104, v94 :: v_dual_lshlrev_b32 v93, 16, v93
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v91, 16, v91
	v_lshlrev_b32_e32 v88, 16, v88
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v39.l, v101.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s13, 7, v33.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v34.l, v34.l, 15
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v91, v102, v91
	v_dual_mul_f32 v104, v106, v88 :: v_dual_lshlrev_b32 v89, 16, v89
	.loc	1 727 37                        ; attention.py:727:37
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s14, 0, v39.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v39.l, 0, -16, s13
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v93, v103, v93
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v88.l, v100.h
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v89, v107, v89
	v_dual_mul_f32 v103, v105, v40 :: v_dual_lshlrev_b32 v90, 16, v90
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v40, 8, v100
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.l, v100.h, 15
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v102.l, v33.l, v39.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v33.l, v34.l, -16
	.loc	1 762 35                        ; attention.py:762:35
	v_perm_b32 v101, v96, v95, v72
	v_perm_b32 v95, v96, v95, v80
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v96, v40, 0, 8
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s13, 7, v35.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v106.l, v34.l, v33.l, s14
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v33.l, v40.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v34.l, 4, v40.l
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v40, v88, 0, 8
	.loc	1 762 35                        ; attention.py:762:35
	v_perm_b32 v105, v99, v98, v72
	v_perm_b32 v98, v99, v98, v80
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v99, 24, v100
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v100, 20, v100
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s15, 0, v40.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v40.l, 0, -16, s13
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s13, 7, v33.l
	.loc	1 787 39 is_stmt 1              ; attention.py:787:39
	v_mov_b16_e32 v39.l, v96.l
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v88, v99, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v34.l, v34.l, 15
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v96.l, v35.l, v40.l
	v_cndmask_b16 v40.h, 0, -16, s13
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s14, 0, v39.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v39.l, v100.l, 15
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.l, v99.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v40.l, 4, v99.l
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s16, 0, v88.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v88.l, v33.l, v40.h
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v33.l, v34.l, -16
	.loc	1 762 35                        ; attention.py:762:35
	ds_bpermute_b32 v99, v56, v105
	ds_bpermute_b32 v98, v57, v98
	ds_bpermute_b32 v100, v56, v101
	ds_bpermute_b32 v95, v57, v95
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v34.l, v34.l, v33.l, s14
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v33.l, v39.l, -16
	.loc	1 786 38 is_stmt 1              ; attention.py:786:38
	v_cmp_lt_u16_e64 s13, 7, v35.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v88.h, v53.l
	v_mov_b16_e32 v96.h, v53.l
	v_mov_b16_e32 v102.h, v53.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v101.l, v39.l, v33.l, s15
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v33.l, 0, -16, s13
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v105, v88, 0, 16
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v39.l, v53.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v106.h, v53.l
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_bfe_i32 v101, v101, 0, 16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v35.l, v35.l, v33.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v33.l, v40.l, -16
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v90, v108, v90
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v101, v101
	v_bfe_i32 v107, v35, 0, 16
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v33.l, v40.l, v33.l, s16
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v40, v98, v99, s0
	v_cndmask_b32_e64 v98, v99, v98, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v99, v95, v100, s0
	v_cndmask_b32_e64 v95, v100, v95, s0
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v100, v34, 0, 16
	v_mul_f32_e32 v101, v39, v101
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v110.h, v53.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v100, v100
	v_dual_mul_f32 v107, v38, v107 :: v_dual_mul_f32 v100, v97, v100
	v_mul_f32_e32 v97, v97, v105
	v_bfe_i32 v105, v96, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s16, v100, v100
	v_mov_b16_e32 v88.l, v97.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s17, v97, v97
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v105, v39, v105 :: v_dual_and_b32 v88, 1, v88
	v_bfe_i32 v39, v33, 0, 16
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v33.l, v100.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v88, v97, v88, 0x7fff
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v97.h, v53.l
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v108, v38, v39 :: v_dual_and_b32 v33, 1, v33
	v_bfe_i32 v38, v102, 0, 16
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v96.l, v105.h
	v_cmp_o_f32_e64 s15, v105, v105
	.loc	1 761 36 is_stmt 1              ; attention.py:761:36
	v_and_b32_e32 v39, 0xffff0000, v99
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v33, v100, v33, 0x7fff
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s19, v108, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v38, v53, v38
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v102.l, v101.h
	v_cmp_o_f32_e64 s18, v101, v101
	v_mov_b16_e32 v35.l, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v38, v38
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v109, v38, v35, 0x7fff
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v35, v106, 0, 16
	.loc	1 761 36 is_stmt 1              ; attention.py:761:36
	v_and_b32_e32 v38, 0xffff0000, v40
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v106.l, v108.h
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v35, v53, v35 :: v_dual_and_b32 v100, 1, v106
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v100, v108, v100, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v34.l, v35.h
	v_cmp_o_f32_e64 s14, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e32 v110.l, v107.h
	v_cmp_o_f32_e64 s20, v107, v107
	v_add3_u32 v111, v35, v34, 0x7fff
	v_and_b32_e32 v35, 1, v96
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v34.h, v53.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v96, v105, v35, 0x7fff
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v35, 16, v40
	v_and_b32_e32 v40, 0xffff0000, v98
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v96.l, 0x7fff, v88.h, s17
	v_cndmask_b16 v88.h, 0x7fff, v100.h, s19
	v_cndmask_b16 v33.l, 0x7fff, v96.h, s15
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v105, 0x3fb8aa3b, v35
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v96.h, 0x7fff, v33.h, s16
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v35.h, v53.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v105, s35, v92 :: v_dual_mul_f32 v92, 0x3fb8aa3b, v38
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v38, 16, v99
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v99.h, v53.l
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v92, s35, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 762 35 is_stmt 0              ; attention.py:762:35
	v_mul_f32_e32 v112, 0x3fb8aa3b, v38
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v38.h, v53.l
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v112, s35, v94
	.loc	1 762 35 is_stmt 0              ; attention.py:762:35
	v_dual_mul_f32 v94, 0x3fb8aa3b, v39 :: v_dual_lshlrev_b32 v39, 16, v98
	v_mul_f32_e32 v98, 0x3fb8aa3b, v40
	.loc	1 761 36 is_stmt 1              ; attention.py:761:36
	v_lshlrev_b32_e32 v40, 16, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v93, 0x3fb8aa3b, v39 :: v_dual_fmac_f32 v98, s35, v89
	v_dual_mul_f32 v89, 0x3fb8aa3b, v40 :: v_dual_fmac_f32 v94, s35, v103
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v103.h, 0x7fff, v111.h, s14
	v_cndmask_b16 v103.l, 0x7fff, v109.h, s13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v93, s35, v104
	v_dual_fmac_f32 v89, s35, v90 :: v_dual_and_b32 v90, 0xffff0000, v95
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v87
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v39.h, v53.l
	v_mov_b16_e32 v40.h, v53.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v95, 0x3fb8aa3b, v90
	.loc	1 763 25                        ; attention.py:763:25
	v_perm_b32 v90, v37, v36, v81
	v_perm_b32 v37, v37, v36, v82
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v36.h, v53.l
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v95, s35, v91
	.loc	1 763 25                        ; attention.py:763:25
	ds_bpermute_b32 v90, v56, v90
	ds_bpermute_b32 v37, v57, v37
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v91, 1, v102
	v_and_b32_e32 v102, 1, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v91, v101, v91, 0x7fff
	v_add3_u32 v101, v107, v102, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v33.h, 0x7fff, v91.h, s18
	v_cndmask_b16 v88.l, 0x7fff, v101.h, s20
	ds_store_2addr_b32 v61, v103, v96 offset1:8
	ds_store_2addr_b32 v61, v33, v88 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v33, v37, v90, s0
	v_cndmask_b32_e64 v37, v90, v37, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v90, 1, v33
	v_and_b32_e32 v102, 0x1000000, v33
	v_and_b32_e32 v88, 0x100, v33
	v_and_b32_e32 v101, 0x1000000, v37
	v_and_b32_e32 v33, 0x10000, v33
	v_cmp_eq_u32_e64 s14, 1, v90
	v_cmp_eq_u32_e64 s21, 0, v102
	v_cmp_eq_u32_e64 s15, 0, v88
	v_cmp_eq_u32_e64 s19, 0, v101
	v_cmp_eq_u32_e64 s20, 0, v33
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v90, 0xff800000, v105, s14
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b32_e32 v96, 1, v37
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v113, v94, 0xff800000, s21
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b32_e32 v100, 0x100, v37
	v_and_b32_e32 v37, 0x10000, v37
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v91, v92, 0xff800000, s15
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u32_e64 s16, 1, v96
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v111, v95, 0xff800000, s19
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u32_e64 s17, 0, v100
	v_cmp_eq_u32_e64 s18, 0, v37
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v112, v112, 0xff800000, s20
	v_cndmask_b32_e64 v92, 0xff800000, v93, s16
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[102:105], v62 offset:512
	ds_load_b128 v[106:109], v68 offset:512
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v93, v98, 0xff800000, s17
	v_cndmask_b32_e64 v110, v89, 0xff800000, s18
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v37, v90, v91, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v88, v113, v92, v93
	v_max_f32_e32 v33, v110, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v33, v37, v88, v33
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v37, v33, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v88, v87, v33, v37
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v33, v91, v88
	v_sub_f32_e32 v37, v90, v88
	v_sub_f32_e32 v89, v113, v88
	v_sub_f32_e32 v94, v112, v88
	v_sub_f32_e32 v95, v93, v88
	v_sub_f32_e32 v96, v92, v88
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v94, v94
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v96, v96
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v98, v111, v88
	v_sub_f32_e32 v100, v110, v88
	.loc	1 767 74 is_stmt 1              ; attention.py:767:74
	v_sub_f32_e32 v101, v87, v88
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v33, v33, 0, s15
	v_cndmask_b32_e64 v37, 0, v37, s14
	v_cndmask_b32_e64 v87, v89, 0, s21
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v89, v94, 0, s20
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v100, v100
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v94, v95, 0, s17
	v_cndmask_b32_e64 v95, 0, v96, s16
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b16_e32 v35.l, v37.h
	v_mov_b16_e32 v38.l, v87.h
	v_mov_b16_e32 v39.l, v89.h
	v_mov_b16_e32 v36.l, v95.h
	v_and_b32_e32 v34, 1, v34
	v_and_b32_e32 v35, 1, v35
	v_and_b32_e32 v38, 1, v38
	v_and_b32_e32 v39, 1, v39
	v_mov_b16_e32 v40.l, v94.h
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v96, v98, 0, s19
	v_cndmask_b32_e64 v98, v100, 0, s18
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s14, v33, v33
	v_cmp_o_f32_e64 s15, v37, v37
	v_cmp_o_f32_e64 s16, v87, v87
	v_cmp_o_f32_e64 s17, v89, v89
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v33, v33, v34, 0x7fff
	v_add3_u32 v34, v37, v35, 0x7fff
	v_add3_u32 v35, v87, v38, 0x7fff
	v_add3_u32 v37, v89, v39, 0x7fff
	v_and_b32_e32 v40, 1, v40
	v_cmp_o_f32_e64 s19, v95, v95
	v_mov_b16_e32 v99.l, v96.h
	v_mov_b16_e32 v97.l, v98.h
	v_add3_u32 v36, v95, v36, 0x7fff
	v_cndmask_b16 v89.h, 0x7fff, v35.h, s16
	v_cndmask_b16 v89.l, 0x7fff, v37.h, s17
	v_add3_u32 v38, v94, v40, 0x7fff
	v_and_b32_e32 v99, 1, v99
	v_and_b32_e32 v97, 1, v97
	v_cndmask_b16 v87.h, 0x7fff, v33.h, s14
	v_cndmask_b16 v87.l, 0x7fff, v34.h, s15
	v_cndmask_b16 v38.l, 0x7fff, v36.h, s19
	v_permlanex16_b32 v36, v89, s34, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s18, v94, v94
	v_cmp_o_f32_e64 s20, v96, v96
	v_cmp_o_f32_e64 s21, v98, v98
	v_add3_u32 v39, v96, v99, 0x7fff
	v_add3_u32 v40, v98, v97, 0x7fff
	v_permlanex16_b32 v34, v87, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v89, v51
	v_perm_b32 v36, v36, v89, v52
	v_mov_b32_e32 v89, v86
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v86, v92, v90, s0
	v_cndmask_b32_e64 v90, v90, v92, s0
	v_cndmask_b32_e64 v92, v93, v91, s0
	v_cndmask_b32_e64 v91, v91, v93, s0
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v114, v101
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s18
	v_perm_b32 v33, v34, v87, v51
	v_perm_b32 v34, v34, v87, v52
	v_cndmask_b16 v87.h, 0x7fff, v39.h, s20
	v_cndmask_b16 v87.l, 0x7fff, v40.h, s21
	.loc	1 764 26                        ; attention.py:764:26
	ds_bpermute_b32 v92, v58, v92
	ds_bpermute_b32 v91, v64, v91
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[98:101], v68
	ds_load_b128 v[94:97], v62
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v39, v38, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v87, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v93, v110, v112, s0
	ds_bpermute_b32 v86, v58, v86
	ds_bpermute_b32 v90, v64, v90
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v37, v39, v38, v51
	v_perm_b32 v38, v39, v38, v52
	v_perm_b32 v39, v40, v87, v51
	v_perm_b32 v40, v40, v87, v52
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v87, 0, v114, s13
	.loc	1 764 26                        ; attention.py:764:26
	ds_bpermute_b32 v93, v58, v93
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v16, v16, v87
	v_mul_f32_e32 v17, v17, v87
	v_mul_f32_e32 v18, v18, v87
	v_mul_f32_e32 v19, v19, v87
	v_mul_f32_e32 v20, v20, v87
	v_mul_f32_e32 v21, v21, v87
	v_mul_f32_e32 v22, v22, v87
	v_mul_f32_e32 v23, v23, v87
	v_mul_f32_e32 v24, v24, v87
	v_mul_f32_e32 v25, v25, v87
	v_mul_f32_e32 v26, v26, v87
	v_mul_f32_e32 v27, v27, v87
	v_mul_f32_e32 v28, v28, v87
	v_mul_f32_e32 v29, v29, v87
	v_mul_f32_e32 v31, v31, v87
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[102:109], v[33:40], v[16:23]
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v102, v91, v92, s1
	v_cndmask_b32_e64 v91, v92, v91, s1
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v30, v30, v87
	v_mul_f32_e32 v9, v9, v87
	v_mul_f32_e32 v11, v11, v87
	v_mul_f32_e32 v13, v13, v87
	v_mul_f32_e32 v15, v15, v87
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[94:101], v[33:40], v[24:31]
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v99, v112, v110, s0
	v_cndmask_b32_e64 v100, v111, v113, s0
	v_cndmask_b32_e64 v101, v113, v111, s0
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v98, v85, v85
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[94:97], v62 offset:1024
	.loc	1 764 26                        ; attention.py:764:26
	ds_bpermute_b32 v99, v64, v99
	ds_bpermute_b32 v100, v58, v100
	ds_bpermute_b32 v101, v64, v101
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v10, v10, v87
	v_mul_f32_e32 v12, v12, v87
	v_mul_f32_e32 v14, v14, v87
	v_mul_f32_e32 v0, v0, v87
	v_mul_f32_e32 v1, v1, v87
	v_mul_f32_e32 v2, v2, v87
	v_mul_f32_e32 v3, v3, v87
	v_mul_f32_e32 v4, v4, v87
	v_mul_f32_e32 v5, v5, v87
	v_mul_f32_e32 v6, v6, v87
	v_mul_f32_e32 v7, v7, v87
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v92, v99, v93, s1
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v104, v100, v100 :: v_dual_max_f32 v103, v101, v101
.Ltmp5:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v93, v93, v99, s1
	v_cndmask_b32_e64 v99, v101, v100, s1
	v_cndmask_b32_e64 v100, v100, v101, s1
	v_cndmask_b32_e64 v101, v90, v86, s1
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v103, v104, v103
.Ltmp7:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v104, v86, v90, s1
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v86, v86, v90, v102
	v_max3_f32 v90, v91, v92, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v86, v86, v90, v103
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v90, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v90, v90, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v86, v86, v90
.Ltmp11:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v84, v84, v86
	v_max_f32_e32 v90, v98, v86
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v8, v8, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v87, v88 :: v_dual_sub_f32 v86, v101, v84
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v101, v102, v84
	v_sub_f32_e32 v91, v91, v84
	v_sub_f32_e32 v92, v92, v84
	v_sub_f32_e32 v93, v93, v84
	v_sub_f32_e32 v99, v99, v84
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v91, v91
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v100, v100, v84
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v92, v92
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v99, v99
	v_exp_f32_e32 v100, v100
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v101, 0, v101, s10
	v_cndmask_b32_e64 v91, 0, v91, s7
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v98, v104, v84
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v86, 0, v86, s6
	v_cndmask_b32_e64 v92, 0, v92, s11
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v93, 0, v93, s8
.Ltmp12:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v91, v101, v91
.Ltmp13:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v98, v98
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v99, 0, v99, s12
	v_cndmask_b32_e64 v100, 0, v100, s9
.Ltmp14:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v92, v92, v93 :: v_dual_add_f32 v93, v99, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v98, 0, v98, s5
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s5, 0xff800000, v85
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v86, v86, v98
.Ltmp17:
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[102:105], v62 offset:1536
	ds_load_b128 v[98:101], v68 offset:1024
	ds_load_b128 v[106:109], v68 offset:1536
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v86, v86, v91 :: v_dual_add_f32 v91, v92, v93
.Ltmp19:
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v92, v85, v90 :: v_dual_mov_b32 v85, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v86, v86, v91
.Ltmp21:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v91, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v92, v86
.Ltmp23:
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[94:101], v[33:40], v[8:15]
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v92, v92 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp25:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v91, 0, v91, s5
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s5, s33, 16
	s_cmpk_lt_u32 s33, 0x7f0
	s_mov_b32 s33, s5
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v86, v86, v92
.Ltmp27:
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[102:109], v[33:40], v[0:7]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v86, v89, v91
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	ds_bpermute_b32 v37, v56, v86
	.loc	1 843 74                        ; attention.py:843:74
	v_lshrrev_b32_e32 v33, 1, v55
	.loc	1 843 24 is_stmt 0              ; attention.py:843:24
	v_mul_lo_u32 v32, s37, v54
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v38.h, v53.l
	v_mov_b16_e32 v39.h, v53.l
	v_mov_b16_e32 v40.h, v53.l
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v35, 16, v33
	v_or_b32_e32 v34, 32, v33
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s5, s37, v33
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v36, 48, v33
	s_mov_b32 s11, 0x31027000
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s37, v35
	v_cmp_gt_i32_e64 s1, s37, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s4, s37, v36
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v41, null, v37, v37, v25
	v_div_scale_f32 v42, null, v37, v37, v24
	v_div_scale_f32 v43, null, v37, v37, v27
	v_rcp_f32_e32 v45, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v42
	v_div_scale_f32 v44, null, v37, v37, v26
	v_rcp_f32_e32 v47, v43
	v_div_scale_f32 v49, vcc_lo, v25, v37, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v48, v44
	v_div_scale_f32 v50, s6, v24, v37, v24
	v_fma_f32 v55, -v41, v45, 1.0
	v_fma_f32 v56, -v42, v46, 1.0
	v_div_scale_f32 v54, s7, v27, v37, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v43, v47, 1.0
	v_dual_fmac_f32 v45, v55, v45 :: v_dual_fmac_f32 v46, v56, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v44, v48, 1.0
	v_div_scale_f32 v55, null, v37, v37, v29
	v_mul_f32_e32 v56, v49, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v47, v57, v47 :: v_dual_fmac_f32 v48, v58, v48
	v_mul_f32_e32 v57, v50, v46
	v_rcp_f32_e32 v61, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v41, v56, v49
	v_div_scale_f32 v66, null, v37, v37, v28
	v_fma_f32 v63, -v42, v57, v50
	v_mul_f32_e32 v58, v54, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v62, v45
	v_div_scale_f32 v59, s8, v26, v37, v26
	v_fmac_f32_e32 v57, v63, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v55, v61, 1.0
	v_fma_f32 v41, -v41, v56, v49
	v_rcp_f32_e32 v49, v66
	v_mul_f32_e32 v60, v59, v48
	v_fma_f32 v42, -v42, v57, v50
	v_fma_f32 v64, -v43, v58, v54
	v_div_fmas_f32 v41, v41, v45, v56
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v61, v62, v61
	v_div_fmas_f32 v42, v42, v46, v57
	v_fma_f32 v65, -v44, v60, v59
	v_div_fixup_f32 v25, v41, v37, v25
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 841 48                        ; attention.py:841:48
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v24, v42, v37, v24
	v_fma_f32 v42, -v66, v49, 1.0
	v_fmac_f32_e32 v58, v64, v47
	v_fmac_f32_e32 v60, v65, v48
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v45, s9, v29, v37, v29
	v_fmac_f32_e32 v49, v42, v49
	v_fma_f32 v43, -v43, v58, v54
	v_fma_f32 v44, -v44, v60, v59
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v38.l, v25.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v41, v43, v47, v58
	s_mov_b32 vcc_lo, s8
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v47.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v43, v44, v48, v60
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v44, 0, v24, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v24, v41, v37, v27
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_and_b32_e32 v27, 1, v38
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v26, v43, v37, v26
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.l, v44.h
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v38, 0, v24, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v25, v25, v27, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v41, v45, v61
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_and_b32_e32 v24, 1, v39
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v39, s7, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v55, v41, v45
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v40.l, v26.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v27, v44, v24, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v42, v39, v49
	v_dual_fmac_f32 v41, v43, v61 :: v_dual_and_b32 v40, 1, v40
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v25.l, v38.h
	v_cndmask_b16 v24.l, 0x7fff, v27.h, vcc_lo
	v_mov_b16_e32 v25.h, v53.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v27, v26, v40, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v66, v42, v39
	v_fma_f32 v44, -v55, v41, v45
	v_div_scale_f32 v43, null, v37, v37, v31
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v25, 1, v25
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v42, v40, v49
	v_div_scale_f32 v40, null, v37, v37, v30
	s_mov_b32 vcc_lo, s9
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v25, v38, v25, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v66, v42, v39
	v_div_fmas_f32 v41, v44, v61, v41
	s_mov_b32 vcc_lo, s7
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s8, v38, v38
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v38, v43
	v_rcp_f32_e32 v45, v40
	v_div_fmas_f32 v39, v39, v49, v42
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v29, v41, v37, v29
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v28, v39, v37, v28
	v_div_scale_f32 v39, s7, v31, v37, v31
	v_fma_f32 v42, -v43, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v40, v45, 1.0
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	v_cndmask_b32_e64 v29, 0, v29, s6
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v25.l, 0x7fff, v27.h, vcc_lo
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v38, v42, v38
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v42.h, v53.l
	v_mov_b16_e32 v42.l, v28.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v45, v26, v45
	v_div_scale_f32 v26, s8, v30, v37, v30
	v_mul_f32_e32 v27, v39, v38
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v47.l, v29.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_mul_f32 v41, v26, v45 :: v_dual_and_b32 v42, 1, v42
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v44, -v43, v27, v39
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s9, v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v42, v28, v42, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v40, v41, v26
	v_fmac_f32_e32 v27, v44, v38
	v_div_scale_f32 v44, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v41, v46, v45 :: v_dual_and_b32 v46, 1, v47
	v_fma_f32 v39, -v43, v27, v39
	v_div_scale_f32 v43, null, v37, v37, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v40, v41, v26
	v_rcp_f32_e32 v40, v44
	v_div_fmas_f32 v27, v39, v38, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v43
	s_mov_b32 vcc_lo, s8
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v39, v29, v46, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v27, v27, v37, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v44, v40, 1.0
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v40, v31, v40
	v_div_fmas_f32 v26, v26, v45, v41
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v31, -v43, v38, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.l, v27.h
	v_mov_b16_e32 v45.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v29, v26, v37, v30
	v_div_scale_f32 v30, s7, v17, v37, v17
	v_fmac_f32_e32 v38, v31, v38
	v_div_scale_f32 v31, s8, v16, v37, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v41, v30, v40
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v26.h, 0x7fff, v39.h, vcc_lo
	v_mov_b16_e32 v39.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v47, v31, v38
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v45.l, v29.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v44, v41, v30
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s10, v27, v27
	v_and_b32_e32 v28, 1, v39
	.loc	1 841 48                        ; attention.py:841:48
	s_mov_b32 vcc_lo, s7
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v39, 1, v45
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v46, v40
	v_fma_f32 v45, -v43, v47, v31
	v_div_scale_f32 v46, null, v37, v37, v19
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v28, v27, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v27, -v44, v41, v30
	v_fmac_f32_e32 v47, v45, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v30, v46
	v_div_scale_f32 v44, null, v37, v37, v18
	v_div_fmas_f32 v40, v27, v40, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v43, v47, v31
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v41, v44
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s10
	v_add3_u32 v39, v29, v39, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v31, v31, v38, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v46, v30, 1.0
	v_div_scale_f32 v28, vcc_lo, v19, v37, v19
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v29, v29
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v16, v31, v37, v16
	v_div_fixup_f32 v17, v40, v37, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v44, v41, 1.0
	v_fmac_f32_e32 v30, v38, v30
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v26.l, 0x7fff, v42.h, s9
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v16, s6
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_dual_fmac_f32 v41, v31, v41 :: v_dual_mul_f32 v16, v28, v30
	v_div_scale_f32 v31, s8, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v43.l, v17.h
	v_mov_b16_e32 v43.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v46, v16, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v42, v31, v41
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v27.l, 0x7fff, v39.h, s7
	v_mov_b16_e32 v38.l, v29.h
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v16, v40, v30 :: v_dual_and_b32 v39, 1, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v44, v42, v31
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v38.h, v53.l
	s_mov_b32 s10, 0x7ffffffe
	v_add3_u32 v39, v17, v39, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v28, -v46, v16, v28
	v_fmac_f32_e32 v42, v40, v41
	v_div_scale_f32 v40, null, v37, v37, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v16, v28, v30, v16
	v_fma_f32 v28, -v44, v42, v31
	v_div_scale_f32 v31, null, v37, v37, v20
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v30, v40
	v_div_fmas_f32 v28, v28, v41, v42
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v17, v16, v37, v19
	v_rcp_f32_e32 v19, v31
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v38, 1, v38
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v18, v28, v37, v18
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v16.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fma_f32 v28, -v40, v30, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s6
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_add3_u32 v38, v29, v38, 0x7fff
	v_mov_b16_e32 v41.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v29, -v31, v19, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.l, v17.h
	v_mov_b16_e32 v41.l, v18.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v30, v28, v30
	v_div_scale_f32 v28, s7, v21, v37, v21
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v19, v29, v19
	v_div_scale_f32 v29, s8, v20, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v42, v28, v30 :: v_dual_and_b32 v41, 1, v41
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v16.l, 0x7fff, v38.h, vcc_lo
	v_and_b32_e32 v38, 1, v39
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v39, v29, v19
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v43, -v40, v42, v28
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v17, v17
	v_add3_u32 v38, v17, v38, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v31, v39, v29
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v41, v18, v41, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v42, v43, v30
	v_div_scale_f32 v43, null, v37, v37, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v44, v19
	v_div_scale_f32 v44, null, v37, v37, v22
	v_fma_f32 v28, -v40, v42, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v43
	v_fma_f32 v17, -v31, v39, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v28, v28, v30, v42
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v30, v44
	v_div_fmas_f32 v19, v17, v19, v39
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v21, v28, v37, v21
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v29, -v43, v40, 1.0
	v_div_scale_f32 v28, vcc_lo, v23, v37, v23
	v_div_fixup_f32 v19, v19, v37, v20
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v17.h, 0x7fff, v38.h, s7
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v21, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s8, v18, v18
	v_mov_b16_e32 v18.h, v53.l
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v18.l, v20.h
	v_cndmask_b16 v17.l, 0x7fff, v41.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v39.l, v19.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v40, v29, v40
	v_fma_f32 v29, -v44, v30, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v18, 1, v18
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_mul_f32 v21, v28, v40 :: v_dual_fmac_f32 v30, v29, v30
	v_div_scale_f32 v29, s7, v22, v37, v22
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v18, v20, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v31, -v43, v21, v28
	v_dual_mul_f32 v38, v29, v30 :: v_dual_fmac_f32 v21, v31, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v44, v38, v29
	v_fma_f32 v28, -v43, v21, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v31, v30
	v_div_scale_f32 v31, null, v37, v37, v9
	v_div_fmas_f32 v21, v28, v40, v21
	v_div_scale_f32 v40, null, v37, v37, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v44, v38, v29
	v_rcp_f32_e32 v29, v31
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v28, v28, v30, v38
	v_rcp_f32_e32 v30, v40
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v20, v19, v39, 0x7fff
	v_mov_b16_e32 v39.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v22, v28, v37, v22
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v28, -v31, v29, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v19, v21, v37, v23
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v22, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v29, v28, v29
	v_div_scale_f32 v22, s7, v9, v37, v9
	v_fma_f32 v23, -v40, v30, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	v_mov_b16_e32 v20.l, v21.h
	v_mov_b16_e32 v20.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v30, v23, v30
	v_div_scale_f32 v23, s8, v8, v37, v8
	v_mul_f32_e32 v28, v22, v29
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v39.l, v19.h
	.loc	1 841 48                        ; attention.py:841:48
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v23, v30
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v19, v19
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v38, -v31, v28, v22
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v39, 1, v39
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v42, -v40, v41, v23
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v28, v38, v29
	v_div_scale_f32 v38, null, v37, v37, v11
	v_fmac_f32_e32 v41, v42, v30
	v_div_scale_f32 v42, null, v37, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v22, -v31, v28, v22
	v_rcp_f32_e32 v31, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v40, v41, v23
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v22, v22, v29, v28
	v_rcp_f32_e32 v29, v42
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v28, v19, v39, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v9, v22, v37, v9
	v_fma_f32 v39, -v38, v31, 1.0
	v_div_fmas_f32 v22, v23, v30, v41
	v_div_scale_f32 v23, vcc_lo, v11, v37, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v31, v39, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v42, v29, 1.0
	v_div_fixup_f32 v8, v22, v37, v8
	v_div_scale_f32 v22, s8, v10, v37, v10
	v_mul_f32_e32 v19, v23, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v29, v30, v29
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v30.l, v9.h
	v_mov_b16_e32 v30.h, v53.l
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s7
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v38, v19, v23
	v_mul_f32_e32 v40, v22, v29
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v21, v21
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v41.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v19, v39, v31
	v_fma_f32 v39, -v42, v40, v22
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v21, 1, v30
	v_mov_b16_e32 v41.l, v8.h
	v_cndmask_b16 v28.l, 0x7fff, v20.h, s7
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v23, -v38, v19, v23
	v_div_scale_f32 v38, null, v37, v37, v13
	v_fmac_f32_e32 v40, v39, v29
	v_div_scale_f32 v39, null, v37, v37, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v19, v23, v31, v19
	v_rcp_f32_e32 v23, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v42, v40, v22
	v_rcp_f32_e32 v31, v39
	s_mov_b32 vcc_lo, s8
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v21, v9, v21, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v11, v19, v37, v11
	v_div_fmas_f32 v22, v22, v29, v40
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_cmp_o_f32_e64 s8, v8, v8
	v_mov_b16_e32 v40.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v20, -v38, v23, 1.0
	v_div_fixup_f32 v10, v22, v37, v10
	v_fma_f32 v19, -v39, v31, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v30, 1, v41
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v23, v20, v23
	v_div_scale_f32 v20, vcc_lo, v13, v37, v13
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s6
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v31, v19, v31
	v_div_scale_f32 v19, s7, v12, v37, v12
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_add3_u32 v9, v8, v30, 0x7fff
	v_mov_b16_e32 v40.l, v11.h
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v8, v20, v23
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v22.l, v10.h
	v_mov_b16_e32 v22.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v29, v19, v31
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v21.l, 0x7fff, v9.h, s8
	v_and_b32_e32 v9, 1, v40
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v30, -v38, v8, v20
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v22, 1, v22
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v41, -v39, v29, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v9, v11, v9, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v8, v30, v23
	v_div_scale_f32 v30, null, v37, v37, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, v41, v31
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v22, v10, v22, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v20, -v38, v8, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v39, v29, v19
	v_div_fmas_f32 v8, v20, v23, v8
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v23, null, v37, v37, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v19, v19, v31, v29
	v_rcp_f32_e32 v20, v30
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v8, v37, v13
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v29.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v11, v19, v37, v12
	v_rcp_f32_e32 v12, v23
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	v_cndmask_b32_e64 v10, 0, v11, s6
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fma_f32 v13, -v30, v20, 1.0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v11.h, v53.l
	v_cndmask_b16 v9.l, 0x7fff, v22.h, vcc_lo
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v29.l, v10.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v19, -v23, v12, 1.0
	v_fmac_f32_e32 v20, v13, v20
	v_div_scale_f32 v13, s7, v15, v37, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v12, v19, v12 :: v_dual_and_b32 v29, 1, v29
	v_div_scale_f32 v19, s8, v14, v37, v14
	v_mul_f32_e32 v31, v13, v20
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v11, 1, v11
	v_cmp_o_f32_e64 s9, v8, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v22, v19, v12
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v38, -v30, v31, v13
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v11, v8, v11, 0x7fff
	v_add3_u32 v29, v10, v29, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v23, v22, v19
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v10, v10
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v31, v38, v20
	v_div_scale_f32 v38, null, v37, v37, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v22, v39, v12
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v11.l, 0x7fff, v29.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v8, -v30, v31, v13
	v_rcp_f32_e32 v13, v38
	v_div_scale_f32 v30, null, v37, v37, v0
	v_fma_f32 v19, -v23, v22, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v8, v8, v20, v31
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v20, v30
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v29.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v12, v19, v12, v22
	v_div_fixup_f32 v8, v8, v37, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v38, v13, 1.0
	v_div_scale_f32 v15, vcc_lo, v1, v37, v1
	v_div_fixup_f32 v10, v12, v37, v14
	v_div_scale_f32 v14, s8, v0, v37, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v13, v23, v13
	v_fma_f32 v19, -v30, v20, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	v_cndmask_b32_e64 v8, 0, v8, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v31, null, v37, v37, v3
	v_mul_f32_e32 v12, v15, v13
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v29.l, v10.h
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v20, v19, v20
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v19.l, v8.h
	v_mov_b16_e32 v19.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v22, -v38, v12, v15
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v29, 1, v29
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v23, v14, v20
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v12, v22, v13 :: v_dual_and_b32 v19, 1, v19
	v_fma_f32 v22, -v30, v23, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v19, v8, v19, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v15, -v38, v12, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v23, v22, v20
	v_rcp_f32_e32 v22, v31
	v_div_fmas_f32 v12, v15, v13, v12
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v30, v23, v14
	v_div_scale_f32 v14, null, v37, v37, v2
	v_div_fixup_f32 v1, v12, v37, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v13, v13, v20, v23
	v_fma_f32 v15, -v31, v22, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v8, v14
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v0, v13, v37, v0
	v_fmac_f32_e32 v22, v15, v22
	v_div_scale_f32 v13, s7, v3, v37, v3
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_add3_u32 v15, v10, v29, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_mul_f32_e32 v12, v13, v22
	v_fma_f32 v20, -v14, v8, 1.0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_mov_b16_e32 v29.l, v1.h
	v_mov_b16_e32 v29.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v23, -v31, v12, v13
	v_fmac_f32_e32 v8, v20, v8
	v_div_scale_f32 v20, s8, v2, v37, v2
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v10.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v12, v23, v22
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v10.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v23, v20, v8
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.l, 0x7fff, v15.h, vcc_lo
	v_and_b32_e32 v15, 1, v29
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v13, -v31, v12, v13
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v29, -v14, v23, v20
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v15, v1, v15, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v12, v13, v22, v12
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v1, v1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v23, v29, v8
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v13, null, v37, v37, v5
	v_div_fixup_f32 v3, v12, v37, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v1, -v14, v23, v20
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v10, v0, v10, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v12, v13
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v29.h, v53.l
	v_mov_b16_e32 v14.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v1, v1, v8, v23
	v_div_scale_f32 v8, null, v37, v37, v4
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v23, null, v37, v37, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v1, v1, v37, v2
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v3, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v3, v8
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v0.l, 0x7fff, v10.h, vcc_lo
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v10, -v13, v12, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v0.h, 0x7fff, v15.h, s7
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v15, null, v37, v37, v7
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v31, s7, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v22, v15
	v_fma_f32 v20, -v8, v3, 1.0
	v_fmac_f32_e32 v12, v10, v12
	v_div_scale_f32 v10, vcc_lo, v5, v37, v5
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v29.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v3, v20, v3
	v_rcp_f32_e32 v20, v23
	v_mul_f32_e32 v30, v10, v12
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v14.l, v2.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v38, -v15, v22, 1.0
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v29, 1, v29
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v13, v30, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v22, v38, v22
	v_div_scale_f32 v38, s8, v7, v37, v7
	v_fma_f32 v41, -v23, v20, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v39, v12
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v29, v1, v29, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v42, v38, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v20, v41, v20
	v_mul_f32_e32 v40, v31, v3
	v_div_scale_f32 v41, s9, v6, v37, v6
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v14, 1, v14
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v10, -v13, v30, v10
	v_fma_f32 v39, -v8, v40, v31
	v_fma_f32 v13, -v15, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v10, v10, v12, v30
	v_dual_fmac_f32 v40, v39, v3 :: v_dual_mul_f32 v39, v41, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v13, v22
	s_mov_b32 vcc_lo, s7
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v2, v2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v8, -v8, v40, v31
	v_fma_f32 v12, -v23, v39, v41
	v_div_fixup_f32 v5, v10, v37, v5
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v10.h, v53.l
	v_cndmask_b32_e64 v13, v17, v28, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v3, v8, v3, v40
	v_fmac_f32_e32 v39, v12, v20
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v8, v2, v14, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v2, -v15, v42, v38
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v3, v3, v37, v4
	v_fma_f32 v4, -v23, v39, v41
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v2, v2, v22, v42
	s_mov_b32 vcc_lo, s9
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s6
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v4, v4, v20, v39
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_mov_b16_e32 v12.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v2, v2, v37, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v7.l, v5.h
	v_mov_b16_e32 v7.h, v53.l
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v4, v4, v37, v6
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v6.l, v3.h
	v_mov_b16_e32 v6.h, v53.l
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v7, 1, v7
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v10.l, v2.h
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s7
	v_mov_b16_e32 v12.l, v4.h
	v_add3_u32 v7, v5, v7, 0x7fff
	v_add3_u32 v1, v3, v6, 0x7fff
	v_and_b32_e32 v10, 1, v10
	v_cmp_o_f32_e64 s6, v5, v5
	v_and_b32_e32 v6, 1, v12
	v_cmp_o_f32_e64 s7, v3, v3
	v_cmp_o_f32_e64 s8, v2, v2
	v_add3_u32 v5, v2, v10, 0x7fff
	v_cmp_o_f32_e64 s9, v4, v4
	v_add3_u32 v3, v4, v6, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s7
	v_cndmask_b16 v8.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s8
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s9
	v_cndmask_b32_e64 v4, v24, v26, s0
	v_cndmask_b32_e64 v6, v25, v27, s0
	v_cndmask_b32_e64 v7, v18, v16, s0
	v_cndmask_b32_e64 v10, v16, v18, s0
	v_cndmask_b32_e64 v16, v2, v0, s0
	v_cndmask_b32_e64 v0, v0, v2, s0
	v_cndmask_b32_e64 v12, v28, v17, s0
	v_cndmask_b32_e64 v14, v11, v21, s0
	v_cndmask_b32_e64 v11, v21, v11, s0
	v_cndmask_b32_e64 v15, v19, v9, s0
	v_cndmask_b32_e64 v9, v9, v19, s0
	v_cndmask_b32_e64 v17, v1, v8, s0
	v_cndmask_b32_e64 v1, v8, v1, s0
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v3, v26, v24, s0
	v_cndmask_b32_e64 v5, v27, v25, s0
	v_permlanex16_b32 v2, v4, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v6, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v13, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v1, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v3, v51
	v_perm_b32 v1, v2, v3, v52
	v_perm_b32 v2, v4, v5, v51
	v_perm_b32 v3, v4, v5, v52
	v_perm_b32 v4, v6, v7, v51
	v_perm_b32 v5, v6, v7, v52
	v_perm_b32 v6, v8, v12, v51
	v_perm_b32 v7, v8, v12, v52
	v_perm_b32 v12, v13, v16, v51
	v_perm_b32 v13, v13, v16, v52
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v16, v32, v33, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v8, v10, v14, v51
	v_perm_b32 v9, v10, v14, v52
	v_perm_b32 v10, v11, v15, v51
	v_perm_b32 v11, v11, v15, v52
	v_perm_b32 v14, v18, v17, v51
	v_perm_b32 v15, v18, v17, v52
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v17, v32, v35, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v18, v32, v34, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v32, v36, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s9, s23, 0xffff
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 846 17                        ; attention.py:846:17
	s_mov_b32 s8, s22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp28:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 115
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 115
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10232
; TotalNumSgprs: 54
; NumVgprs: 115
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 115
; Occupancy: 12
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	765                             ; DW_AT_call_line
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
	.short	769                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     115
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
